

CREATE TABLE `tblStaff` (
	`staff_id` int(11) NOT NULL AUTO_INCREMENT,
	`staff_fname` text NOT NULL,
	`staff_lname` text NOT NULL,
	`staff_email` varchar(25) NOT NULL,
	`staff_phone` varchar(8) NOT NULL,
	CONSTRAINT staff_id_pk PRIMARY KEY(staff_id),
	CONSTRAINT staff_email_uk UNIQUE (staff_email),
	CONSTRAINT staff_phone_uk UNIQUE (staff_phone)
	
)  ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `tblStudent` (
`std_id` varchar(200) NOT NULL,
`std_Fname` text NOT NULL,
`std_Lname` text NOT NULL,
`std_age` int(10) NOT NULL,
`std_phone` int(10) NOT NULL,
`std_address` varchar(200) NOT NULL,
`std_cohort` text NOT NULL,
`std_timestamp` DATETIME NOT NULL,
`std_image` text NOT NULL,
CONSTRAINT std_std_id_pk PRIMARY KEY(std_id),
CONSTRAINT std_std_phone_uk UNIQUE(std_phone)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `tblNews` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11),
  `std_id` varchar(200),
  `news_title` text NOT NULL,
  `news_timestamp` DATETIME NOT NULL,
  `news_desc` text NOT NULL,
  `news_image` text NOT NULL,
  CONSTRAINT news_news_id_pk PRIMARY KEY(news_id),
  CONSTRAINT news_staff_id_fk FOREIGN KEY(staff_id) 
  REFERENCES tblStaff(staff_id),
  CONSTRAINT news_std_id_fk FOREIGN KEY(std_id)
  REFERENCES tblStudent(std_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `tblEvent` (
`evt_id` int(11) NOT NULL AUTO_INCREMENT,
`evt_title` text NOT NULL,
`staff_id` int(11) NOT NULL,
`evt_timestamp` DATETIME NOT NULL,
`evt_address` varchar(200) NOT NULL,
`evt_desc` text NOT NULL,
`evt_image` text NOT NULL,
`evt_Lon` decimal(20,15),
`evt_Lat` decimal(20,15),
CONSTRAINT event_evt_id_pk PRIMARY KEY(evt_id),
CONSTRAINT event_staff_id_fk FOREIGN KEY(staff_id)
REFERENCES tblStaff(staff_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




INSERT INTO `tblStaff` (`staff_id`,`staff_fname`,`staff_lname`,`staff_email`,`staff_phone`) VALUES
(1,'Rolland','Jaylon','rolland@hotmail.com',57483621),
(2,'Didem','Avelina','didem@gmail.com',54334971),
(3,' Susanna','Desmond','desmond@live.com',52937389),
(4,'Sunan','Desmond','sunan@live.com',52616587);

INSERT INTO `tblStudent` (`std_id`,`std_Fname`,`std_Lname`,`std_age`,`std_phone`,`std_address`,`std_cohort`,`std_timestamp`,`std_image`) VALUES
('1803_15000','Rozanne','Cronus',20,52129838,'casernes','BSE18AFT',DATE_FORMAT('2019-09-25 11:30','%Y-%m-%d %H:%i'),'http://localhost:8080/HybridMobileApp/img/event/elevated.jpg');

INSERT INTO `tblNews` (`news_id`,`staff_id`,`std_id`,`news_title`,`news_timestamp`,`news_desc`,`news_image`) VALUES
(1,1,NULL,'Exam Entry Form',DATE_FORMAT('2019-09-17 09:00','%Y-%m-%d %H:%i'),'Deadline 17/10/2019','http://localhost:8080/HybridMobileApp/img/news/elevated.jpg'),
(2,2,NULL,'Student Election',DATE_FORMAT('2019-10-07 09:10','%Y-%m-%d %H:%i'),'Require Student ID','http://localhost:8080/HybridMobileApp/img/news/elevated1.jpg'),
(3,3,NULL,'Student Week',DATE_FORMAT('2019-10-05 10:02','%Y-%m-%d %H:%i'),'Fun Day','http://localhost:8080/HybridMobileApp/img/news/elevated2.jpg'),
(4,NULL,'1803_15000','Universade',DATE_FORMAT('2019-09-28 11:12','%Y-%m-%d %H:%i'),'Register and form your teams','http://localhost:8080/HybridMobileApp/img/news/elevated3.jpg'),
(5,4,NULL,'UTM Adventurer Club',DATE_FORMAT('2019-09-25 11:30','%Y-%m-%d %H:%i'),'Climbers join us','http://localhost:8080/HybridMobileApp/img/news/elevated4.jpg');

INSERT INTO `tblEvent` (`evt_id`,`evt_title`,`staff_id`,`evt_timestamp`,`evt_address`,`evt_desc`,`evt_image`,`evt_Lon`,`evt_Lat`) VALUES
(1,'MITIA SPORTS AND FUN DAY',1,DATE_FORMAT('2019-09-17 09:11','%Y-%m-%d %H:%i'),'la route de Cascavelle','sportifs et moins sportifs et toute taille','http://localhost:8080/HybridMobileApp/img/event/elevated.jpg',57.414902,-20.289730);





COMMIT;