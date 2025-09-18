
from flask import Flask ,request , render_template , make_response
import psycopg2

conn=psycopg2.connect( # connecting to database
    host="94.127.213.228",
    port="5433",
    database="rayadb",
    user="raya_admin",
    password="R@y@_Umniah123"
)

app= Flask(__name__)

@app.route('/') #run  code when the main page is accessed 
def index():
    return render_template('RayasWebsite.html') 

@app.route('/Add', methods=['POST']) # run when Add is clicked 
def Add():
    #data = request.get_json()
    global conn
    print("Form received:", request.form)
    # flask recieved the POST request from JS 
    firstName=request.form['Fname']
    lastName=request.form['Lname']
    ID=request.form['id']
    Rank=request.form['rank']
    speciality=request.form['spec']
    cur=conn.cursor()
    # inserting values into PpstgreSQl database
    cur.execute("INSERT INTO teachers (id,first_name,last_name,rank,speciality) VALUES (%s,%s,%s,%s,%s)",(ID,firstName,lastName,Rank,speciality,))
    print(f"Inserting values: {ID}, {firstName}, {lastName}, {Rank}, {speciality}")

    conn.commit()
    cur.close()
   
    return "Data inserted successfully", 200


if __name__ == '__main__': # copied this it says if running in VM or container so i added it 
  app.run(host='0.0.0.0',port=5000)

    


