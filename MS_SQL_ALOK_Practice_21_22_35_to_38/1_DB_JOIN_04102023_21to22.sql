create database DB_JOIN_04102023
use DB_JOIN_04102023
---lecture No 21

create table tblEmployee
(
empid int  primary key identity,
name varchar(100),
country int
)
-- Changing varchar of Country column
alter table tblEmployee alter column country varchar(100)

create table tblCountry
(
cid int primary key identity,
cname varchar(100)
)

insert into tblEmployee(name,country)values('Fahad','1')
insert into tblEmployee(name,country)values('Hamza','2')
insert into tblEmployee(name,country)values('Ali','3')
insert into tblEmployee(name,country)values('Faraz','4')
insert into tblEmployee(name,country)values('Almas','5')
insert into tblEmployee(name,country)values('Aman','6')
insert into tblEmployee(name,country)values('Abhishek',8)


insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('USA')
insert into tblCountry(cname)values('Canada')
insert into tblCountry(cname)values('Russia')
insert into tblCountry(cname)values('UAE')
insert into tblCountry(cname)values('Egypt')

select * from tblEmployee
select * from tblCountry

select * from tblEmployee join tblCountry on tblEmployee.country=tblCountry.cid
----------------------------------------------------------------------
select empid,name,cname from tblEmployee join tblCountry on tblEmployee.country=tblCountry.cid
----
--create table tblEmployee_2
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

-- lecture No 22
--will count no table
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'

create table tblEmployee
(
id int primary key identity,
name varchar(50),
salary int,
countryid int
status int default 0,
inserted_date date
) 
insert into tblEmployee(name,salary,countryid,inserted_date)values('alok',500,3, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Arvind',700,1, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Shubhanshi',900,1, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Sweta',300,2, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Hitesh',800,2, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Deepak',500,3, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Fahad',800,15, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Hamza',500,16, GETDATE())

truncate table tblEmployee

create table tblCountry
(
cid int primary key identity,
cname varchar(50)
)

insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('Japan')
------------------------------------------------------
-- JOIN
select * from tblEmployee
select * from tblCountry

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
select * from tblEmployee join tblCountry on  tblCountry.cid = tblEmployee.countryid
select * from tblEmployee inner join tblCountry on tblCountry.cid = tblEmployee.countryid
select * from tblEmployee inner join tblCountry on  tblEmployee.countryid =tblCountry.cid 
--------Both above join query are same. means give same output
------------------------------------------------------------------------------------------
select * from tblCountry join tblEmployee on tblEmployee.countryid = tblCountry.cid -- it gives country table on left
select * from tblCountry join tblEmployee on tblCountry.cid = tblEmployee.countryid
select * from tblCountry inner join tblEmployee on tblEmployee.countryid = tblCountry.cid -- it gives country table on left
select * from tblCountry inner join tblEmployee on tblCountry.cid = tblEmployee.countryid  
--------Both above join query are same. means give same output
--NOTE :- If we change type of Countryid column then no affect happen in join.
-- Eg: 
alter table tblEmployee  alter column countryid varchar(100)
select * from tblCountry join tblEmployee on tblEmployee.countryid = tblCountry.cid 
--------------------------------------------------------------------------------------------------


select id,name,salary,cname from tblEmployee join Country on tblEmployee.countryid=Country.cid
-- this query gives selected column from Joined table....
---------------------------------------------------------------------------------------
select id,name,salary from tblEmployee
select id,name from tblEmployee -- this query gives selected column
--------------------------------------------------------------

select id,name,salary,cname from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.cid
select tblEmployee.id,tblEmployee.name,tblEmployee.salary,tblCountry.cname from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.cid
-----Both above query gives same output.........


---ALIASING------

---THIS CONCEPT CALLLED ALIASING IN DATABSE WHICH IS MOST MOST IMPORTANT PART OF DB.
select tblEmployee.id,tblEmployee.name as EmployeeName,tblEmployee.salary,tblCountry.cname as CountryName from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.cid

select tblEmployee.id,tblEmployee.name as tblEmployeeName from tblEmployee
select tblEmployee.id,tblEmployee.name as tblEmployeeName from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.cid

-- last exect on 26/04/23

select tblEmployee.id,tblEmployee.name as EmployeeName from tblEmployee 
select tblEmployee.id,tblEmployee.name from tblEmployee

select tblEmployee.id as EmployeeID from tblEmployee

select tblEmployee.id as EmployeeID, tblEmployee.name as EmployeeName from tblEmployee 

select tblEmployee.id as EmployeeID, tblEmployee.name as EmployeeName, tblEmployee.salary as EmployeeSalary from tblEmployee

select tblEmployee.id as EmployeeID, tblEmployee.name as EmployeeName, tblEmployee.salary as EmployeeSalary, tblCountry.cid as CountryID, tblCountry.cname as CountryName from tblEmployee join tblCountry on tblEmployee.Countryid= tblCountry.cid

-- as/ AS is optional in aliasing eg:- given below
select tblEmployee.id  EmployeeID, tblEmployee.name  EmployeeName, tblEmployee.salary  EmployeeSalary, tblCountry.cid  CountryID, tblCountry.cname  CountryName from tblEmployee join tblCountry on tblEmployee.Countryid= tblCountry.cid

-------------------------------------------------------Aliasing me aur kya hai pata nahi------------------------------------------------------------------------------------------------------------------------------------------------


---------------------------------------------------------JOIN-----------------------------------------------------------------------------

--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN


-- INNER JOIN --  Returns records that have matching values in both tables by W3C

--JOIN kaho ya INNER JOIN Both are same........... Inner keyword has no significance
select * from tblEmployee inner join tblCountry on tblEmployee.countryid=tblCountry.cid  -- Inner is optional, Kahani hai, only concept hai theory waala kuch written me nahi hai
select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid

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


select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid



select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
-- JOIN,LEFT JOIN , LEFT OUTER JOIN all are same gives same outp


--1. LEFT OUTER JOIN  --Returns all records from the left table, and the matched records from the right table
select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid


select * from tblEmployee join Country on tblEmployee.countryid= Country.cid
-- LEFT JOIN , LEFT OUTER JOIN all are same gives same output


------------------------------------------------------------------------------------------------------------------------------------------------------


-- 2. RIGHT JOIN -- Returns all records from the right table, and the matched records from the left table


select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid

--2. RIGHT OUTER JOIN   -- OUTER is optional, Kahani hai, only concept hai theory waala, kuch written me nahi hai
-- Returns all records from the right table, and the matched records from the left table

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.cid



--------------------------------------------------------------------------------------------------------------------------
--3.	FULL JOIN-- Returns all records when there is a match in either left or right table--dono table record dega jo match ho raha hai aur jo nahi ho raha hai. 

select * from tblEmployee full join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee full outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
select * from tblEmployee inner join tblCountry on tblEmployee.countryid= tblCountry.cid




--3.	FULL  OUTER JOIN -- The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

select * from tblEmployee full join tblCountry on tblEmployee.Countryid=tblCountry.cid
select * from tblEmployee full outer join tblCountry on tblEmployee.Countryid=tblCountry.cid

select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee right join Country on tblEmployee.countryid=Country.cid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
select * from tblEmployee inner join tblCountry on tblEmployee.countryid= tblCountry.cid

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
--3. CROSS JOIN 
select * from tblEmployee cross join tblCountry -- gives total combinations of id
-- like employee table has 7 unique records and Country table has 3 unique records  so total possible condition will be 7*3 = 21


------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee full join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee cross join tblCountry 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN
--4) SELF JOIN -- A self join is a regular join, but the table is joined with itself.

