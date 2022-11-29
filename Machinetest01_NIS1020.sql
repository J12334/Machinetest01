create database ssmt29_NIS1020;

USE ssmt29_NIS1020;




create table employee_NIS1020(
employeeid int primary key,
area_code nvarchar(50),
empname nvarchar(50),
phone nvarchar(50),
email nvarchar(50)
)

create table manufacturer_NIS1020(
mfname nvarchar(50) primary key,
city nvarchar(50),
state nvarchar(50)
)

create table computer_NIS1020(
serialnumber int primary key,
mfname nvarchar(50)
     constraint mkf_com_man
	 foreign key (mfname)
	 references manufacturer_NIS1020(mfname)
	 on delete cascade,
model nvarchar(50),
weight int,
employeeid int
     constraint ekf_com_emplo
	 foreign key (employeeid)
	 references employee_NIS1020(employeeid)
	 on delete cascade
)

insert into computer_NIS1020
values
(123,'Lg','Gen1',2,21),
(234,'Hp','Gen2',3,22),
(345,'Asus','Gen3',3,23);



insert into employee_NIS1020
values
(21,'5678','Jayesh','999656','jayesh@gmail.com'),
(22,'6789','Jayant','999657','jayant@gmail.com'),
(23,'7890','Jamaal','999658','jamaal@gmail.com');


insert into manufacturer_NIS1020
values
('Lg','Deadwood','South Dakota'),
('Hp','Jaisalmer','Rajasthan'),
('Asus','Trivandrum','Kerala');

insert into manufacturer_NIS1020
values
('Dell','Columbia','USA');


select mfname 
from manufacturer_NIS1020 
where state like 'South Dakota'


select avg(weight) as average_weight from
computer_NIS1020
where employeeid is not null;


select empname 
from employee_NIS1020
where area_code like '5%';


select serialnumber, weight 
from computer_NIS1020
where weight < (select avg(weight) from computer_NIS1020);


select mfname 
from manufacturer_NIS1020
where mfname not in (select mfname from computer_NIS1020);





SELECT * FROM vw_list;







EXEC sp_cd 21 ;












