--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: raya_admin
--

CREATE TABLE public.employee (
    "Name" character varying,
    "Position" character varying,
    "Date" character varying,
    "Location" character varying,
    salary integer
);


ALTER TABLE public.employee OWNER TO raya_admin;

--
-- Name: students; Type: TABLE; Schema: public; Owner: raya_admin
--

CREATE TABLE public.students (
    id integer NOT NULL,
    first_name text,
    last_name text,
    major text
);


ALTER TABLE public.students OWNER TO raya_admin;

--
-- Name: teachers; Type: TABLE; Schema: public; Owner: raya_admin
--

CREATE TABLE public.teachers (
    id integer,
    first_name text,
    last_name text,
    rank text,
    speciality text
);


ALTER TABLE public.teachers OWNER TO raya_admin;

--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: raya_admin
--

COPY public.employee ("Name", "Position", "Date", "Location", salary) FROM stdin;
raya	intern	30-10-2003	amman	0
Ellen Anderson	Psychotherapist, child	2003-08-10	74942 Richardson Ridges\nChloehaven, NE 50712	655
Richard Gordon	Clinical biochemist	2003-11-28	60855 Miller Mountain Apt. 007\nEast Kelly, OK 31870	691
Matthew Fleming	Armed forces operational officer	1985-04-02	581 Andrew Springs Apt. 846\nBurgessstad, WY 91732	747
Ashley Carter	Therapist, music	1970-01-17	156 Michael Brooks Apt. 737\nLake Devinton, OH 03081	1071
Karen Lowery	Surveyor, building control	1980-06-14	10423 Guerra Isle\nKelleyshire, NV 16399	1330
Samuel Lynch	Interior and spatial designer	1988-06-06	5431 Mitchell Avenue\nSouth Dawn, GA 81397	362
Tracy Arroyo	Lobbyist	1995-01-08	USCGC White\nFPO AP 84589	1364
Nicholas Santiago	Advice worker	2002-08-17	9810 Colleen Extensions Suite 732\nKimberlyborough, FM 75499	1039
Sherry Krause	Therapist, horticultural	1979-08-10	706 Campbell Square\nNew John, PR 90684	313
Benjamin Hines	Leisure centre manager	2016-09-16	1242 Elaine Extensions Apt. 315\nHolmesside, MN 22447	1394
Julie Davis	Engineer, maintenance	1987-04-29	PSC 9766, Box 7891\nAPO AP 66718	570
Sara Garcia	Commercial art gallery manager	2025-02-08	2809 Phillips Village\nNewmanfurt, WA 09335	610
Bryan Osborne	Therapist, sports	1979-11-21	8582 Carlos Mountains Suite 963\nWest Leonardhaven, UT 60853	797
Kaylee Hanson	Arboriculturist	1992-06-10	782 Rice Light\nEast Seanshire, VT 54906	786
Andre Brown	Secretary/administrator	1981-10-03	217 Ernest Fields\nJasonshire, ID 71014	672
Andrew Lopez	Insurance account manager	2005-07-12	0159 Gay Knoll\nYoungburgh, IA 48603	867
Johnny Hicks	Public affairs consultant	2017-01-26	4902 Stacy Plains\nEast Nathan, OR 79508	1367
Denise Johnson	Therapist, speech and language	2022-10-12	025 Ross Loop Apt. 660\nMichaelborough, NH 14103	541
Tracey Olson	Therapist, horticultural	2024-11-22	305 Bailey Circle\nPort Beverly, PR 29259	488
Melissa Jones	Plant breeder/geneticist	1985-09-30	507 Miller Orchard Suite 828\nPort Darren, NV 75020	631
Sandra Rodriguez	Scientist, physiological	1972-07-30	5190 Haynes Locks\nWalkerhaven, PW 85999	855
Tonya Anderson PhD	Forensic scientist	1992-09-15	5364 James River Suite 178\nNew Wesley, MH 86838	1133
James Ho	Designer, multimedia	2024-11-25	560 Shelton Neck Apt. 399\nNew Matthewchester, PA 20099	1194
Mr. Michael Flowers	Operations geologist	1974-11-16	970 Martinez View Suite 080\nSouth Michael, PA 91889	545
Patrick Glass	Diagnostic radiographer	2005-06-19	1389 Hector Motorway\nLake Alexisfurt, TX 63350	306
Tammy Padilla	Engineer, mining	1994-02-24	USNV Miller\nFPO AP 18129	1298
Courtney Caldwell	Media planner	1989-09-08	74862 Donald Bridge Suite 193\nWest Bryan, AL 90448	645
Jerry Howell	Surveyor, building control	2017-07-17	42701 Shawn Burgs Apt. 754\nJasonfort, PR 78089	1107
Felicia Smith	Charity fundraiser	2015-10-26	951 Harper Inlet Suite 033\nEricfurt, RI 49020	405
Dylan Singh	Early years teacher	1980-07-26	7652 Rebecca Lodge Suite 739\nStephanieberg, OK 45389	843
Bradley Allen	Mudlogger	2016-01-17	2220 Harrison Fork\nNew Robert, TN 14328	1242
Aaron Diaz	Engineer, mining	2007-09-14	7455 John Mission\nSouth Danielbury, KY 81170	702
Dwayne Long	Information systems manager	2005-11-30	USNV Levine\nFPO AP 70476	947
Martin Middleton	Diagnostic radiographer	1988-06-27	93362 David Vista Apt. 326\nNguyenshire, MS 68433	651
Trevor Cooper	Arts administrator	2024-02-02	08555 Gonzalez Drive Suite 969\nStephanieshire, MH 04243	618
Misty Huynh	Research officer, trade union	1997-03-22	429 Lisa Walks\nJamesville, MA 13129	1402
Lori Flores	Air cabin crew	1987-01-07	8429 Marcus Groves\nTylermouth, AS 70999	1368
Karen Bailey	Advertising account executive	2016-11-27	PSC 9751, Box 5723\nAPO AP 97375	648
Elizabeth Johnson	Development worker, international aid	2001-05-09	67953 Villanueva Brook\nRachaelton, AL 21311	459
Kirk Conner	Transport planner	1975-03-19	168 Brianna Shoal\nSanchezshire, WY 93124	455
Cassandra Newman	Bonds trader	1979-12-13	7677 Huynh Trafficway\nWest Douglastown, IA 58654	931
Robert Washington	Designer, blown glass/stained glass	1984-05-22	570 David Springs Apt. 718\nWest Jeffreyfort, RI 93083	474
Cynthia Johnston	Secretary, company	1971-04-26	047 Brewer Lodge\nNew Donnafurt, NJ 73600	1343
Courtney Garza	Meteorologist	2007-06-30	797 Brenda Motorway\nRandallville, GU 99394	1492
Elizabeth Mcdonald	Exhibitions officer, museum/gallery	2016-05-09	791 Angela Island Apt. 562\nEast David, MD 33487	811
Richard Smith	Police officer	2011-01-17	28977 Anthony Vista Apt. 315\nLake Christina, WY 11886	903
Jamie Shaw	Surgeon	1975-02-23	33945 Petty Plaza Suite 214\nEast Austin, IL 36484	1042
Travis Chase	Advice worker	1993-07-21	476 Brown Estates\nHallview, IL 77833	813
Stacy Riddle	Scientist, biomedical	2025-04-03	USCGC Lewis\nFPO AP 29786	696
Patricia Wade	Technical sales engineer	1974-02-09	970 Clay Keys\nPattonton, OK 83298	1047
Mrs. Jessica Mendoza	IT consultant	2002-02-22	14106 Rachel Ways\nRichardtown, LA 77117	1255
Cheyenne Hunter	Production designer, theatre/television/film	1995-10-15	387 Gibson Rest Suite 987\nMontgomerybury, TN 41094	500
Robert Harrell	Naval architect	2013-05-27	5681 Mikayla Manors\nPort Jonathan, MI 78189	903
Daniel Armstrong	Water quality scientist	2015-04-24	0163 Christina Neck\nLewisland, MP 90914	730
Michelle Gonzalez	Politician's assistant	1988-12-30	USS Rosales\nFPO AE 75503	331
Martin Watts	Engineer, mining	2011-09-12	2893 James Flat\nSarahville, NE 08828	688
Lindsay Robbins	Legal executive	1999-09-01	89824 Robert River\nPort Tammy, DC 53605	580
Leah Harris	Museum education officer	1995-10-20	709 Mackenzie Trafficway Apt. 288\nLake Ashley, NM 05153	1327
Jacob Howard	Tax inspector	2002-10-05	21544 Wesley Road Suite 495\nPort Devinport, IL 48313	397
Shannon Brown	Curator	2004-12-25	80918 Peters Glens\nJoseton, VA 68720	594
Erin Hardy	Art therapist	1970-12-13	097 Perez Mill\nAveryfurt, VA 57789	1208
Alexander Cooper	Dietitian	1971-03-18	451 Taylor Common\nEast Brandontown, NC 33656	1396
Mary Vang	Production assistant, radio	2004-06-13	6111 Morse Mount Suite 678\nJohnsonport, DC 57790	1155
Valerie Kelley	Agricultural consultant	1977-10-21	Unit 7252 Box 5676\nDPO AP 18894	1473
Tamara Carter	Lexicographer	1980-01-17	05306 Parker Lock Apt. 597\nKevinfurt, VI 99178	875
Jennifer Powers	Private music teacher	1996-02-22	8532 Martin Field\nNorth Rodneyfort, MT 48941	989
Jordan Campbell	Equities trader	2016-10-15	71734 Michael Canyon\nNorth Jacqueline, MO 98554	1340
Marcus Cook	Public relations account executive	1985-04-19	55791 Nathaniel Forges\nVeronicamouth, ID 14847	1202
Tony Ward	Estate manager/land agent	2024-06-16	22525 Kelli Pass Suite 161\nKendraborough, FM 61155	858
James Ward MD	Research officer, trade union	2017-02-10	383 Stephanie Plain Apt. 875\nGarciahaven, CT 90806	1266
Tabitha Marshall	Accounting technician	2000-01-02	19674 Jessica Skyway\nSouth Nancyland, VI 61558	600
Alex Hayes	Surveyor, insurance	1978-11-09	272 Shepherd Spring Suite 357\nNorth Michaelmouth, IN 14926	1205
Bethany Collins	Tax inspector	1973-04-02	474 Davidson Overpass Apt. 018\nTorresmouth, VT 15841	786
Jasmine Mullen	Building surveyor	1982-11-13	97510 Ward Inlet\nRodriguezstad, WV 64828	1336
Karen Perez	Estate agent	2002-03-05	06842 Rowland Road\nJamiefurt, NJ 65505	1185
Randall Maddox	Conference centre manager	2018-09-29	847 Patricia Island\nLivingstonburgh, MA 09540	1441
Alyssa Reyes	Doctor, general practice	1980-12-19	505 James Dale Apt. 443\nJohnville, SD 57082	809
Kristen Davis	Police officer	2005-10-01	7340 Maria Expressway Suite 970\nNorth Hunterfurt, MT 68963	1145
Brian Ayala II	Conservator, museum/gallery	1998-12-19	931 Moran Lodge\nPort Teresa, AZ 71205	1207
Ryan Baldwin	Cabin crew	1986-10-31	77248 Betty Overpass Apt. 474\nLake Devin, NC 76341	1342
Jonathan Chapman	Risk manager	1982-01-03	44560 Leach Manors\nGregoryfort, UT 83985	1383
Jason Conley	Financial risk analyst	2024-01-20	1500 Brandon Views\nKimberlyton, KS 73949	1175
Matthew Young	Engineer, water	2021-04-16	321 Sarah Track Apt. 430\nFlowershaven, GA 95398	1170
Karen Reynolds	Data scientist	2019-07-11	1554 Hill Key\nWest Joshua, AS 56599	615
Pamela Maxwell	Speech and language therapist	2007-04-28	5886 Jerry Common\nPerezfurt, SC 98190	482
Carla George	Race relations officer	2018-03-21	37906 Jennifer Plains\nLake Hannahborough, OH 60969	1396
James Sexton	Osteopath	1995-12-30	76585 Luna Ranch\nToddhaven, MD 97185	421
Charles Lopez	Surveyor, quantity	2013-01-18	896 Erin Street\nWest Melanieberg, NJ 14743	1421
Kristy Rowe	Energy engineer	2021-06-09	33708 James Well\nLake Angela, LA 86181	585
Kenneth Davis	Estate manager/land agent	2017-07-21	82947 John Mission\nNorth Michelle, CT 02090	423
Sean Wilson	Planning and development surveyor	1997-01-24	361 Barton Shoal\nSarahmouth, UT 39223	475
Jeremy Berry	Geographical information systems officer	2003-02-03	266 Maria Well Suite 906\nLauramouth, PA 47813	901
Donna Stephens	Human resources officer	2023-09-25	04714 Miller Mill\nPort Melissa, DC 79446	758
Angela Weaver	Conservation officer, nature	2005-05-18	216 Katherine Highway Apt. 220\nButlerfurt, SD 66775	819
Dominique Young	Training and development officer	1997-12-22	3653 Nancy Rapids Apt. 434\nNorth Billystad, AZ 89577	1407
Robert Cox	Naval architect	2023-03-11	8103 William Fords Apt. 356\nFordchester, FL 66992	478
Ashley Chase	Public librarian	1974-06-16	9420 Kimberly Place\nWrightland, MT 20737	791
David Walker	Nurse, learning disability	2024-11-18	6412 Hall Plains\nLake Dustinberg, WA 24131	385
Diane Cochran	Professor Emeritus	1997-02-05	527 Anderson Island\nLake Maryborough, SD 10181	682
Lisa Clark	Nurse, learning disability	1992-12-06	202 Matthew Streets\nJeannehaven, GA 88483	1400
Craig Dennis	Operations geologist	1985-11-07	6434 Marissa Parks Suite 309\nLake Jacquelinemouth, ND 29645	813
Karen Le	Operational investment banker	1984-01-20	447 Jack Lock Suite 951\nHessberg, PR 85653	418
Christopher Warren	Chief Strategy Officer	1984-07-23	7717 Warren Land\nLake Nancy, KS 46640	364
Tamara Harper MD	Intelligence analyst	1998-10-30	948 James Summit Suite 971\nEast Susan, RI 58929	1031
Jennifer Lewis	Haematologist	2024-01-24	04163 Kathleen Hills\nWest Kennethburgh, LA 58879	1370
Lisa Gilmore	Engineer, aeronautical	1975-10-01	98298 Richardson Union\nNorth George, AR 27543	1118
Janice Payne	Chief Marketing Officer	1977-08-24	00132 Aaron Crescent\nRobertsfort, ND 23306	913
Patrick Lopez	Charity fundraiser	1999-10-04	114 Keith Underpass Suite 407\nWest Davidmouth, CO 64320	348
Shannon Patterson	Teacher, primary school	2004-06-14	913 Kathryn Point Apt. 048\nPort Joanne, TX 44113	1082
James Esparza	Youth worker	2014-09-01	7226 Travis Square Suite 409\nDevonside, GU 99424	1488
Joanna Evans	Radiation protection practitioner	1987-08-28	83253 Julia Fall Apt. 629\nAudreyville, SD 34652	489
Mark Owen	Product/process development scientist	1991-03-13	66467 Chelsea Glens\nMorganmouth, IL 57538	1072
Jennifer Giles	Tourist information centre manager	1972-06-24	445 Valdez Hollow Suite 943\nNew Debbieville, FL 39720	1359
Raymond Jones	Chartered certified accountant	2018-01-19	013 Rachel Isle\nEast Brian, SC 69982	1177
Miguel Sherman	Video editor	2004-02-05	4614 Hernandez Lights\nLake Alicia, PR 60148	400
Joshua Haas	Haematologist	1995-10-04	72840 Fletcher Streets\nLeslieberg, AK 88828	1273
Erika Smith	Art therapist	1984-11-25	316 Steven Parks Apt. 590\nRiceberg, MH 92007	474
Brianna Reyes	Metallurgist	1997-08-14	01958 Brown Island Suite 787\nPowerston, AL 20300	506
Angela Knight	Mental health nurse	2008-06-24	5880 Stacy Expressway Apt. 651\nNorth Karenview, OK 66261	1140
Eric Jones	Secondary school teacher	1979-03-04	PSC 9113, Box 7644\nAPO AP 74712	344
Mr. Thomas Peters	Conservator, museum/gallery	1987-02-17	52180 Ashley Mountains Apt. 150\nEricksonstad, DC 44514	447
Taylor Foster	Logistics and distribution manager	2009-07-05	543 Payne Summit\nJenniferton, TX 14804	1422
Rita Kelley	Paramedic	1995-09-20	7139 Hughes Flats Suite 887\nCopelandchester, GU 61017	958
Savannah Massey	Trade mark attorney	1975-07-06	88661 Ashley Lodge Apt. 599\nWilkinsonton, HI 52993	917
Marissa Juarez	Designer, jewellery	2003-09-22	220 Michael Shore Suite 197\nBennettton, TX 88686	1365
Mary Flynn	Best boy	1990-06-19	91914 Michael Terrace\nSouth Jonathanstad, OR 72984	1271
Steven Hamilton	Counsellor	1998-04-08	PSC 4620, Box 4552\nAPO AE 41786	1246
Yvonne Ferrell	Microbiologist	1980-02-22	USNV Combs\nFPO AA 83018	1047
Samuel Davis	Designer, ceramics/pottery	1982-04-07	959 Padilla Spring Apt. 002\nHoustonborough, MI 38166	1028
Robert Estes	Retail buyer	1973-09-13	723 Dawn Spur Apt. 666\nBreannaburgh, NV 39952	1038
Anna Perez	Community arts worker	1980-08-18	003 Chelsea Knolls Apt. 581\nMelindafurt, NJ 71521	599
Alan Johnson	Amenity horticulturist	1996-03-27	650 Murray View\nLake Justin, MH 54901	1131
Ronald Morse	Lobbyist	1989-01-08	5148 Mcintyre Fields\nRyanburgh, TX 59212	1478
Victor Becker	Producer, radio	1989-02-11	USS Rodriguez\nFPO AP 58576	424
Craig Lane	Journalist, newspaper	1991-11-08	887 Amanda Mall Suite 046\nYoungshire, MN 21475	896
Rachel Patterson	Designer, exhibition/display	2012-05-12	0986 Turner Row Suite 052\nPort Ryanview, CA 51353	398
Maria Russell	Location manager	1975-08-23	101 Nathaniel Lodge\nGreenstad, MS 75011	839
Isaac King	Special effects artist	1995-07-05	11458 Stephanie Grove Suite 862\nStricklandshire, DC 30921	404
Douglas Chen	Drilling engineer	2018-10-10	6967 David Prairie\nTurnerbury, GU 93026	332
Tammy White	Administrator, sports	1988-02-12	199 John Burgs\nJamieview, VI 17914	707
Mikayla Booth	Designer, interior/spatial	2024-02-18	0563 Mccullough Ways Apt. 944\nNorth Robinfurt, HI 13307	838
Anthony Murphy	Public affairs consultant	2022-11-26	489 Rhonda Brooks Apt. 477\nWest Roger, TX 97139	728
Melissa Cole	Horticulturist, commercial	1986-03-25	246 Hartman Spring\nIanville, TN 35477	867
Evelyn Sullivan	Ergonomist	1991-02-09	93195 Thompson Junction\nKellifort, FM 82055	694
Terry Gates	Outdoor activities/education manager	1971-01-02	309 Rodriguez Grove\nLake Tara, VI 07714	377
Joseph Scott	Physiological scientist	1976-03-25	USNV Hill\nFPO AA 44436	684
Derrick Bennett	Planning and development surveyor	2006-05-10	6961 Henson Fords Suite 235\nNorth Loriberg, SD 24421	1106
Daniel Potter	Research scientist (life sciences)	2022-05-06	USNS Cervantes\nFPO AA 98735	1175
Christine Grant	Speech and language therapist	1995-07-30	4732 Caitlin Drives\nLake Peter, MS 81200	909
Anna Lopez DVM	Loss adjuster, chartered	1972-08-07	07589 Randy Heights Suite 067\nHaleyberg, PR 17252	1213
Dalton Small	Proofreader	1975-08-12	465 Jeffery Valley\nSouth Christine, ID 93847	1420
Megan Jenkins	Air broker	2015-11-03	05015 Ashley View Suite 441\nPort Jessica, PW 20355	1384
Kaylee Clark	Doctor, hospital	1992-10-29	93386 Andrea Trace\nLake Edwinville, DE 27246	1370
Deanna Pena	Mechanical engineer	1987-06-27	89218 Tracy Dale Suite 196\nPort Margaret, RI 06465	352
Shelby Holland	Historic buildings inspector/conservation officer	2001-12-02	6214 Jason Route Apt. 201\nSouth Caitlin, PA 29350	840
Amanda White	Ergonomist	2000-01-21	Unit 2443 Box 9629\nDPO AP 18370	466
Pamela Fields	Automotive engineer	2022-05-21	63610 Jennifer Row\nLake Samanthamouth, CA 26503	876
Marie Fritz	Therapist, nutritional	1997-08-23	1467 Gina Roads\nChristophermouth, KS 88503	698
Robert Le	Further education lecturer	2023-02-24	2781 Eric Club Apt. 763\nLake Michael, GA 49191	676
Christopher Jackson	Research officer, political party	1974-10-20	799 Wendy Ford\nPort Jennifer, RI 51328	969
Cory Wright	Applications developer	1999-06-24	70451 Erica Fork\nKleinhaven, PW 77642	468
William Reed	Seismic interpreter	1972-07-08	34153 Edwards Parkways Suite 626\nEast Eduardo, RI 78263	583
Michael Rodriguez	Investment banker, operational	2004-04-07	65184 Patricia Track Suite 250\nBrendachester, LA 98508	902
Karen Nguyen	Metallurgist	1994-09-12	08469 Phillips Locks Suite 705\nVictoriamouth, MA 81567	1447
Shawn Bryant	Engineer, technical sales	1998-07-08	59886 Benjamin River\nLake Tracy, FL 23925	800
Jordan Taylor	Automotive engineer	2014-03-03	55531 Wells Point Suite 658\nNorth Jessica, KY 22186	466
Andrea Larson	Ranger/warden	2007-05-06	826 Smith Path Suite 037\nMooreview, MD 12439	1325
Brian Weiss	Production engineer	2006-01-09	875 Rogers Crescent Apt. 188\nPort Brittany, WI 96972	445
Peter Holmes	Administrator, charities/voluntary organisations	1994-03-27	4939 Clark Ferry Suite 787\nSouth Melissa, MP 11420	1333
Debbie Clarke	Copy	1983-02-19	61517 Cheryl Burgs\nLake Phillip, HI 25834	1092
Penny Jarvis	Translator	1975-08-24	7432 Mathew Hills Suite 075\nDavishaven, NH 26710	1448
Jamie Dixon	Civil engineer, contracting	1996-12-18	58225 Holt Canyon\nLake Beth, MH 59167	1120
Phyllis Donaldson	Teacher, music	1998-06-15	60654 Cynthia Drive Suite 036\nVeronicahaven, IN 72968	1183
Andrew Brown	Ceramics designer	2017-01-28	119 Mueller Court Suite 606\nSouth Kathleen, MH 72707	1193
Jerry Boyd	Toxicologist	2019-05-16	Unit 6653 Box 2882\nDPO AP 54182	1074
Nicole Lopez	Clinical research associate	2022-01-13	97825 Campbell Hill Apt. 107\nNew Christopherview, WA 65930	944
Richard Meyers	Operational researcher	1986-06-24	808 Farrell Parkway Suite 753\nNew Robert, AL 09839	651
Scott Rubio	Pilot, airline	1983-01-09	76442 Moon Pine Apt. 706\nSampsonview, AL 51990	493
Mark Allison	Regulatory affairs officer	2018-10-21	3036 Sarah Stravenue Suite 572\nGabriellastad, AR 68061	1432
Tammy Bush	Environmental health practitioner	2024-10-29	7424 Maria Square Apt. 450\nWest Chelseamouth, DC 79759	648
Laura Nicholson	Manufacturing engineer	1981-11-17	800 Kimberly Branch\nJohnchester, AZ 97606	543
Jesse Davis	Sports therapist	2003-08-07	18171 Fisher Plains\nEast Francisco, WV 90887	303
Andrew Peters	Chief Strategy Officer	2009-03-01	16851 Campbell Grove Apt. 813\nCopelandtown, NY 95282	916
Stephanie Williams	Writer	2008-01-20	718 Rachel Point\nHudsonville, NJ 07177	337
John Robinson	Ecologist	1985-07-20	7068 Kelly Plaza Apt. 797\nNorth Sandratown, OK 99937	987
Alexis Vega	Occupational psychologist	1999-08-22	46370 Michael Circle\nHaileyburgh, IN 37605	777
Rebecca Massey	Therapist, music	1980-03-19	USNS Hernandez\nFPO AP 47915	753
Jennifer Long	Professor Emeritus	1985-05-13	20642 Weeks Track Apt. 542\nGreenside, FM 20499	321
Michael White	Energy manager	1978-04-09	380 Elizabeth Ramp\nNorth Andrew, PR 49309	556
David Conrad	Engineer, petroleum	2015-12-08	5956 Williams Landing Suite 514\nSmithchester, RI 47928	1471
Kimberly Bowman	Interior and spatial designer	2001-03-05	5087 Hall Road Suite 099\nShanechester, RI 76916	1041
Justin Moore	Press photographer	1992-03-27	62966 Jimmy Field\nChristopherland, VI 25185	1224
Michael Miller	Occupational psychologist	2016-03-28	5391 Barry Court Suite 963\nEast Juanmouth, WY 13068	1219
Kevin Carter	Location manager	2014-10-11	271 Tiffany Light\nDanielfurt, VI 69733	1290
Anthony Walker	Engineer, energy	1981-03-18	7582 Cohen Garden\nNorth Gregoryshire, NJ 94334	1455
Donna Suarez	Surveyor, planning and development	2000-11-19	67663 John Drive Apt. 072\nLisaland, MS 46022	1382
Joshua Martin	Tree surgeon	2013-08-31	2665 Rose Point\nBrownview, OR 49967	1363
Lisa Calhoun	Exhibitions officer, museum/gallery	1982-05-24	0289 Jeremiah Points Suite 624\nSouth Robertchester, PW 98696	936
Billy Taylor	Diagnostic radiographer	1975-09-29	789 Heather Common Suite 468\nKatherineside, PA 77623	1204
Tonya Smith	Surveyor, building	1977-08-06	7683 Petty Ports\nPhyllistown, CT 18286	936
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: raya_admin
--

COPY public.students (id, first_name, last_name, major) FROM stdin;
217161	Raya	Abul-Feilat	Mex
987	unknown	whocares	mex
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
12345	someone	\N	\N
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: raya_admin
--

COPY public.teachers (id, first_name, last_name, rank, speciality) FROM stdin;
11	mohammad	mm	teaching assistant 	mex
12	ghaleb	rr	prof	civil
13	sarah	ss	lab engineer	chemical
\.


--
-- PostgreSQL database dump complete
--

