CREATE SCHEMA BBMS;
USE BBMS;

CREATE TABLE Donor(
	bd_id INT PRIMARY KEY ,
    bd_Name VARCHAR(20),
    bd_age INT,
    bd_Sex char,
    bd_bgrp VARCHAR(20),
    bd_regdate DATE,
    reco_id INT,
    city_id int
    );

INSERT INTO Donor VALUES(150011,'Ravi',29,'M','O+','2015-07-19',101412,1300);
INSERT INTO Donor VALUES(150021,'Shree',42,'F','A-','2015-12-24',101412,1300);
INSERT INTO Donor VALUES(150121,'Devi',44,'F','AB+','2015-08-28',101212,1200);
INSERT INTO Donor VALUES(150221,'Jai shree',25,'F','B+','2015-12-17',101212,1100);
INSERT INTO Donor VALUES(160011,'Mani',35,'M','A+','2016-11-12',101212,1100);
INSERT INTO Donor VALUES(160031,'Saran',33,'M','AB-','2016-02-06',101212,1400);
INSERT INTO Donor VALUES(160091,'Pavi',24,'F','B-','2016-10-15',101312,1500);
INSERT INTO Donor VALUES(160101,'Vidhya',22,'F','O+','2016-01-04',101312,1200);
INSERT INTO Donor VALUES(160301,'JP',31,'M','AB+','2016-09-10',101312,1200);
INSERT INTO Donor VALUES(160401,'Praveen',29,'M','O-','2016-12-17',101212,1200);


CREATE TABLE City(
	City_id INT PRIMARY KEY,
    City_name VARCHAR(20)
    );

INSERT INTO City VALUES(1100,'Tirupur');
INSERT INTO City VALUES(1200,'Chennai');
INSERT INTO City VALUES(1300,'Salem');
INSERT INTO City VALUES(1400,'CBE');
INSERT INTO City VALUES(1500,'Trichy');
INSERT INTO City VALUES(1600,'Tiruvannamalai');
INSERT INTO City VALUES(1700,'erode');
INSERT INTO City VALUES(1800,'pollachi');
INSERT INTO City VALUES(1900,'madurai');
INSERT INTO City VALUES(2000,'theni');

    
CREATE TABLE Recording_staff(
	reco_id INT PRIMARY KEY,
    reco_name VARCHAR(20),
    reco_PhNo BIGINT
    );
    
INSERT INTO Recording_Staff Values(101012,'Lekha',4245789865);
INSERT INTO Recording_Staff Values(101112,'Mark',4587896598);
INSERT INTO Recording_Staff Values(101212,'Walcot',4658956985);
INSERT INTO Recording_Staff Values(101312,'Ram',4123647896);
INSERT INTO Recording_Staff Values(101412,'Jack',4569872541);
INSERT INTO Recording_Staff Values(101512,'Abdul',4698563256);
INSERT INTO Recording_Staff Values(101612,'Jerry',4658774458);
INSERT INTO Recording_Staff Values(101712,'Kalim',4658967445);
INSERT INTO Recording_Staff Values(101812,'Sweety',4256315624);
INSERT INTO Recording_Staff Values(101912,'Shiva',4587451254);


CREATE TABLE Bb_Manager(
	M_id INT PRIMARY KEY,
    M_name VARCHAR(20),
    M_phno BIGINT
    );

INSERT INTO Bb_manager VALUES(101,'Jack',4589758495);
INSERT INTO Bb_manager VALUES(102,'Mark',4596899889);
INSERT INTO Bb_manager VALUES(103,'Dan',4252635612);
INSERT INTO Bb_manager VALUES(104,'Stancy',4785968978);
INSERT INTO Bb_manager VALUES(105,'Henry',4658967845);
INSERT INTO Bb_manager VALUES(106,'Steve',4125639878);
INSERT INTO Bb_manager VALUES(107,'Jason',4562359874);
INSERT INTO Bb_manager VALUES(108,'Stella',4154877845);
INSERT INTO Bb_manager VALUES(109,'Monika',4968597845);
INSERT INTO Bb_manager VALUES(110,'John',4252635165);


CREATE TABLE Recipient(
	reci_id INT PRIMARY KEY,
    reci_Name VARCHAR(20),
    reci_age INT,
    reci_sex Varchar(20),
    reci_bgrp VARCHAR(20),
    reci_bqnty INT,
    reci_reg_date DATE,
    reco_id INT,
    City_id INT,
    M_id INT,
    FOREIGN KEY(reco_id) REFERENCES Recording_staff(reco_id),
    FOREIGN KEY(City_id) REFERENCES City(City_id),
    FOREIGN KEY(M_id) REFERENCES Bb_Manager(M_id)
    );

    
