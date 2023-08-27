create database DB_JOIN_04102023
use DB_JOIN_04102023
---lecture No 21

create table Employee
(
empid int  primary key identity,
name varchar(100),
country int
)
-- Changing varchar of Country column
alter table Employee alter column country varchar(100)
-- Changing Type varchar of Country column
alter table Employee alter column country varchar(100)
alter table Employee alter column country varchar(100)
alter table Employee alter column country int

create table tblCountry
(
cid int primary key identity,
cname varchar(100)
)

insert into Employee(name,country)values('Fahad','1')
insert into Employee(name,country)values('Hamza','2')
insert into Employee(name,country)values('Ali','3')
insert into Employee(name,country)values('Faraz','4')
insert into Employee(name,country)values('Almas','5')
insert into Employee(name,country)values('Aman','6')
insert into Employee(name,country)values('Abhishek',8)


insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('USA')
insert into tblCountry(cname)values('Canada')
insert into tblCountry(cname)values('Russia')
insert into tblCountry(cname)values('UAE')
insert into tblCountry(cname)values('Egypt')

select * from Employee
select * from tblCountry

select * from Employee join tblCountry on Employee.country=tblCountry.cid
----------------------------------------------------------------------
select empid,name,cname from Employee join tblCountry on Employee.country=tblCountry.cid
----
--create table Employee_2
--(
--empid int  primary key identity,
--empid1 int primary key identity,
--name varchar(100),
--country int  
--)
-- In one table only 1 pK and identity is allowed.
-----------------------------------------------------------------------

create table tblCountry_3
(
cid int   primary key identity(1,2),
cname varchar(100)
)
insert into tblCountry_3(cname)values('India')
insert into tblCountry_3(cname)values('Pakistan')
insert into tblCountry_3(cname)values('USA')
insert into tblCountry_3(cname)values('Canada')
insert into tblCountry_3(cname)values('Russia')
insert into tblCountry_3(cname)values('UAE')
insert into tblCountry_3(cname)values('Egypt')


select * from tblCountry_3
drop table tblCountry_3
---------------------------------------------------------------------------



--------------------------------------------
create table tblCountry_2
(
cid varchar(100) primary key ,
cname varchar(100)
)



--insert into tblCountry_2(cid,cname)values(1123,'India')
--insert into tblCountry_2(cid,cname)values('1123','Pakistan')
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
--insert into tblCountry_2(cid,cname)values('10','Canada')
--insert into tblCountry_2(cid,cname)values('10','Russia') -- duplicate
--insert into tblCountry_2(cid,cname)values('11HH','USA')
--insert into tblCountry_2(cid,cname)values('10XX','Canada')
--insert into tblCountry_2(cid,cname)values('10XX','Russia') -- duplicate
--insert into tblCountry_2(cid,cname)values('','UAE')
--insert into tblCountry_2(cid,cname)values('','Egypt') -- duplicate
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
insert into tblCountry_2(cid,cname)values('0','Canada')
--insert into tblCountry_2(cid,cname)values('null','Russia') -- duplicate
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
--insert into tblCountry_2(cid,cname)values('  ','Canada')
--insert into tblCountry_2(cid,cname)values('NULL','Russia') -- duplicate

select * from TblCountry_2
--------------------------------------------------------------

--learning on 19 april 23
-- lecture No 22

create table tblEmployee
(
id int primary key identity,
name varchar(50),
salary int,
countryid int,
status int default 0,
inserted_date date
) 

drop table tblEmployee

