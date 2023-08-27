create database DBDROPRADIO
use DBDROPRADIO

create table Library
(
lid int primary key identity,
name varchar(100),
age int,
gender varchar(100),
subject int,
department int,
rollno int
)

alter proc  sp_Library_Insert

@name varchar(100),
@age int,
@gender varchar(100),
@subject int,
@department int,
@rollno int
as
begin
insert into Library(name,age,gender,subject,department,rollno)values(@name,@age,@gender,@subject,@department,@rollno)
end



alter proc  sp_Library_Get
as
begin
select * from Library 
join tblsubject on Library.subject= tblsubject.sid
join tbldepartment on Library.department= tbldepartment.did
end

create proc  sp_Library_delete
@did int
as
begin
delete  from Library where lid = @did
end


create proc  sp_Library_edit
@eid int
as
begin
select * from  Library where lid = @eid
end



alter proc  sp_Library_Update
@uid int,
@name varchar(100),
@age int,
@gender varchar(100),
@subject int,
@department int,
@rollno int
as
begin
update Library set name=@name,age=@age,gender=@gender,subject=@subject,department=@department,rollno=@rollno where lid =@uid
end



create table tblsubject
(
sid int primary key identity,
sname varchar(100)
)

insert into tblsubject(sname)values('Maths')
insert into tblsubject(sname)values('Data Structure')
insert into tblsubject(sname)values('DAA')
insert into tblsubject(sname)values('DBMS')
insert into tblsubject(sname)values('COA')
insert into tblsubject(sname)values('Networking')
insert into tblsubject(sname)values('DSTL')
insert into tblsubject(sname)values('Chemistry')
insert into tblsubject(sname)values('Zoology')
insert into tblsubject(sname)values('Botany')
insert into tblsubject(sname)values('Accounting')
insert into tblsubject(sname)values('Business')
insert into tblsubject(sname)values('Statistics')
insert into tblsubject(sname)values('Anatomy')

create proc sp_tblsubject_get
as
begin
select * from tblsubject
end



create table tbldepartment
(
did int primary key identity,
dname varchar(100)
)

insert into tbldepartment(dname)values('B.Tech')
insert into tbldepartment(dname)values('M.Tech')
insert into tbldepartment(dname)values('BBA')
insert into tbldepartment(dname)values('BUMS')
insert into tbldepartment(dname)values('MBA')
insert into tbldepartment(dname)values('B.Com')
insert into tbldepartment(dname)values('BAMS')
insert into tbldepartment(dname)values('MBBS')

create proc sp_tbldepartment_get
as
begin
select * from tbldepartment
end