INSERT INTO Recipient Values(10001,'peter',25,'M','B+',1.5,'2015-12-17',101212,1100,101);
INSERT INTO Recipient Values(10002,'Dan',60,'M','A+',1,'2015-12-16',101312,1100,102);
INSERT INTO Recipient Values(10003,'Steve',35,'M','AB+',0.5,'2015-10-17',101312,1200,102);
INSERT INTO Recipient Values(10004,'Parker',66,'M','B+',1,'2016-11-17',101212,1300,104);
INSERT INTO Recipient Values(10005,'Jason',53,'M','B-',1,'2015-04-17',101412,1400,105);
INSERT INTO Recipient Values(10006,'Preetham',45,'M','O+',1.5,'2015-12-17',101512,1500,105);
INSERT INTO Recipient Values(10007,'Swetha',22,'F','AB-',1,'2015-05-17',101212,1500,101);
INSERT INTO Recipient Values(10008,'Swathi',25,'F','B+',2,'2015-12-14',101412,1300,103);
INSERT INTO Recipient Values(10009,'Lance',30,'M','A+',	1.5,'2015-02-16',101312,1100,104);
INSERT INTO Recipient Values(10010,'Marsh',25,'M','AB+',3.5,'2016-10-17',101212,1200,107);
    

CREATE TABLE Disease_finder(
		dfind_id INT PRIMARY KEY,
        dfind_name VARCHAR(20),
        dfind_PhNo BIGINT
        );

INSERT INTO Disease_finder Values(11,'Peter',4589759869);
INSERT INTO Disease_finder Values(12,'Park',4658697845);
INSERT INTO Disease_finder Values(13,'Jerry',4652634178);
INSERT INTO Disease_finder Values(14,'Mark',4689579848);
INSERT INTO Disease_finder Values(15,'Monika',4625154887);
INSERT INTO Disease_finder Values(16,'Ram',4669587814);
INSERT INTO Disease_finder Values(17,'Swathi',4625361425);
INSERT INTO Disease_finder Values(18,'Gauthem',4625258787);
INSERT INTO Disease_finder Values(19,'Ashwin',4665656598);
INSERT INTO Disease_finder Values(20,'Yash',4625478754);

CREATE TABLE Blood_Specimen(
	specimen_no INT Primary key,
    b_grp VARCHAR(20),
    bld_Status INT,
    M_id INT,
    dfind_id INT,
    FOREIGN KEY(M_id) REFERENCES Bb_Manager(M_id),
    FOREIGN KEY (dfind_id) REFERENCES Disease_finder(dfind_id)
    );


INSERT INTO Blood_Specimen Values(1001,'B+',1,101,11);
INSERT INTO Blood_Specimen Values(1002,'O+',1,102,12);
INSERT INTO Blood_Specimen Values(1003,'AB+',1,102,11);
INSERT INTO Blood_Specimen Values(1004,'O-',1,103,13);
INSERT INTO Blood_Specimen Values(1005,'A+',0,101,14);
INSERT INTO Blood_Specimen Values(1006,'A-',1,104,13);
INSERT INTO Blood_Specimen Values(1007,'AB-',1,104,15);
INSERT INTO Blood_Specimen Values(1008,'AB-',0,105,11);
INSERT INTO Blood_Specimen Values(1009,'B+',1,105,13);
INSERT INTO Blood_Specimen Values(1010,'O+',0,105,12);
INSERT INTO Blood_Specimen Values(1011,'O+',1,103,13);
INSERT INTO Blood_Specimen Values(1012,'O-',1,102,14);
INSERT INTO Blood_Specimen Values(1013,'B-',1,102,14);
INSERT INTO Blood_Specimen Values(1014,'AB+',0,101,15);

CREATE TABLE Hospital_info_1(
	hosp_id INT PRIMARY KEY,
    hosp_name VARCHAR(20),
    City_id INT,
    M_id INT,
    hosp_phno BIGINT,
    FOREIGN KEY(City_id) REFERENCES City(City_id),
    FOREIGN KEY(M_id) REFERENCES Bb_Manager(M_id));


INSERT INTO Hospital_info_1 Values(1,'Apollo',1100,101,4689879887);
INSERT INTO Hospital_info_1 Values(2,'AIIMS',1200,103,4658963265);
INSERT INTO Hospital_info_1 Values(3,'Fortis',1300,103,4636526532);
INSERT INTO Hospital_info_1 Values(4,'Max Super Speciality',1400,104,4651265698);
INSERT INTO Hospital_info_1 Values(5,'Tata Memorial',1800,103,4587898598);
INSERT INTO Hospital_info_1 Values(6,'Kokilaben Ambani',1300,106,4652528754);
INSERT INTO Hospital_info_1 Values(7,'Medanta',1300,102,4652526352);
INSERT INTO Hospital_info_1 Values(8,'Narayana Health',1200,106,4615542454);
INSERT INTO Hospital_info_1 Values(9,'Christian Medical',1500,109,48785956898);
INSERT INTO Hospital_info_1 Values(10,'Manipal',1700,105,4625256363);