insert into tblEmployee(name,salary,countryid,inserted_date)values('alok',500,3,GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Arvind',700,1,GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Shubhanshi',900,1,GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Sweta',300,2,GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Hitesh',800,2,GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Deepak',500,3,GETDATE())

create table Country
(
cid int primary key identity,
cname varchar(50)
)

insert into Country(cname)values('India')
insert into Country(cname)values('Pakistan')
insert into Country(cname)values('Japan')
------------------------------------------------------
-- JOIN
select * from tblEmployee
select * from Country

select * from tblEmployee join Country on tblEmployee.countryid=Country.cid
select * from tblEmployee join Country on tblEmployee.countryid=Country.cid
select * from tblEmployee join Country on  Country.cid = Employee.countryid
select * from tblEmployee join Country on Country.cid = tblEmployee.countryid

select * from tblEmployee inner join Country on Country.cid = tblEmployee.countryid
select * from Country join tblEmployee on Country.cid = tblEmployee.countryid -- it means jo table pahle rahegi join se us table ka record pahle aaega output me

select * from Country inner join tblEmployee on Country.cid = tblEmployee.countryid

select * from tblEmployee inner join Country on  tblEmployee.countryid =Country.cid 
--------Both above join query are same. means give same output
------------------------------------------------------------------------------------------
select * from Country join tblEmployee on tblEmployee.countryid = country.cid -- it gives country table on left
select * from Country join tblEmployee on Country.cid = tblEmployee.countryid -- it gives country table on left
select * from Country inner join tblEmployee on tblEmployee.countryid = country.cid -- it gives country table on left
select * from Country inner join tblEmployee on Country.cid = tblEmployee.countryid   -- it gives country table on left
--------Both above join query are same. means give same output
--NOTE :- If we change type of Countryid column then no affect happen in join.
--eg:
 alter table tblEmployee alter column countryid varchar(100) -- change type from int to varchar
 alter table tblEmployee alter column countryid int
--------------------------------------------------------------------------------------------------


select id,name,salary,cname from tblEmployee join Country on tblEmployee.countryid=Country.cid
-- this query gives selected column from Joined table....
---------------------------------------------------------------------------------------
select id as EmpID,name As EmpName,salary EmpSalary from tblEmployee -- aliasing
select id,name,* from tblEmployee -- this query gives selected column + all table record due to *
--------------------------------------------------------------

select id,name,salary,cname from tblEmployee join Country on tblEmployee.countryid=Country.cid
select tblEmployee.id,tblEmployee.name,tblEmployee.salary,Country.cname from tblEmployee join Country on tblEmployee.countryid=Country.cid
-----Both above query gives same output.........


---ALIASING------

---THIS CONCEPT CALLLED ALIASING IN DATABSE WHICH IS MOST MOST IMPORTANT PART OF DB.
select tblEmployee.id,tblEmployee.name as EmployeeName,tblEmployee.salary,Country.cname as CountryName from tblEmployee join Country on tblEmployee.countryid=Country.cid

select tblEmployee.id EmployeeID,tblEmployee.name as EmployeeName from tblEmployee
--- LWH
select Employee.id,Employee.name as EmployeeName from Employee join Country on Employee.countryid=Country.cid

select Employee.id,Employee.name as EmployeeID,EmployeeName from Employee -- this is not possile ... Why..?
select Employee.id,Employee.name from Employee

select Employee.id as EmployeeID from Employee

select Employee.id as EmployeeID, Employee.name as EmployeeName from Employee 

select Employee.id as EmployeeID, Employee.name as EmployeeName, Employee.salary as EmployeeSalary from Employee

select Employee.id as EmployeeID, Employee.name as EmployeeName, Employee.salary as EmployeeSalary, Country.cid as CountryID, Country.cname as CountryName from Employee join Country on Employee.Countryid= Country.cid

-------------------------------------------------------Aliasing me aur kya hai pata nahi------------------------------------------------------------------------------------------------------------------------------------------------


---------------------------------------------------------JOIN-----------------------------------------------------------------------------

--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN


-- INNER JOIN

--JOIN kaho ya INNER JOIN Both are same........... Inner keyword has no significance
select * from Employee inner join Country on Employee.countryid=Country.cid  -- Inner is optional, Kahani hai, only concept hai theory waala kuch written me nahi hai
select * from Employee join Country on Employee.countryid= Country.cid

--------------------------------------------------------------------------------------------

--OUTER JOIN  


-- 1. LEFT JOIN 
-- 2. RIGHT JOIN
-- 3. FULL JOIN

---OR ----
-- OUTER is optional, Kahani hai, only concept hai theory waala, kuch written me nahi hai

-- 1. LEFT OUTER JOIN 
-- 2. RIGHT OUTER JOIN
-- 3. FULL  OUTER JOIN


-----------------------------------------------------------------------------------------------------------------------------
--1. LEFT JOIN


select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
-- JOIN,LEFT JOIN , LEFT OUTER JOIN all are same gives same outp


--1. LEFT OUTER JOIN
select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
-- JOIN,LEFT JOIN , LEFT OUTER JOIN all are same gives same output

------------------------------------------------------------------------------------------------------------------------------------------------------


-- 2. RIGHT JOIN


select * from Employee left join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid

--2. RIGHT OUTER JOIN   -- OUTER is optional, Kahani hai, only concept hai theory waala, kuch written me nahi hai


select * from Employee left join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid

--------------------------------------------------------------------------------------------------------------------------
--3.	FULL JOIN

select * from Employee full join Country on Employee.countryid=Country.cid
select * from Employee full outer join Country on Employee.countryid=Country.cid

select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
select * from Employee inner join Country on Employee.countryid= Country.cid




--3.	FULL  OUTER JOIN

select * from Employee full join Country on Employee.countryid=Country.cid
select * from Employee full outer join Country on Employee.countryid=Country.cid

select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
select * from Employee inner join Country on Employee.countryid= Country.cid

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
--3. CROSS JOIN 
select * from Employee cross join Country -- gives total combinations of id
-- like meployee table has 7 unique records and Country table has 3 unique records  so total possible condition will be 7*3 = 21


------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from Employee join Country on Employee.countryid= Country.cid
select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee full join Country on Employee.countryid=Country.cid
select * from Employee cross join Country 
------------------------------------------------------------
--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN




--11 jan 21 join 3rd