--04 april23

select * from tblEmployee
select * from tblCountry

-------------------------------------------------------------
--4) SELF JOIN -- A self join is a regular join, but the table is joined with itself.

create table tblCustomers
(
CustomerID	 int primary key identity,
CustomerName varchar(100),	
ContactName	varchar(100),
Address	varchar(100),
City	varchar(100),
PostalCode	int,
Country varchar(100),
status int default 0,
inserted_date date
)

insert into tblCustomers(CustomerName,ContactName,Address,City,PostalCode,Country,inserted_date) values('Fahad','Ali','223, Goln Sultanpur','Sultanpur',228119,'India',GETDATE())
insert into tblCustomers(CustomerName,ContactName,Address,City,PostalCode,Country,inserted_date) values('Ali Hamza','Hamza sid','Vill and Post Kanpur','Kanpur',229817,'India',GETDATE())
insert into tblCustomers(CustomerName,ContactName,Address,City,PostalCode,Country,inserted_date) values('Ali abdul','Abdul sid','123, Sultanpur','Sultanpur',229988,'India',GETDATE())
insert into tblCustomers(CustomerName,ContactName,Address,City,PostalCode,Country,inserted_date) values('Fatima','Fatima sid','Alex Lucknow','Agra',768798,'India',GETDATE())
insert into tblCustomers(CustomerName,ContactName,Address,City,PostalCode,Country,inserted_date) values('Wamique','Wamique shaeikh','POst Agra','Lucknow',989809,'India',GETDATE())

truncate table tblCustomers
drop table tblCustomers

select * from tblCustomers


SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM tblCustomers A, tblCustomers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

select * from tblCustomers
--11 jan 21 join 3rd -- sir
---------------------------------------------------------------------------------------------------------