CREATE TABLE Hospital_Info_2(
	hosp_id INT,
    hosp_name VARCHAR(20),
    hosp_needed_bgrp VARCHAR(20),
	hosp_needed_qnty INT,
    FOREIGN KEY(hosp_id) REFERENCES Hospital_Info_1(hosp_id)
);

INSERT INTO Hospital_Info_2 VALUES(1,'Apollo','A+',20);
INSERT INTO Hospital_Info_2 VALUES(1,'Apollo','A-',40);
INSERT INTO Hospital_Info_2 VALUES(1,'Apollo','AB+',0);
INSERT INTO Hospital_Info_2 VALUES(1,'Apollo','AB-',20);
INSERT INTO Hospital_Info_2 VALUES(1,'Apollo','B-',10);

INSERT INTO Hospital_Info_2 VALUES(2,'AIIMS','A+',40);
INSERT INTO Hospital_Info_2 VALUES(2,'AIIMS','A-',10);
INSERT INTO Hospital_Info_2 VALUES(2,'AIIMS','AB+',20);
INSERT INTO Hospital_Info_2 VALUES(2,'AIIMS','AB-',10);
INSERT INTO Hospital_Info_2 VALUES(2,'AIIMS','B+',0);
INSERT INTO Hospital_Info_2 VALUES(2,'AIIMS','B-',30);

INSERT INTO Hospital_Info_2 VALUES(3,'Fortis','A+',0);
INSERT INTO Hospital_Info_2 VALUES(3,'Fortis','A-',0);
INSERT INTO Hospital_Info_2 VALUES(3,'Fortis','AB+',0);
INSERT INTO Hospital_Info_2 VALUES(3,'Fortis','AB-',0);
INSERT INTO Hospital_Info_2 VALUES(3,'Fortis','B+',10);
INSERT INTO Hospital_Info_2 VALUES(3,'Fortis','B-',20);

INSERT INTO Hospital_Info_2 VALUES(4,'Max Super Speciality','A+',10);
INSERT INTO Hospital_Info_2 VALUES(4,'Max Super Speciality','A-',40);

INSERT INTO Hospital_Info_2 VALUES(7,'Medanta','B-',40);

INSERT INTO Hospital_Info_2 VALUES(8,'Narayana Health','B+',10);

INSERT INTO Hospital_Info_2 VALUES(9,'Christian Medical','AB-',20);

-- Task = 1
-- Create a View of recipients and donors names having the same blood group registered on the 
-- same date. 

CREATE VIEW Blood_Recipient_SameBGrp 
AS  
select b.bd_name,c.reci_name,a.reco_Name from 
Recording_Staff  As a 
inner join Donor AS b on a.reco_ID = b.reco_ID 
inner join Recipient AS c on a.reco_ID = c.reco_ID 
where b.bd_Bgrp = c.reci_Bgrp and 
b.bd_regdate = c.reci_reg_date;

select * from Blood_Recipient_SameBGrp;
select * from Blood_Specimen;
Select * from Disease_finder;

-- Task-2
-- Show the blood specimen verified by disease finder Mark which are pure (status=1). 
DELIMITER $$
CREATE PROCEDURE Statuscheck(
IN Dfinder_name Varchar (50),
IN Status_num INT
)
BEGIN
	SELECT a.specimen_no,a.b_grp,b.dfind_name from blood_Specimen AS a INNER JOIN 
	Disease_finder AS b
	ON a.dfind_id = b.dfind_id 
	WHERE b.dfind_name = Dfinder_name AND bld_Status = Status_num;
END $$
DELIMITER ;

CALL Statuscheck('Monika',1);

-- Task -3 
-- Show the pure blood specimen handled by BB_Manager who also handles a recipient needing 
-- the same blood group  along with the details of the BB_Manager and Recipient. 

SELECT a.M_id,M_Name,b.reci_name, b.reci_Bgrp,c.b_grp 
FROM BB_Manager AS a INNER JOIN 
Recipient AS b 
ON a.M_id = b.M_id 
INNER JOIN 
Blood_Specimen AS c 
ON b.M_id = c.M_id 
WHERE b.M_id = c.M_id
AND b.reci_bgrp = c.b_grp 
AND bld_status = 1;

-- Task - 4
-- Show the donors having the same blood groups required by the recipient staying in the same 
-- city along with recipient details. 

SELECT a.bd_id,a.bd_name,b.reci_id,b.reci_name 
FROM Donor AS a INNER JOIN 
Recipient AS b 
ON a.reco_id = b.reco_id 
WHERE a.city_id = b.city_id AND a.bd_bgrp = b.reci_bgrp;

-- Task - 5
-- Display the information of Hospital_Info_2 handled by BB_Manager whose ID is 103: 

SELECT a.hosp_id,a.hosp_name,b.M_id FROM Hospital_Info_2 AS a INNER JOIN 
Hospital_info_1 AS b ON a.hosp_id = b.hosp_id 
WHERE b.M_id = 103;