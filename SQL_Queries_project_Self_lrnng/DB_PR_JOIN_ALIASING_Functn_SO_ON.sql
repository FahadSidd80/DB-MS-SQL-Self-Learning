create database DB_PR_JOIN_ALIASING_Functn_SO_ON
use DB_PR_JOIN_ALIASING_Functn_SO_ON

create table tblEmployee
(
id int primary key identity,
name varchar(50),
salary int,
countryid int
) 
insert into tblEmployee(name,salary,countryid)values('alok',500,3)
insert into tblEmployee(name,salary,countryid)values('Arvind',700,1)
insert into tblEmployee(name,salary,countryid)values('Shubhanshi',900,1)
insert into tblEmployee(name,salary,countryid)values('Sweta',300,2)
insert into tblEmployee(name,salary,countryid)values('Hitesh',800,2)
insert into tblEmployee(name,salary,countryid)values('Deepak',500,3)

create table tblCountry
(
cid int primary key identity,
cname varchar(50)
)

insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('Japan')
------------------------------------------------------------------------------
-- JOIN PRACTICE
select * from tblEmployee
select * from tblCountry


