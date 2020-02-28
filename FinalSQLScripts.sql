
drop table MedicalTest 

create table MODEL (
	Model_Num int identity (1,1) PRIMARY KEY,
	NumofSeats varchar(100), 
	FuelCapacity varchar (100)
	);


Create table AIRCRAFTS (
	Aircraft_Num int identity (70,1) PRIMARY KEY, 
	Aircraft_Hours varchar (100),
	Model_Num int Foreign Key references MODEL (Model_Num) 
	);

Create table CITIES (
	LocID int identity(001,3) PRIMARY KEY,
	City varchar (50), 
	Region varchar (50)
);

Create table EMPLOYEE (
	EMP_ID int identity (124,1) PRIMARY KEY, 
	FirstName varchar (100) not null ,
	LastName varchar (50),
	);

Create table CERTIFICATION (
	License_Num int identity (10,1) PRIMARY KEY, 
	License_Exp date, 
	EMP_ID int Foreign Key references EMPLOYEE (EMP_ID)
	);

Create table MEDICALTEST (
	MedicalID int identity (15145,10) PRIMARY KEY, 
	Medical_Exp date,
	Medical_Info varchar (100),
	EMP_ID int Foreign Key references EMPLOYEE (EMP_ID)
	);
Create table CUSTOMER (
	Cust_Num int identity (80,1) PRIMARY KEY, 
	Cust_FName varchar(100),
	Cust_LName varchar (100),
	SSN varchar (9),
	Cust_Address varchar (100),
	);
create table CHARTER (
	CharterID int Identity (60,14) PRIMARY KEY, 
	CharterDate date, 
	Cust_Num int foreign key references CUSTOMER (Cust_Num)

);
Create Table Flights  (
	FlightID int identity (16,1) PRIMARY KEY, 
	CharterID int FOREIGN KEY REFERENCES CHARTER (CharterID),
	Aircraft_Num int FOREIGN KEY REFERENCES AIRCRAFTS (Aircraft_Num),
	Cust_Num int foreign key references CUSTOMER (Cust_Num),
	StartCity int Foreign key references CITIES (LocID) ,
	EndCity int Foreign key references CITIES (LocID) 

	);

Create table CHARTERCREW (
	Crew_ID int identity (5154,25) PRIMARY KEY,
	EMP_ID int Foreign Key references EMPLOYEE (EMP_ID), 		
	CharterID int FOREIGN KEY REFERENCES CHARTER (CharterID),
	CrewRole varchar (50)
	);

create table BILL (
	Bill_Num int identity (90,1) PRIMARY KEY, 
	Aircraft_Chrg int , 
	Crew_Chrg varchar (100),
	Amount varchar (100),
	FlightID int foreign key references FLIGHTS (FlightID),
	Cust_Num int foreign key references CUSTOMER (Cust_Num)
);

