CREATE DATABASE PHARMACYPROJECT;
USE PHARMACYPROJECT;

CREATE TABLE ADMIN(
ADMIN_ID INT  NOT NULL AUTO_INCREMENT,
ADMIN_USERNAME VARCHAR(20) UNIQUE,
ADMIN_FNAME VARCHAR(20),
ADMIN_LNAME VARCHAR(20),
ADMIN_PASSWORD VARCHAR(20),
PRIMARY KEY(ADMIN_ID));

CREATE TABLE CUSTOMER(
CUSTOMER_ID INT NOT NULL AUTO_INCREMENT,
CUSTOMER_USERNAME VARCHAR(20) UNIQUE,
CUSTOMER_FNAME VARCHAR(20),
CUSTOMER_LNAME VARCHAR(20),
CUSTOMER_DOB DATE,
CUSTOMER_GENDER CHAR(1) CHECK(CUSTOMER_GENDER='M' OR CUSTOMER_GENDER='F'),
CUSTOMER_HOUSE INT,
CUSTOMER_BLOCK VARCHAR(3),
CUSTOMER_AREA VARCHAR(50),
CUSTOMER_CITY VARCHAR(50),
CUSTOMER_COUNTRY VARCHAR(50),
CUSTOMER_PHONE VARCHAR(20),
CUSTOMER_PASSWORD VARCHAR(20),
PRIMARY KEY(CUSTOMER_ID));

