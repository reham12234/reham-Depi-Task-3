

create table employee(
ssn int primary key,
birth_date date default getdate(),
gender varchar(10),
first_name varchar(15) ,
last_name varchar(15),
super_id int 
);
create table department(
Dnum int primary key,
Dname varchar(20)
);
create table departement_locations(

locationn varchar(50)

);

create table project (
pname  varchar(50),
locationn varchar(50),
city  varchar(50)
);
create table dependents(
namee   varchar(50)  primary key,
gender  varchar(50),
birth_date  date
);
create table work_in_relatioship(
working_hours int
);
Alter table employee add Dnum int
foreign key(Dnum) references department(Dnum);

Alter table employee 
drop column super_id;

Alter table employee add super_id int
foreign key(super_id ) references employee(ssn);

Alter table department add emp_ssn int
foreign key( emp_ssn) references employee(ssn);

Alter table departement_locations add Dnum int
foreign key( Dnum) references department(Dnum);

Alter table project add Dnum int
foreign key( Dnum) references department(Dnum);

Alter table dependents add emp_ssn int
foreign key( emp_ssn) references employee(ssn);

Alter table work_in_relatioship add emp_ssn int
foreign key( emp_ssn) references employee(ssn);

alter table project 
add pnumber int primary key;


Alter table work_in_relatioship add pnumber int
foreign key(pnumber ) references project(pnumber);

select * from employee

select * from project

insert into employee (ssn,gender,first_name,last_name)
values(2,'male' ,'ahmed','hamed');

insert into employee (ssn,gender,first_name,last_name)
values(1,'male' ,'ahmed','khaled'),(3,'male' ,'ahmed','mohamed'),(4,'male' ,'ahmed','ayed'),(5,'male' ,'ahmed','hazem');

select * from employee


insert into department
values(22,'cs',2),(23,'is',3),(24,'sc',4);

select * from department

update department
set Dname='ai' where Dnum=22;

update employee set Dnum=22 where ssn=1
update employee set Dnum=22 where ssn=2
update employee set Dnum=22 where ssn=3

insert into dependents values('hazem' ,'male' ,'1/10/2010' ,3)
delete from dependents where emp_ssn=3
select * from employee where Dnum=22
insert into project (pnumber,pname,locationn,city,Dnum) values(44,'cs','26 juli','cairo',22),(45,'sc','october','cairo',23)
insert into work_in_relatioship values (3,1,44),(4,2,45)


--
تاسك سيشن 3
--
drop database company
create database company
create table employee(
ssn int primary key,
birth_date date default getdate(),
gender varchar(10) check (gender in('male' ,'female')),
first_name varchar(15) ,
last_name varchar(15) not null, 
);
create table department(
Dnum int primary key,
Dname varchar(20),
emp_ssn int ,
constraint fk_emp_ssn foreign key(emp_ssn) references employee(ssn) 
on delete cascade on update cascade
);
create table departement_locations(
locationn varchar(50) ,
Dnum int,
constraint fk_Dnum foreign key (Dnum) references department(Dnum)
on delete cascade on update cascade
);
create table project (
pnumber int primary key ,
pname  varchar(50),
locationn varchar(50),
city  varchar(50),
Dnum int,
constraint fk_Dnumber foreign key (Dnum) references department(Dnum)
on delete cascade on update cascade
);
create table dependents(
namee   varchar(50)  primary key,
gender  varchar(50) check(gender in('male' ,'female')),
birth_date  date,
emp_ssn int ,
constraint fk_employee_ssn foreign key(emp_ssn) references employee(ssn) 
on delete cascade on update cascade
);
create table work_in_relatioship(
working_hours int,
emp_ssn int ,
constraint fk_employeee_ssn foreign key(emp_ssn) references employee(ssn) 
on delete cascade on update cascade,
project_pnum int ,
constraint fk_project_pnum foreign key(project_pnum) references project(pnumber)

);


alter table employee drop column dnum 

alter table employee add dnum int ;
alter table employee add constraint fk_dnumbber foreign key(dnum) references department(Dnum) 

alter table employee drop constraint fk_dnumbber


alter table employee 
add constraint fk_dnumbber foreign key(dnum) references department(Dnum) --لو حابة اضيف عمود واخليه fk --

alter table employee 
add super_id int
alter table employee 
add constraint fk_super_id foreign key(super_id) 
references employee(ssn) 

insert into employee(ssn,birth_date,gender ,first_name ,last_name) 
values(1 ,'1/10/2005' ,'female' ,'reham' ,'mohsen' )

insert into employee(ssn,birth_date,gender ,first_name ,last_name) 
values(2 ,'2/10/2005' ,'male' ,'hazem' ,'mohsen' )


 select * from employee
 select * from department

 delete from employee

insert into employee(ssn,birth_date,gender ,first_name ,last_name ) 
values(1 ,'1/10/2005' ,'female' ,'reham' ,'mohsen' )

insert into employee(ssn,birth_date,gender ,first_name ,last_name  ) 
values(2 ,'2/10/2005' ,'male' ,'hazem' ,'mohsen'  )

insert into department values(10 ,'cs' ,1)
insert into department values(20 ,'is' ,2)

--Task 2--






