create database JOIN_04122023
use JOIN_04122023
-- lecture No 22

create table Employee
(
id int primary key identity,
name varchar(50) not null,
salary int not null,
countryid int
) 
drop table Employee
insert into Employee(name,salary,countryid)values('alok',500,3)
insert into Employee(name,salary,countryid)values('',700,1)
insert into Employee(name,salary,countryid)values('',900,1)
insert into Employee(name,salary,countryid)values('Sweta',null,2)-- we can't inser null keyword in column in anyway
insert into Employee(name,salary,countryid)values('Hitesh',null,2)
insert into Employee(name,salary,countryid)values('Deepak',500,3)

insert into Employee(name,salary,countryid)values('alok',500,3)
insert into Employee(name,salary,countryid)values('ali',700,1)
insert into Employee(name,salary,countryid)values('hamza',900,1)
insert into Employee(name,salary,countryid)values('Sweta',890,2)
insert into Employee(name,salary,countryid)values('Hitesh',200,2)
insert into Employee(name,salary,countryid)values('Deepak',500,3)

select * from Employee

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
select * from Employee
select * from Country

select * from Employee join Country on Employee.countryid=Country.cid
select * from Employee join Country on  Country.cid = Employee.countryid

select * from Country join Employee  on Employee.countryid=Country.cid -- jis table ko pahle rakhenge usi table ka record pahle aaega
select * from Country join Employee  on  Country.cid = Employee.countryid

select * from Employee inner join Country on Country.cid = Employee.countryid
select * from Employee inner join Country on  Employee.countryid =Country.cid 
--------Both above join query are same. means give same output
------------------------------------------------------------------------------------------
select * from Country join Employee on Employee.countryid = country.cid -- it gives country table on left
select * from Country join Employee on Country.cid = Employee.countryid
select * from Country inner join Employee on Employee.countryid = country.cid -- it gives country table on left
select * from Country inner join Employee on Country.cid = Employee.countryid  
--------Both above join query are same. means give same output
--NOTE :- If we change type of Countryid column then no affect happen in join.
--------------------------------------------------------------------------------------------------


select id,name,salary,cname from Employee join Country on Employee.countryid=Country.cid
-- this query gives selected column from Joined table....
---------------------------------------------------------------------------------------
select id,name,salary from Employee
select id,name from Employee -- this query gives selected column
--------------------------------------------------------------

select id,name,salary,cname from Employee join Country on Employee.countryid=Country.cid
select Employee.id,Employee.name,Employee.salary,Country.cname from Employee join Country on Employee.countryid=Country.cid
-----Both above query gives same output but not sure what is reason behind that.........

select id,name,salary,cname,* from Employee join Country on Employee.countryid=Country.cid where salary <> 500

---ALIASING------

---THIS CONCEPT CALLLED ALIASING IN DATABSE WHICH IS MOST MOST IMPORTANT PART OF DB.
select Employee.id,Employee.name as EmployeeName,Employee.salary,Country.cname as CountryName from Employee join Country on Employee.countryid=Country.cid

select Employee.id,Employee.name as EmployeeName from Employee
select Employee.id,Employee.name as EmployeeName from Employee join Country on Employee.countryid=Country.cid

select Employee.id,Employee.name as EmployeeID,EmployeeName from Employee -- this is not possile ... Why..?
select Employee.id,Employee.name as EmployeeID from Employee -- this is not possile ... Why..?

select Employee.id,Employee.name from Employee

select Employee.id as EmployeeID from Employee

select Employee.id as EmployeeID, Employee.name as EmployeeName from Employee 

select Employee.id as EmployeeID, Employee.name as EmployeeName, Employee.salary as EmployeeSalary from Employee

select Employee.id as EmployeeID, Employee.name as EmployeeName, Employee.salary as EmployeeSalary, Country.cid as CountryID, Country.cname as CountryName from Employee join Country on Employee.Countryid= Country.cid
select id as EmpId,name EmpName,salary ESalary from Employee 
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
-- like employee table has 6 unique records and Country table has 3 unique records  so total possible condition will be 6*3 = 18
select * from Country

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