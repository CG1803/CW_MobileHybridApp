
// Table Staff
tx.executeSql('CREATE TABLE IF NOT EXISTS tblStaff (staff_id int(11) NOT NULL,	staff_fname text NOT NULL,staff_lname text NOT NULL,staff_email varchar(25) NOT NULL,staff_phone varchar(8) NOT NULL,CONSTRAINT staff_id_pk PRIMARY KEY(staff_id),CONSTRAINT staff_email_uk UNIQUE (staff_email),CONSTRAINT staff_phone_uk UNIQUE (staff_phone))');
tx.executeSql('INSERT INTO tblStaff (staff_id,staff_fname,staff_lname,staff_email,staff_phone) VALUES (1,"Rolland","Jaylon","rolland@hotmail.com",57483621)');
tx.executeSql('INSERT INTO tblStaff (staff_id,staff_fname,staff_lname,staff_email,staff_phone) VALUES (2,"Didem","Avelina","didem@gmail.com",54334971)');
tx.executeSql('INSERT INTO tblStaff (staff_id,staff_fname,staff_lname,staff_email,staff_phone) VALUES (3," Susanna","Desmond","desmond@live.com",52937389)');
tx.executeSql('INSERT INTO tblStaff (staff_id,staff_fname,staff_lname,staff_email,staff_phone) VALUES (4,"Sunan","Desmond","sunan@live.com",52616587)');


// Table Student
tx.executeSql('CREATE TABLE IF NOT EXISTS tblStudent (std_id varchar(200) NOT NULL,std_Fname text NOT NULL,std_Lname text NOT NULL,std_age int(10) NOT NULL,std_phone int(10) NOT NULL,std_address varchar(200) NOT NULL,std_cohort text NOT NULL,std_timestamp DATETIME NOT NULL,std_image BLOB NULL,CONSTRAINT std_std_id_pk PRIMARY KEY(std_id),CONSTRAINT std_std_phone_uk UNIQUE(std_phone))');
 tx.executeSql('INSERT INTO tblStudent (std_id,std_Fname,std_Lname,std_age,std_phone,std_address,std_cohort,std_timestamp,std_image) VALUES ("1803_15000","Rozanne","Cronus",20,52129838,"casernes","BSE18AFT","2019-09-25 11:30",NULL)');


// Table News
tx.executeSql('CREATE TABLE IF NOT EXISTS tblNews (news_id int(11) NOT NULL,  staff_id int(11),  std_id varchar(200),  news_title text NOT NULL,  news_timestamp DATETIME NOT NULL,  news_desc text NOT NULL,  news_image BLOB NULL,  CONSTRAINT news_news_id_pk PRIMARY KEY(news_id),  CONSTRAINT news_staff_id_fk FOREIGN KEY(staff_id)   REFERENCES tblStaff(staff_id),  CONSTRAINT news_std_id_fk FOREIGN KEY(std_id)  REFERENCES tblStudent(std_id))');
 tx.executeSql('INSERT INTO tblNews (news_id,staff_id,std_id,news_title,news_timestamp,news_desc,news_image) VALUES (1,1,NULL,"Exam Entry Form","2019-09-17 09:00","Deadline 17/10/2019",NULL)');
 tx.executeSql('INSERT INTO tblNews (news_id,staff_id,std_id,news_title,news_timestamp,news_desc,news_image) VALUES (2,2,NULL,"Student Election","2019-10-07 09:10","Require Student ID",NULL)');
 tx.executeSql('INSERT INTO tblNews (news_id,staff_id,std_id,news_title,news_timestamp,news_desc,news_image) VALUES (3,3,NULL,"Student Week","2019-10-05 10:02","Fun Day",NULL)');
 tx.executeSql('INSERT INTO tblNews (news_id,staff_id,std_id,news_title,news_timestamp,news_desc,news_image) VALUES (4,NULL,"1803_15000","Universade","2019-09-28 11:12","Register and form your teams",NULL)');
 tx.executeSql('INSERT INTO tblNews (news_id,staff_id,std_id,news_title,news_timestamp,news_desc,news_image) VALUES (5,4,NULL,"UTM Adventurer Club","2019-09-25 11:30","Climbers join us",NULL)');


//Table Events

tx.executeSql('CREATE TABLE IF NOT EXISTS tblEvent (evt_id int(11) NOT NULL ,evt_title text NOT NULL,staff_id int(11) NOT NULL,evt_timestamp DATETIME NOT NULL,evt_address varchar(200) NOT NULL,evt_desc text NOT NULL,evt_image BLOB NULL,evt_Lat decimal(20,15),evt_Lon decimal(20,15),CONSTRAINT event_evt_id_pk PRIMARY KEY(evt_id),CONSTRAINT event_staff_id_fk FOREIGN KEY(staff_id)REFERENCES tblStaff(staff_id))');
 tx.executeSql('INSERT INTO tblEvent (evt_id,evt_title,staff_id,evt_timestamp,evt_address,evt_desc,evt_image,evt_Lat,evt_Lon) VALUES (1,"MITIA SPORTS AND FUN DAY",1,"2019-09-17 09:11","la route de Cascavelle","sportifs et moins sportifs et toute taille",NULL,-20.289730,57.414902)');