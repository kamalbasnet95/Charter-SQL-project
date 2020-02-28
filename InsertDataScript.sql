Insert Into Model (NumofSeats, FuelCapacity)
Values ( 125, 3000), (30, 2215), (20, 2227); 

Insert Into AIRCRAFTS (Aircraft_Hours, Model_Num)
Values ( 245836, 1 ), ( 428037, 2 ),
		( 458955, 3 );

Insert Into CITIES (City, Region)
values ('Boston', 'New England'), ('Manchester', 'Southweast'), 
		('Los Angeles', 'WestCoast'); 

Insert Into EMPLOYEE(FirstName, LastName)
Values ( 'Basnet' , 'Kamal' ), ('Khadka','Bebika' ),
		('Basnet' , 'Kumar' );	

Insert Into CERTIFICATION (License_Exp, Emp_ID )
Values ( '12-08-2019', 124 ), ('08-10-2020', 126 ),


Insert Into MEDICALTEST(Medical_Exp, Medical_Info, Emp_ID )
Values ('01-08-2022', 'Drug Test', 126), ('08-12-2021', 'Physical Test', 125 ),
		( '07-11-2025', 'Blood Test', 124 );

Insert Into CUSTOMER(Cust_FName, Cust_LName, SSN,Cust_Address)
Values ( 'Rian' , 'Netbas' , 100480498, '78 Glenburke Street, Bangor ME'), 
( 'Vivek' , 'Chopra' , 540770795, '15 Myrtle Street, Bangor ME' ),
( 'Ryan' , 'Mason' , 480510555, '20 Spruce Street, Bangor ME' );	

Insert Into CHARTER (CharterDate, Cust_Num)
Values ( '10-09-2022' , 94 ), ('06-26-2094', 92 ),
		('10-08-2020', 93 );

Insert Into Flights (CharterID, Aircraft_Num, Cust_Num, StartCity, EndCity)
values ( 102,71,92, 4,1) ,( 88, 70, 94,7,4 ), (116,72, 93, 4, 7);


Insert Into CHARTERCREW (EMP_ID, CharterID, CrewRole)
Values ( 124 , 102, 'Steward' ), ( 125, 88, 'Pilot' ),
		(126 , 116, 'Co-Pilot' );		

Insert Into BILL  (Aircraft_Chrg,Crew_Chrg ,Amount , FLightID, Cust_Num)
Values ( 8000 ,3000,11000, 17,92 ), ( 10000 ,4500,14500, 18, 94), 
( 7000 , 2500,9500, 16, 93); 


select *from model
select * from Aircrafts
Select * from Cities
Select * from Employee
select * from certification
select * from Customer
select * from CHARTER
select * from FLights
select * from CharterCrew
select * from BILL 