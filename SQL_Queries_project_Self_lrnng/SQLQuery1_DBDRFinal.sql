Create database DBDRFinal
use DBDRFinal

create table Employee
(
empid int primary key identity,
name varchar(100),
age int,
gender varchar(100),
course int,
country int
)

create proc  sp_Employee_Insert
@name varchar(100),
@age int,
@gender varchar(100),
@course int,
@country int
as
 begin
 insert into Employee(name,age,gender,course,country)values(@name,@age,@gender,@course,@Country)
 end


 
alter proc  sp_Employee_Get

as
 begin
 select * from Employee 
 join tblcourse on Employee.course = tblcourse.cid
 join tblcountry on Employee.country = tblcountry.cnid

 end

 Create table tblCourse
 (
 cid int primary key identity,
 cname varchar(100)
 )
 insert into tblcourse(cname)values('MCA')
 insert into tblcourse(cname)values('BCA')
 insert into tblcourse(cname)values('B.tech')
 insert into tblcourse(cname)values('M.Tech')
 insert into tblcourse(cname)values('BBA')
 insert into tblcourse(cname)values('MBA')

Create proc sp_tblCourse_get
as
 begin
 select * from tblCourse
 end



 
 Create table tblcountry
 (
 cnid int primary key identity,
 cnname varchar(100)
 )
 insert into tblcountry(cnname)values('INDIA')
 insert into tblcountry(cnname)values('Pakistan')
 insert into tblcountry(cnname)values('USA')
 insert into tblcountry(cnname)values('Canada')
 insert into tblcountry(cnname)values('Japan')
 insert into tblcountry(cnname)values('Australia')

Create proc sp_tblcountry_get
as
 begin
 select * from tblcountry
 end


 create proc sp_Employee_Delete
 @did int
 as
 begin
 delete from Employee where empid=@did
 end
 

 
 create proc sp_Employee_Edit
 @eid int
 as
 begin
 select * from Employee where empid=@eid
 end
 

  create proc sp_Employee_Update
 @uid int,
 @name varchar(100),
 @age int,
 @gender varchar(100),
 @course int,
 @country int

 as
 begin
 update Employee set name = @name, age=@age,gender=@gender,course=@course, country= @country where empid=@uid
 end
 