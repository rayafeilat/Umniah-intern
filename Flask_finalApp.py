from flask import Flask, request, render_template, jsonify
from flask_cors import CORS
import psycopg2
import os
import subprocess

# DB connection
conn = psycopg2.connect(
    host="94.127.213.228",
    port="5433",
    database="rayadb",
    user="raya_admin",
    password="R@y@_Umniah123"
)

app = Flask(__name__)
CORS(app)


@app.route('/')
def index():
    return render_template('finalapp.html')


@app.route('/create-vm', methods=['POST'])
def create_vm():
    global conn
    cur = conn.cursor()
    data = request.get_json(force=True)

    vm_name = data.get("vmName", "default_vm")
    docker_file = data.get("dockerFile", 'DockerFile')
    image_type = data.get("imageType", "Ubuntu")
    generation_time = data.get("time", "--")
    playbook = data.get("playbook")

    # Create directory and save playbook
    vm_dir = os.path.join(os.getcwd(),"vms", vm_name)
    os.makedirs(vm_dir, exist_ok=True)
    playbook_path = os.path.join(vm_dir, "Playbook.yml")
    with open(playbook_path, "w") as f:
        f.write(playbook)

    # Run the Ansible playbook
    try:
        result = subprocess.run(
            ["ansible-playbook", playbook_path],
            capture_output=True,
            text=True,
            check=True
        )
        ansible_output = result.stdout
    except subprocess.CalledProcessError as e:
        ansible_output = f"Failed to run playbook: {e.stderr} {e.stdout}"

    # Insert VM info into database
    try:
        cur.execute(
            "INSERT INTO virtual_machine(vmname,dockerfile,imagetype,generationtime) VALUES (%s,%s,%s,%s)",
            (vm_name, docker_file, image_type, generation_time)
        )
        conn.commit()
        cur.close()
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)})

    # Build JSON response **after** ansible_output is available
    response = {
        "message": f"Cooking your VM '{vm_name}' with '{image_type}' using '{docker_file}'...",
        "playbook": playbook,
        "generatedAt": generation_time,
        "playbookPath": playbook_path,
        "ansibleOutput": ansible_output
    }

    print(ansible_output)

    return jsonify(response)


if __name__ == "__main__":
    app.run(
        debug=True,
        host="0.0.0.0",
        port=5000,
        ssl_context=('/opt/certs/RayasWebsite.crt', '/opt/certs/key_website.pem')
    )
