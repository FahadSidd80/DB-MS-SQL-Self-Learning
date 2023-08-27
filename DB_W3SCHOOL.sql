create database W3Shool
use W3Shool

create table tblEmployee
(
empid int primary key identity,
name varchar(100) not null,
city varchar(100) not null,
age int not null,
mobileno bigint not null,
address varchar(100) not null,
zipcode int not null,
landline bigint null
)

select * from tblEmployee
insert into tblEmployee values('Alams','Jhansi','27',7518891007,'KT','228119','')
insert into tblEmployee(name,city,age,mobileno,address,zipcode) values('Hamza','delhi','22',7518891790,'MP','228189')
insert into tblEmployee(name,city,age,mobileno,address,zipcode) values('Ali','Varanasi','24',7518891712,'KT','228459')
insert into tblEmployee(name,city,age,mobileno,address,zipcode) values('Abdul','Meerat','25',7518891745,'Jharkhand','228439')
insert into tblEmployee values('Asna','Jabalpur','26',7518891798,'Orrisa','998119','05362265275')
insert into tblEmployee(name,city,age,mobileno,address) values('Fatima','Azamgarh','27',7518891787,'WB') ----
--Cannot insert the value NULL into column 'zipcode', table 'W3Shool.dbo.tblEmployee'; column does not allow nulls. INSERT fails.
insert into tblEmployee(name,city,age,mobileno,address,zipcode) values('Rajjak','Malihabad','28',7518891767,'Haryana','228719')

select name,city,landline from tblEmployee where landline is null
select landline from tblEmployee where landline is not null
select name from tblEmployee where name is null
select name from tblEmployee where name is not null

select distinct name from tblEmployee
select count(distinct address) as DistinctName from tblEmployee

update tblEmployee set name = 'fatima' where  empid=12 and city='Meerat' and age=25

delete from tblEmployee where name='Asna' and empid=13
select * from tblEmployee
delete  tblEmployee where name='fatima' and empid=12