CREATE TABLE EMPLOYEE(
EMPLOYEE_ID INT PRIMARY KEY,
EMPLOYEE_FNAME VARCHAR(20),
EMPLOYEE_LNAME VARCHAR(20),
EMPLOYEE_DOB DATE,
EMPLOYEE_GENDER CHAR(1) CHECK(EMPLOYEE_GENDER='M' OR EMPLOYEE_GENDER='F'),
EMPLOYEE_HOUSE INT,
EMPLOYEE_BLOCK VARCHAR(3),
EMPLOYEE_AREA VARCHAR(50),
EMPLOYEE_CITY VARCHAR(50),
EMPLOYEE_COUNTRY VARCHAR(50),
EMPLOYEE_PHONE VARCHAR(20),
ADMIN_ID INT,
CONSTRAINT E_AID_FK FOREIGN KEY(ADMIN_ID) REFERENCES ADMIN(ADMIN_ID) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE SUPPLIER(
SUPPLIER_ID INT PRIMARY KEY,
SUPPLIER_NAME VARCHAR(100),
SUPPLIER_OFFICE INT,
SUPPLIER_BLOCK VARCHAR(3),
SUPPLIER_AREA VARCHAR(50),
SUPPLIER_CITY VARCHAR(50),
SUPPLIER_COUNTRY VARCHAR(50),
SUPPLIER_PHONE VARCHAR(20));

CREATE TABLE PHARMACIST(
PHARMACIST_ID INT PRIMARY KEY,
PHARMACIST_FNAME VARCHAR(20),
PHARMACIST_LNAME VARCHAR(20),
PHARMACIST_DOB DATE,
PHARMACIST_GENDER CHAR(1) CHECK(PHARMACIST_GENDER='M' OR PHARMACIST_GENDER='F'),
PHARMACIST_HOUSE INT,
PHARMACIST_BLOCK VARCHAR(3),
PHARMACIST_AREA VARCHAR(50),
PHARMACIST_CITY VARCHAR(50),
PHARMACIST_COUNTRY VARCHAR(50),
PHARMACIST_PHONE VARCHAR(20));

CREATE TABLE PAYMENT_TYPE(
PAYMENT_ID INT PRIMARY KEY,
PAYMENT VARCHAR(25));

CREATE TABLE CATEGORY(
CATEGORY_ID INT PRIMARY KEY,
CATEGORY_NAME VARCHAR(25));

CREATE TABLE COMPANY(
COMPANY_ID INT PRIMARY KEY,
COMPANY_NAME VARCHAR(100),
COMPANY_OFFICE INT,
COMPANY_BLOCK VARCHAR(3),
COMPANY_AREA VARCHAR(50),
COMPANY_CITY VARCHAR(50),
COMPANY_COUNTRY VARCHAR(50),
COMPANY_PHONE VARCHAR(20));

CREATE TABLE FORMULA(
FORMULA_ID INT PRIMARY KEY,
FORMULA_NAME VARCHAR(50));

CREATE TABLE DESCRIPTION(
DESCRIPTION_ID INT PRIMARY KEY,
DESCRIPTION_DETAILS VARCHAR(100));

CREATE TABLE MEDICINES(
MEDICINE_ID INT PRIMARY KEY,
MEDICINE_NAME VARCHAR(50),
COMPANY_ID INT,
BATCH_ID VARCHAR(10),
CATEGORY_ID INT,
PRICE DECIMAL(5,2),
CONSTRAINT M_COID_FK FOREIGN KEY(COMPANY_ID) REFERENCES COMPANY(COMPANY_ID) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT M_CATID_FK FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORY(CATEGORY_ID) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE MEDICINE_FORMULA(
MEDICINE_ID INT ,
FORMULA_ID INT ,
FORMULA_MG INT,
PRIMARY KEY(MEDICINE_ID, FORMULA_ID),
CONSTRAINT MF_MID_FK FOREIGN KEY(MEDICINE_ID) REFERENCES MEDICINES(MEDICINE_ID) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT MF_FID_FK FOREIGN KEY(FORMULA_ID) REFERENCES FORMULA(FORMULA_ID) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE MEDICINE_DESCRIPTION(
MEDICINE_ID INT,
DESCRIPTION_ID INT,
PRIMARY KEY(MEDICINE_ID, DESCRIPTION_ID),
CONSTRAINT MD_MID_FK FOREIGN KEY(MEDICINE_ID) REFERENCES MEDICINES(MEDICINE_ID) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT MD_DID_FK FOREIGN KEY(DESCRIPTION_ID) REFERENCES DESCRIPTION(DESCRIPTION_ID) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE ORDERS(
ORDERS_ID INT PRIMARY KEY,
ORDERS_EMP_ID INT,
ORDERS_CUS_ID INT,
ORDERS_SHIP_HOUSE INT,
ORDERS_SHIP_BLOCK VARCHAR(3),
ORDERS_SHIP_AREA VARCHAR(50),
ORDERS_SHIP_CITY VARCHAR(50),
ORDERS_SHIP_COUNTRY VARCHAR(50),
ORDERS_DATE DATE,
ORDERS_SHIP_DATE DATE,
ORDERS_PAYMENT_TYPE INT,
CONSTRAINT O_EID_FK FOREIGN KEY(ORDERS_EMP_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT O_CID_FK FOREIGN KEY(ORDERS_CUS_ID) REFERENCES CUSTOMER(CUSTOMER_ID) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT O_PID_FK FOREIGN KEY(ORDERS_PAYMENT_TYPE) REFERENCES PAYMENT_TYPE(PAYMENT_ID) ON UPDATE CASCADE ON DELETE CASCADE);



CREATE TABLE ORDER_DETAILS(
ORDER_DETAIL_ID INT PRIMARY KEY,
ORDER_ID INT,
MEDICINE_ID INT,
QUANTITY INT,
UNIT_PRICE DECIMAL(5,2),
DISCOUNT DECIMAL(5,2),
STATUS VARCHAR(15),
CONSTRAINT OD_OID_FK FOREIGN KEY(ORDER_ID) REFERENCES ORDERS(ORDERS_ID) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT OD_MID_FK FOREIGN KEY(MEDICINE_ID) REFERENCES MEDICINES(MEDICINE_ID) ON UPDATE CASCADE ON DELETE CASCADE);





CREATE TABLE PRESCRIPTION(
PRESCRIPTION_ID INT PRIMARY KEY,
STRENGTH INT,
DOSE INT,
AGE INT,
MEDICINE_ID INT,
CUSTOMER_ID INT,
PHARMACIST_ID INT,
CONSTRAINT P_PID_FK FOREIGN KEY(PHARMACIST_ID) REFERENCES PHARMACIST(PHARMACIST_ID) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT P_MID_FK FOREIGN KEY(MEDICINE_ID) REFERENCES MEDICINES(MEDICINE_ID) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT P_CID_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID) ON UPDATE CASCADE ON DELETE CASCADE);






CREATE TABLE STOCKS(
STOCK_ID INT PRIMARY KEY,
MEDICINE_ID INT,
COMPANY_ID INT,
SUPPLIER_ID INT,
SUPPLY_DATE DATE,
BATCH_ID VARCHAR(10),
QUANTITY INT,
CONSTRAINT S_MID_FK FOREIGN KEY(MEDICINE_ID) REFERENCES MEDICINES(MEDICINE_ID) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT S_SID_FK FOREIGN KEY(SUPPLIER_ID) REFERENCES SUPPLIER(SUPPLIER_ID) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE INVOICES(
INVOICE_ID INT PRIMARY KEY,
ORDER_ID INT,
CUSTOMER_ID INT,
INVOICE_DATE DATE,
TAX DECIMAL(5,2),
SHIPPING_FEE DECIMAL(5,2),
TOTAL_AMOUNT DECIMAL(5,2),
CONSTRAINT I_CID_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT I_OID_FK FOREIGN KEY(ORDER_ID) REFERENCES ORDERS(ORDERS_ID) ON UPDATE CASCADE ON DELETE CASCADE);



INSERT INTO ADMIN VALUES
(101,"MUNEEB0408","MUHAMMAD","MUNEEB","TEST123"),
(102,"DANISH0270","MUHAMMAD","DANISH","TEST123"),
(103,"ASAD0480","ASAD","ALI","TEST123"),
(104,"HASAAN0296","HASAAN","NADEEM","TEST123");


INSERT INTO COMPANY VALUES
(9001,"GETZ PHARMA",98,"K","KORANGI","KARACHI","PAKISTAN","09284357286"),
(9002,"ABBOTT LABORATORIES",2,"A","LANDHI","KARACHI","PAKISTAN","09284787236"),
(9003,"FEROZSONS LABORATORIES",650,"Z","SITE","KARACHI","PAKISTAN","09284759027"),
(9004,"SEARLE PAKISTAN LIMITED",600,"A","SUNDAR","LAHORE","PAKISTAN","09284756387"),
(9005,"PFIZER PAKISTAN",250,"A","INDUSTRIAL ESTATE","FAISLABAD","PAKISTAN","09284569757"),
(9006,"BAYER PHARMA",1,"A","SITE","KARACHI","PAKISTAN","09285029337"),
(9007,"SAMI PHARMACEUTICALS",97,"F7","BLUE AREA","ISLAMABAD","PAKISTAN","01288739337"),
(9008,"HILTON PHARMA",20,"B","MODEL TOWN","LAHORE","PAKISTAN","04288895337"),
(9009,"WYETH PAKISTAN",624,"H","JOHAR TOWN","LAHORE","PAKISTAN","04288720947"),
(9010,"GLAXOSMITHKLINE",104,"D","MODEL TOWN","LAHORE","PAKISTAN","04288790230"),
(9011,"NOVARTIS",87,"Z","KORANGI","KARACHI","PAKISTAN","04288827380"),
(9012,"HAMDARD LABORATORIES",1,"A","NAZIMABAD","KARACHI","PAKISTAN","04288092080"),
(9013,"DELTA PHARMA",2,"A","FAKHAR-E-ALAM ROAD","PESHAWAR","PAKISTAN","042888923230"),
(9014,"PLATINUM PHARMACEUTICALS",20,"A","BIN QASIM","KARACHI","PAKISTAN","04288800092"),
(9015,"HILTON PHARMA",8,"A","PROGRESSIVE PLAZA","KARACHI","PAKISTAN","04280428302"),
(9016,"PHARMAGEN",27,"6","SHAHRA-E-FAISAL","KARACHI","PAKISTAN","04280402039"),
(9017,"SCHAZOO LBAORATORIES",57,"H","GULBERG 3","LAHORE","PAKISTAN","04280092292"),
(9018,"RECKITT BENCKISER",15,"C","CLIFTON","KARACHI","PAKISTAN","04280092102"),
(9019,"PARAMOUNT PHARMACEUTICALS",209,"A","BLUE AREA","ISLAMABAD","PAKISTAN","01280409213"),
(9020,"QARSHI LABORATORIES",37,"E","SHADMAN","LAHORE","PAKISTAN","04209210213"),
(9021,"STANLEY PHARMACEUTICALS",20,"X","DHA COMERCIAL AREA","LAHORE","PAKISTAN","04209209013"),
(9022,"MCOLSON LABORATORIES",21,"X","BIN QASIM","KARACHI","PAKISTAN","04209209203"),
(9023,"SHANGXI GUANGSHENG PHARMACEUTICALS",201,"Z21","NORTH STREET 21","SHANGHAI","CHINA","08718281782"),
(9024,"MERCK LTD.",7,"A","JAIL ROAD","QUETTA","PAKISTAN","04209290753"),
(9025,"PHARMIX LABORATORIES",21,"A","FEROZPUR ROAD","LAHORE","PAKISTAN","04209209103"),
(9026,"BATALA PHARMACEUTICALS",23,"B","INDUSTRIAL ESTATE","GUGRANWALA","PAKISTAN","04209202113"),
(9027,"FYNK PHARMACEUTICALS",19,"A","GT ROAD","KAKASHA KAKU","PAKISTAN","04209290129"),
(9028,"MACTER INTERNATIONAL",216,"F","SITE","KARACHI","PAKISTAN","04209209103"),
(9029,"NABIQASIM INDUSTRIES",17,"21","KORANGI","KARACHI","PAKISTAN","04209999203"),
(9030,"SHAWAN PHARMACEUTICALS",37,"1","NATIONAL INDUSTRIAL ZONE","RAWALPINDI","PAKISTAN","04209091203"),
(9031,"HIGHNOON LABORATORIES",17,"A","MULTAN ROAD","LAHORE","PAKISTAN","04208711003"),
(9032,"LABORATORIOS ALMIRALL",515,"A","RONDA DEL GENERAL MITRE","BARCELONA","SAPIN","06081628123"),
(9033,"LABORATORIOS ALMIRALL",9364,"A","INDUSTRIAL ESTATE SAHAB","AMMAN","JORDAN","003081609123");









INSERT INTO FORMULA VALUES
(701,"ACETAMINOPHEN"),
(702,"ADDERALL"),
(703,"ALPRAZOLAM"),
(704,"AMITRIPTYLINE"),
(705,"AMLODIPINE"),
(706,"AMOXICILLIN"),
(707,"ATIVAN"),
(708,"ATORVASTATIN"),
(709,"AZITHROMYCIN"),
(710,"CIPROFLOXACIN"),
(711,"CITALOPRAM"),
(712,"CLINDAMYCIN"),
(713,"CLONAZEPAM"),
(714,"CODEINE"),
(715,"CYCLOBENZAPRINE"),
(716,"CYMBALTA"),
(717,"DOXYCYCLINE"),
(718,"GABAPENTIN"),
(719,"HYDROCHLOROTHIAZIDE"),
(720,"IBUPROFEN"),
(721,"LEXAPRO"),
(722,"LISINOPRIL"),
(723,"LORATADINE"),
(724,"LORAZEPAM"),
(725,"LOSARTAN"),
(726,"LYRICA"),
(727,"MELOXICAM"),
(728,"METFORMIN"),
(729,"METOPROLOL"),
(730,"NAPROXEN"),
(731,"OMEPRAZOLE"),
(732,"OXYCODONE"),
(733,"PANTOPRAZOLE"),
(734,"PARACETAMOL"),
(735,"PREDNISONE"),
(736,"TRAMADOL"),
(737,"TRAZODONE"),
(738,"VIAGRA"),
(739,"WELLBUTRIN"),
(740,"XANAX"),
(741,"ZOLOFT"),
(742,"FEBUXOSTAT"),
(743,"MECOBALAMIN"),
(744,"DICLOFENAC POTASSIUM"),
(745,"TIZANIDE"),
(746,"BROMAZEPAM"),
(747,"ASPIRIN"),
(748,"FLUBIPROFEN"),
(749,"EBASTINE"),
(750,"THIOCOLCHICOSIDE"),
(751,"ZOLOFT"),
(752,"DICLOFENAC SODIUM"),
(753,"BISMUTH SUBSALICYLATE"),
(754,"ESOMEPARAZOLE"),
(755,"CLARITHROMYCIN"),
(756,"HYOSCINE BUTYLBROMIDE"),
(757,"ORPHENADRINE CITRATE"),
(758,"LORNOXICAM"),
(759,"NIMESULIDE"),
(760,"PSEUDOPHEDRINE"),
(761,"ACETYLSALICYLIC ACID"),
(762,"ASPIRIN");





INSERT INTO DESCRIPTION VALUES
(501,"PAINKILLER"),
(502,"DIGESTIVE TRACT"),
(503,"ANTI-DEPRESSANT"),
(504,"DIGESTIVE TRACT"),
(505,"ANTIBIOTIC"),
(506,"TONSILLITIS"),
(507,"BRONCHITIS"),
(508,"PNEUMONIA"), 
(509,"GONORRHEA"), 
(510,"EAR INFECTIONS"), 
(511,"NOSE INFECTIONS"), 
(512,"THROAT INFECTIONS"), 
(513,"SKIN INFECTIONS"),
(514,"URINARY TRACT INFECTIONS"),
(515,"BACTERIAL INFECTIONS"),
(516,"INTESTINAL INFECTIONS"),
(517,"RESPIRATORY INFECTIONS"),
(518,"EYE INFECTIONS"),
(519,"SYPHILIS"),
(520,"PERIODONTITIS"),
(521,"HEADACHE"),
(522,"TOOTHACHE"),
(523,"BACK PAIN"),
(524,"ARTHRITIS"),
(525,"MENSTRUAL CRAMPS"),
(526,"FEVER"),
(527,"INFLAMMATION");
 
INSERT INTO PAYMENT_TYPE VALUES
(801,"CREDIT CARD"),
(802,"JAZZ CASH"),
(803,"EASY PAISA"),
(804,"DEBIT CARD"),
(805,"ONLINE TRANSFER"),
(806,"PAYPAL");

INSERT INTO CATEGORY VALUES
(301,"LIQUID/SYRUP"),
(302,"TABLET"),
(303,"CAPSULES"),
(304,"DROPS"),
(305,"INHALER"),
(306,"INJECTION"),
(307,"IMPLANTS/PATCHES"),
(308,"SOLUBLE");


INSERT INTO MEDICINES VALUES
(1001,"PANADOL",9010,"AB001",302,15.08),
(1002,"LORNEX 8MG",9022,"1091X",302,50.43),
(1003,"SANID 100MG",9021,"90334",302,25.00),
(1004,"MOVAX 4MG",9007,"98A20",302,23.98),
(1005,"NIMS 100MG",9007,"97N10",302,44.89),
(1006,"DISPRIN",9018,"B0089",308,12.13),
(1007,"DOXY 100MG",9023,"SH981",303,32.00),
(1008,"VOVERON SR",9027,"FN13A",302,22.00),
(1009,"KESTINE",9032,"LA9A2",302,91.22),
(1010,"ARINAC 200MG",9002,"AB081",302,25.98),
(1011,"MYOSOFT 4MG",9025,"PM563",303,54.00),
(1012,"BEFLAM 75MG",9026,"BPX19",302,63.91),
(1013,"BUSCOPAN",9024,"B0345",302,28.18),
(1014,"SHAEZ 20MG",9030,"SH2A9",303,82.00),
(1015,"BISMOL",9028,"MIL98",302,82.01),
(1016,"BRUFEN",9002,"AB980",302,44.50),
(1017,"NUBEROL FORTE",9004,"NB934",302,35.82),
(1018,"LOPRIN",9031,"HN98L",302,52.12),
(1019,"ZURIG 40MG",9001,"GT09A",302,180.98),
(1020,"MYOGESIC",9033,"JODA2",302,103.30),
(1021,"LEXOTANIL 3MG",9010,"AB001",302,80.32),
(1022,"MECOBAL 500MG",9029,"NB102",302,73.00);

INSERT INTO MEDICINE_FORMULA VALUES
(1001,734,500),
(1002,758,8),
(1003,748,100),
(1004,745,4),
(1005,759,100),
(1006,761,300),
(1007,717,1000),
(1008,752,100),
(1009,749,10),
(1010,720,200),
(1010,760,30),
(1011,750,4),
(1012,744,75),
(1013,756,10),
(1013,734,500),
(1014,754,20),
(1015,753,265),
(1016,720,400),
(1017,734,650),
(1017,757,50),
(1018,762,75),
(1019,742,40),
(1020,734,450),
(1020,757,35),
(1021,746,3),
(1022,743,500);

INSERT INTO MEDICINE_DESCRIPTION VALUES
(1001,501),
(1001,521),
(1002,505),
(1002,527),
(1003,521),
(1003,523),
(1003,526),
(1004,501),
(1005,501),
(1005,521),
(1005,526),
(1006,526),
(1007,501),
(1007,505),
(1008,501),
(1009,505),
(1009,512),
(1010,501),
(1010,505),
(1010,526),
(1011,527),
(1012,524),
(1012,501),
(1013,501),
(1013,505),
(1013,512),
(1013,526),
(1014,504),
(1014,515),
(1014,516),
(1015,504),
(1015,505),
(1016,501),
(1016,505),
(1016,515),
(1016,526),
(1016,527),
(1017,501),
(1017,515),
(1018,501),
(1018,521),
(1019,504),
(1019,505),
(1019,515),
(1019,527),
(1020,501),
(1020,526),
(1020,527),
(1021,503),
(1022,503),
(1022,527);



INSERT INTO PHARMACIST VALUES
(3001,"MUHAMMAD","SAHIR",'1993-03-15','M',100,"N","SABZAZAR","LAHORE","PAKISTAN","03249826374"),
(3002,"MUHAMMAD","TAHIR",'1999-04-11','M',2,"M","JOHAR TOWN","LAHORE","PAKISTAN","03249826000"),
(3003,"MUHAMMAD","FARHAN",'1994-03-13','M',20,"I","FAISAL TOWN","LAHORE","PAKISTAN","03299826374"),
(3004,"MUHAMMAD","AMIR",'1987-09-25','M',200,"P","ALLAMA IQBAL TOWN","LAHORE","PAKISTAN","03449826374"),
(3005,"MUHAMMAD","MAJID",'1982-01-11','M',09,"A","SABZAZAR","LAHORE","PAKISTAN","03249826374"),
(3006,"MUHAMMAD","FAYYAZ",'1984-02-25','M',27,"B","FAISAL TOWN","LAHORE","PAKISTAN","03249826374"),
(3007,"MUHAMMAD","SARFARAZ",'1985-03-29','M',72,"C","SABZAZAR","LAHORE","PAKISTAN","03249125674"),
(3008,"MUHAMMAD","SOHAIL",'1988-04-09','M',12,"D","FAISAL TOWN","LAHORE","PAKISTAN","03249820987"),
(3009,"MUHAMMAD","ADNAN",'1989-05-18','M',09,"E","SABZAZAR","LAHORE","PAKISTAN","03349826374"),
(3010,"MUHAMMAD","SHADAB",'1988-09-25','M',02,"F","FAISAL TOWN","LAHORE","PAKISTAN","03279826374"),
(3011,"SOHAIB","MALIK",'1987-06-07','M',22,"G","SABZAZAR","LAHORE","PAKISTAN","03240826374"),
(3012,"MUHAMMAD","HAFEEZ",'1986-07-05','M',234,"H","FAISAL TOWN","LAHORE","PAKISTAN","03249820987"),
(3013,"AHMAD","KAHN",'1985-08-04','M',123,"I","SABZAZAR","LAHORE","PAKISTAN","03249123484"),
(3014,"OMER","FAROOQ",'1984-09-03','M',999,"J","FAISAL TOWN","LAHORE","PAKISTAN","032123826374"),
(3015,"HASSAN","ALI",'1983-10-02','F',888,"L","SABZAZAR","LAHORE","PAKISTAN","032498098374"),
(3016,"SAADIA","KAHN",'1994-05-20','F',777,"M","FAISAL TOWN","LAHORE","PAKISTAN","03249826374"),
(3017,"SAIMA","AMIR",'1993-03-15','F',666,"N","SABZAZAR","LAHORE","PAKISTAN","032490000374"),
(3018,"ANEELA","MUKHTAIR",'1997-07-29','F',555,"O","FAISAL TOWN","LAHORE","PAKISTAN","03249825684"),
(3019,"FARIHA","IQBAL",'1989-12-15','F',444,"P","SABZAZAR","LAHORE","PAKISTAN","03249821200"),
(3020,"QANDEEL","BALOCH",'1987-09-15','F',333,"Q","JOHAR TOWN","LAHORE","PAKISTAN","03249826374"),
(3021,"FAIZA","FATIMA",'1998-11-25','F',222,"R","ALLAMA IBAL","LAHORE","PAKISTAN","03241256374"),
(3022,"RABIA","ANUM",'1996-05-14','F',111,"S","SABZAZAR","LAHORE","PAKISTAN","03249821234"),
(3023,"SUNDAS","JAMEEL",'1992-01-11','F',290,"T","JOHAR TOWN","LAHORE","PAKISTAN","03249826374"),
(3024,"HINA","AHMAD",'1994-04-05','F',229,"U","SABZAZAR","LAHORE","PAKISTAN","03249826004"),
(3025,"FATIMA","ARIF",'1999-02-12','F',212,"V","SAMNABAD","LAHORE","PAKISTAN","03249826356");


INSERT INTO CUSTOMER VALUES
(2001,"ATIFSHFIQ94","ATIF","SHAFIQ",'1994-12-12',"M",10,"K10","RAILWAY TOWN","KARACHI","PAKISTAN","0345-4515215","NICEFRUIT17"),
(2002,"TESEEN995","TEHSEEN","MOHSIN",'1995-11-23',"M",11,"Y9","GARDEN TOWN","KARACHI","PAKISTAN","0315-1245152","REDFOOD53"),
(2003,"AHMADRAZA96","AHMAD","RAZA",'1996-8-15',"M",15,"E6","MODEL TOWN","KARACHI","PAKISTAN","0305-1312152","LUSHBOO12"),
(2004,"YASINALI1992","YASIN","KHALID",'1992-5-16',"M",15,"Y89","GULBERG TOWN","KARACHI","PAKISTAN","0309-15241524","WILDGAZELLE70"),
(2005,"HAMMADAYYUB","HAMMAD","AYYUB",'1996-8-15',"M",19,"O71","GARDEN TOWN","KARACHI","PAKISTAN","0303-1524875","BRAVETIME56"),
(2006,"TAMEEM1992","TAMEEM","HASSAN",'1992-9-15',"M",16,"K18","WAPDA TOWN","KARACHI","PAKISTAN","0310-5421548","LUMPYTOOTH10"),
(2007,"AHSAN1975","AHSAN","ALI",'1998-10-15',"M",13,"K10","GULBERG TOWN","KARACHI","PAKISTAN","0312-1232154","JADEBOOK57"),
(2008,"HASSANMEH990","HASSAN","MEHMOOD",'1995-5-19',"M",15,"J10","SATELLITE TOWN","KARACHI","PAKISTAN","0325-3212541","QUIETBEAN28"),
(2009,"TARIQ1992","TARIQ","GILLANI",'1992-2-15',"M",12,"Z10","WAPDA TOWN","KARACHI","PAKISTAN","0315-5484512","SLOWINK91"),
(2010,"MSHAKIL","SHAKIL","RAZA",'1994-3-16',"M",13,"K10","RAILWAY TOWN","KARACHI","PAKISTAN","0312-1524356","HAPPYBREAD25"),
(2011,"STARSHAHID","SHAHID","ABBAS",'1999-4-12',"M",23,"E10","GULBERG TOWN","KARACHI","PAKISTAN","03423-9875845","HOTWOMBAT57"),
(2012,"IKARMALI89","IKRAM","ALI",'2000-1-19',"M",15,"R10","GARDEN TOWN","KARACHI","PAKISTAN","0347-1215459","NEWCARD59"),
(2013,"RIWAN12ALI","RIZWAN","ALI",'1995-11-15',"M",18,"T10","GARDEN TOWN","KARACHI","PAKISTAN","0345-1932532","SUPERWOOD78"),
(2014,"HUSNAIN47","HUSNAIN","TALAT",'1993-12-11',"M",21,"B10","MODEL TOWN","KARACHI","PAKISTAN","0342-2465885","DARKBELL54"),
(2015,"TALAT98","TALAT","YASIN",'1991-8-18',"F",23,"N10","MODEL TOWN","KARACHI","PAKISTAN","0305-2536523","GOODBRICK72"),
(2016,"YASIN1999","YASMIN","HAFEEZ",'1999-6-15',"F",30,"M10","SATELLITE TOWN","KARACHI","PAKISTAN","0308-5225451","ZANYQUEEN19"),
(2017,"SIDRA1999","SIDRA","NABEEL",'1997-5-14',"F",20,"U10","WAPDA TOWN","KARACHI","PAKISTAN","0303-5412125","BLACKPAIL75"),
(2018,"KHUSHBO1999","KHUSHBO","LIAQAT",'1999-10-15',"F",48,"Y10","MODEL TOWN","KARACHI","PAKISTAN","0301-4545854","MURKYGNU59"),
(2019,"SARA1993","SARA","KHALID",'1993-5-12',"F",8,"U10","RAILWAY TOWN","KARACHI","PAKISTAN","0310-1212152","LUCKYROSE97"),
(2020,"MARYAM1999","MARYAM","KHALID",'1999-1-15',"F",16,"I10","GARDEN TOWN","KARACHI","PAKISTAN","0323-3232123","DIZZYWIRE43"),
(2021,"SAIRA1992","HAFIZA","SAIRA",'1992-12-16',"F",12,"O10","WAPDA TOWN","KARACHI","PAKISTAN","0322-9565596","HOTCORAL28"),
(2022,"FARAH1995","FARAH","ASGHAR",'1995-11-18',"F",13,"K10","RAILWAY TOWN","KARACHI","PAKISTAN","0344-4518452","CRAZYCURVE61");

INSERT INTO EMPLOYEE VALUES
(7001,"ALI","MURTAZA",'1997-12-22',"M",23,"X","JOHAR TOWN","LAHORE","PAKISTAN","0321234567",103),
(7002,"SHAH","ALI",'1998-12-22',"M",22,"X","WAPDA TOWN","LAHORE","PAKISTAN","0321234568",101),
(7003,"MUHAMMAD","RAZA",'1996-12-22',"M",21,"Y","JOHAR TOWN","LAHORE","PAKISTAN","0321234569",101),
(7004,"SHUMAIL","KHAN",'1996-11-22',"M",20,"X","IZMIR TOWN","LAHORE","PAKISTAN","0321234510",101),
(7005,"BILAL","KHAN",'1993-12-18',"M",19,"X","IZMIR TOWN","LAHORE","PAKISTAN","0321234511",101),
(7006,"ASAD","BUKHARI",'1992-09-22',"M",18,"Z","JOHAR TOWN","LAHORE","PAKISTAN","0321234512",101),
(7007,"HAROON","RAFAQAT",'1998-04-14',"M",17,"X","BELLA VISTA","LAHORE","PAKISTAN","0321234513",102),
(7008,"ZEESHAN","NAEEM",'1999-01-02',"M",16,"R","BAHRIA TOWN","LAHORE","PAKISTAN","0321234514",102),
(7009,"SHAMRAIZ","AHMAD",'1996-06-01',"M",15,"S","BAHRIA TOWN","LAHORE","PAKISTAN","0321234515",102),
(7010,"HASAAN","ALI",'1991-12-12',"M",14,"N","AL_REHMAN TOWN","LAHORE","PAKISTAN","0321234516",102),
(7011,"SHADAB","KHAN",'1989-11-08',"M",13,"M","JOHAR TOWN","LAHORE","PAKISTAN","0321234517",102),
(7012,"MUHAMMAD","HAFEEZ",'1980-12-12',"M",12,"X","GREEN VALLEY","LAHORE","PAKISTAN","0321234518",103),
(7013,"FATIMA","KHAN",'1995-11-11',"F",11,"X","BELLA VISTA","LAHORE","PAKISTAN","0321234519",103),
(7014,"SAADIA","KHAN",'1992-09-22',"F",10,"Y","IZMIR TOWN","LAHORE","PAKISTAN","0321234520",103),
(7015,"MAHAM","ALI",'1993-11-22',"M",09,"X","JOHAR TOWN","LAHORE","PAKISTAN","0321234521",103),
(7016,"FAKHAR","ZAMAN",'1997-12-22',"M",08,"D","GREEN VALLEY","LAHORE","PAKISTAN","0321234522",101),
(7017,"IMAM UL HAQ","QURESHI",'1988-05-12',"M",07,"Z","BAHRIA TOWN","LAHORE","PAKISTAN","0321234523",104),
(7018,"BABAR","AZAM",'1994-03-13',"M",06,"M","BAHRIA TOWN","LAHORE","PAKISTAN","0321234524",101),
(7019,"ALI","SEHRAN",'1998-11-19',"M",05,"X","JOHAR TOWN","LAHORE","PAKISTAN","0321234525",104),
(7020,"MUHAMMAD","MUNEEB",'1994-02-17',"M",04,"X","GREEN VALLEY","LAHORE","PAKISTAN","0321234526",104);


INSERT INTO SUPPLIER VALUES
(8001,"NORDI HERBAL",98,"K","KORANGI","KARACHI","PAKISTAN","09284357286"),
(8002,"UNISA PVT LIMITED",2,"A","LANDHI","KARACHI","PAKISTAN","09284787236"),
(8003,"GB PHARMA",650,"Z","SITE","KARACHI","PAKISTAN","09284759027"),
(8004,"UNITED PHARMA",600,"A","SUNDAR","LAHORE","PAKISTAN","09284756387"),
(8005,"ABBASI PHARACEUTICAL",250,"A","INDUSTRIAL ESTATE","FAISLABAD","PAKISTAN","09284569757"),
(8006,"SHAHZEB PHARMACUETICAL",1,"A","SITE","KARACHI","PAKISTAN","09285029337"),
(8007,"SAIFRAN LOGISTICES",97,"F7","BLUE AREA","ISLAMABAD","PAKISTAN","01288739337"),
(8008,"YSV GROUP",20,"B","MODEL TOWN","LAHORE","PAKISTAN","04288895337"),
(8009,"LAHORE MEDICAL",624,"H","JOHAR TOWN","LAHORE","PAKISTAN","04288720947"),
(8010,"BATLA PHARMA",104,"D","MODEL TOWN","LAHORE","PAKISTAN","04288790230"),
(8011,"MULLER & PHIPPES",87,"Z","KORANGI","KARACHI","PAKISTAN","04288827380"),
(8012,"SPENCER DISTRIBUTION",1,"A","NAZIMABAD","KARACHI","PAKISTAN","04288092080"),
(8013,"AFTAB LIFECARE",2,"A","FAKHAR-E-ALAM ROAD","PESHAWAR","PAKISTAN","042888923230"),
(8014,"AKBAR BROTHERS",20,"A","BIN QASIM","KARACHI","PAKISTAN","04288800092"),
(8015,"BON PHARMA",8,"A","PROGRESSIVE PLAZA","KARACHI","PAKISTAN","04280428302"),
(8016,"PHARMA INTERNATIONAL",27,"6","SHAHRA-E-FAISAL","KARACHI","PAKISTAN","04280402039"),
(8017,"ALHABIB PHARMACUETICAL",57,"H","GULBERG 3","LAHORE","PAKISTAN","04280092292"),
(8018,"PROGRESSIVE ASSOCIATES",15,"C","CLIFTON","KARACHI","PAKISTAN","04280092102"),
(8019,"AL WAQAR TRADING",209,"A","BLUE AREA","ISLAMABAD","PAKISTAN","01280409213"),
(8020,"IRZA PHARMA",37,"E","SHADMAN","LAHORE","PAKISTAN","04209210213");

INSERT INTO STOCKS VALUES
(201,1001,9010,8001,'2019-01-23',"AB001",90023),
(202,1002,9022,8002,'2019-01-23',"1091X",13020),
(203,1003,9021,8016,'2019-01-23',"90334",12024),
(204,1004,9007,8004,'2019-01-23',"98A20",87364),
(205,1005,9007,8005,'2019-01-23',"97N10",93847),
(206,1006,9018,8019,'2019-01-23',"B0089",76532),
(207,1007,9023,8007,'2019-01-23',"SH981",87423),
(208,1008,9027,8008,'2019-01-23',"FN13A",12423),
(209,1009,9032,8009,'2019-01-23',"LA9A2",18472),
(210,1010,9002,8010,'2019-01-23',"AB081",94823),
(211,1011,9025,8011,'2019-01-23',"PM563",93462),
(212,1012,9026,8012,'2019-01-23',"BPX19",86463),
(213,1013,9024,8012,'2019-01-23',"B0345",67382),
(214,1014,9030,8012,'2019-01-23',"SH2A9",51013),
(215,1015,9028,8015,'2019-01-23',"MIL98",40721),
(216,1016,9002,8016,'2019-01-23',"AB980",30823),
(217,1017,9004,8017,'2019-01-23',"NB934",90029),
(218,1018,9031,8005,'2019-01-23',"HN98L",10023),
(219,1019,9001,8019,'2019-01-23',"GT09A",40023),
(220,1020,9033,8020,'2019-01-23',"JODA2",93002),
(221,1021,9010,8020,'2019-01-23',"AB001",93002),
(222,1022,9029,8020,'2019-01-23',"NB102",93002);


INSERT INTO PRESCRIPTION (PRESCRIPTION_ID, STRENGTH, DOSE, AGE, MEDICINE_ID, CUSTOMER_ID, PHARMACIST_ID) VALUES
(601,8,1,10,1001, 2001, 3001),
(602,250,2,10,1002, 2002, 3025),
(603,4,3,30,1003, 2003, 3003),
(604,45,4,40,1004, 2004, 3004),
(605,45,5,50,1021, 2005, 3011),
(606,85,6,60,1006, 2006, 3006),
(607,500,7,70,1001, 2007, 3011),
(608,100,8,80,1008, 2008, 3008),
(609,100,9,90,1009, 2007, 3017),
(610,100,2,90,1010, 2010, 3025),
(611,250,1,80,1011, 2002, 3011),
(612,100,2,70,1012, 2012, 3012),
(613,25,3,60,1001, 2018, 3013),
(614,50,4,50,1014, 2014, 3014),
(615,45,5,40,1015, 2015, 3017),
(616,95,6,30,1016, 2016, 3025),
(617,35,7,20,1017, 2017, 3017),
(618,500,8,10,1001, 2018, 3018),
(619,20,9,20,1019, 2019, 3019),
(620,8,3,30,1020, 2020, 3020),
(621,4,1,40,1021, 2021, 3011),
(622,20,2,50,1022, 2022, 3022),
(623,100,3,60,1020, 2022, 3023),
(624,45,4,70,1001, 2001, 3011),
(625,50,5,80,1009, 2004, 3025);






INSERT INTO ORDERS VALUES
(5001,7001,2001,10,"K","MODEL TOWN","LAHORE","PAKISTAN",'2017-11-19','2017-11-21',802),
(5002,7002,2002,11,"K","SATELLITE TOWN","LAHORE","PAKISTAN",'2017-10-11','2017-10-15',806),
(5003,7003,2003,12,"C","GARDEN TOWN","LAHORE","PAKISTAN",'2017-10-16','2017-10-19',802),
(5004,7004,2004,13,"V","SATELLITE TOWN","LAHORE","PAKISTAN",'2017-10-19','2017-10-22',805),
(5005,7005,2019,14,"B","GULBERG TOWN","LAHORE","PAKISTAN",'2017-10-10','2017-10-13',802),
(5006,7006,2006,16,"F","WAPDA TOWN","LAHORE","PAKISTAN",'2017-11-11','2017-11-13',801),
(5007,7007,2007,18,"T","RAILWAY TOWN","LAHORE","PAKISTAN",'2017-10-15','2017-10-23',801),
(5008,7008,2008,12,"Y","JOHAR TOWN","LAHORE","PAKISTAN",'2017-1-15','2017-1-23',806),
(5009,7009,2009,15,"S","WAPDA TOWN","LAHORE","PAKISTAN",'2017-5-25','2017-5-27',805),
(5010,7010,2022,52,"J","SATELLITE TOWN","LAHORE","PAKISTAN",'2017-6-21','2017-6-24',802),
(5011,7011,2011,19,"S","GARDEN TOWN","LAHORE","PAKISTAN",'2017-7-21','2017-7-25',805),
(5012,7008,2012,23,"L","GULBERG TOWN","LAHORE","PAKISTAN",'2017-8-12','2017-8-15',802),
(5013,7013,2013,20,"I","JOHAR TOWN","LAHORE","PAKISTAN",'2017-9-12','2017-9-10',804),
(5014,7003,2014,54,"K","WAPDA TOWN","LAHORE","PAKISTAN",'2017-3-15','2017-3-20',805),
(5015,7015,2015,51,"M","SATELLITE TOWN","LAHORE","PAKISTAN",'2017-5-12','2017-5-11',806),
(5016,7016,2016,62,"K","RAILWAY TOWN","LAHORE","PAKISTAN",'2018-1-13','2017-1-15',805),
(5017,7017,2017,55,"N","WAPDA TOWN","LAHORE","PAKISTAN",'2017-11-25','2017-11-21',801),
(5018,7018,2018,52,"G","GULBERG TOWN","LAHORE","PAKISTAN",'2017-12-25','2017-12-26',805),
(5019,7016,2019,56,"K","WAPDA TOWN","LAHORE","PAKISTAN",'2017-11-10','2017-12-11',804),
(5020,7020,2020,41,"J","SATELLITE TOWN","LAHORE","PAKISTAN",'2018-12-11','2018-12-11',801),
(5021,7009,2021,56,"U","RAILWAY TOWN","LAHORE","PAKISTAN",'2017-10-10','2017-10-12',803),
(5022,7002,2022,54,"Z","GARDEN TOWN","LAHORE","PAKISTAN",'2019-1-10','2019-1-12',802);




INSERT INTO ORDER_DETAILS VALUES
(6001,5001,1001,100,599.15,135.32,"PENDING"),
(6002,5002,1002,101,899.15,225.22,"DELIVERED"),
(6003,5003,1019,102,522.15,125.12,"DELIVERED"),
(6004,5004,1004,103,800.15,105.22,"DELIVERED"),
(6005,5005,1005,104,700.50,105.52,"DELIVERED"),
(6006,5006,1006,105,400.50,101.12,"DELIVERED"),
(6007,5007,1007,108,800.50,125.59,"DELIVERED"),
(6008,5008,1008,109,900.50,135.55,"DELIVERED"),
(6009,5009,1009,110,550.50,115.51,"PENDING"),
(6010,5010,1010,111,510.50,111.32,"DELIVERED"),
(6011,5011,1020,112,410.50,110.10,"DELIVERED"),
(6012,5012,1012,113,311.20,110.12,"PENDING"),
(6013,5013,1013,114,512.21,123.14,"DELIVERED"),
(6014,5014,1014,115,611.32,132.15,"DELIVERED"),
(6015,5015,1015,116,911.23,142.19,"DELIVERED"),
(6016,5016,1005,117,521.23,100.19,"DELIVERED"),
(6017,5017,1017,118,621.23,102.19,"DELIVERED"),
(6018,5018,1018,119,511.23,123.19,"PENDING"),
(6019,5019,1019,120,540.52,100.19,"DELIVERED"),
(6020,5020,1020,121,541.23,123.19,"DELIVERED"),
(6021,5021,1020,122,611.23,135.19,"PENDING"),
(6022,5022,1022,123,911.53,186.19,"DELIVERED");







INSERT INTO INVOICES VALUES
(4001,5001,2001,'2019-01-29',012.66,125.00,200.00),
(4002,5002,2002,'2019-02-03',012.77,135.99,300.11),
(4003,5003,2003,'2019-03-30',012.88,155.88,400.22),
(4004,5004,2004,'2019-04-20',013.99,165.77,500.33),
(4005,5005,2019,'2019-05-25',014.00,175.66,600.44),
(4006,5006,2006,'2019-06-24',015.11,185.55,700.55),
(4007,5007,2007,'2019-01-23',016.22,195.44,800.66),
(4008,5008,2008,'2019-02-22',017.33,105.33,900.77),
(4009,5009,2009,'2019-03-21',018.44,120.22,100.88),
(4010,5010,2022,'2019-04-20',019.55,121.11,200.99),
(4011,5011,2011,'2019-05-10',020.66,122.00,300.00),
(4012,5012,2012,'2019-06-19',021.77,123.99,400.11),
(4013,5013,2013,'2019-01-27',020.88,124.88,500.12),
(4014,5014,2014,'2019-02-05',011.99,125.77,600.13),
(4015,5015,2015,'2019-03-17',012.00,126.66,700.14),
(4016,5016,2016,'2019-04-29',013.11,127.55,800.15),
(4017,5017,2017,'2019-05-24',014.22,128.44,900.17),
(4018,5018,2018,'2019-06-21',015.33,129.22,100.18),
(4019,5019,2019,'2019-01-19',016.44,224.33,200.16),
(4020,5020,2020,'2019-02-11',017.55,225.11,300.19),
(4021,5021,2021,'2019-03-02',019.66,226.00,400.10),
(4022,5022,2022,'2019-04-01',018.77,227.12,500.21);




