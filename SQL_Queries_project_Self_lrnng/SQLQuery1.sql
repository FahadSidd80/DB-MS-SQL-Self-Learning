create database DBASPDROPRADIO
use DBASPDROPRADIO


create table student
(
id int primary key identity,
name varchar(100),
bloodgroup int,
course int
)

create proc sp_student_insert
@name varchar(100),
@bloodgroup int,
@course int
as
begin
		insert into student(name,bloodgroup,course)values(@name,@bloodgroup,@course)
end


alter proc sp_student_get
as
begin
	
select * from student 
join tbl_bloodgroup on student.bloodgroup = tbl_bloodgroup.bid
join tbl_course on student.course = tbl_course.cid
end

create table tbl_bloodgroup
(
bid int primary key identity,
bname varchar(100),
)

insert into tbl_bloodgroup(bname) values('A+')
insert into tbl_bloodgroup(bname) values('B+')
insert into tbl_bloodgroup(bname) values('O+')
insert into tbl_bloodgroup(bname) values('AB+')
insert into tbl_bloodgroup(bname) values('A-')
insert into tbl_bloodgroup(bname) values('B-')
insert into tbl_bloodgroup(bname) values('O-')
insert into tbl_bloodgroup(bname) values('AB-')

select * from Tbl_bloodgroup


create proc sp_Tbl_bloodgroup_get
as
begin
		select * from Tbl_bloodgroup
end

create table tbl_Course
(
cid int primary key identity,
cname varchar(100),
)

insert into tbl_Course(cname) values('MBA')
insert into tbl_Course(cname) values('BBA')
insert into tbl_Course(cname) values('B.Tech')
insert into tbl_Course(cname) values('M.Tech')
insert into tbl_Course(cname) values('B.Com')
insert into tbl_Course(cname) values('M.Com')
insert into tbl_Course(cname) values('MBBS')
insert into tbl_Course(cname) values('BDS')
insert into tbl_Course(cname) values('BUMS')
insert into tbl_Course(cname) values('BAMS')
insert into tbl_Course(cname) values('CA')
insert into tbl_Course(cname) values('LLB')

select * from tbl_Course

create proc sp_tbl_Course_get
as
begin
	select * from tbl_Course
end

select * from student
select * from Tbl_bloodgroup
select * from tbl_course

select * from student 
join tbl_bloodgroup on student.bloodgroup = tbl_bloodgroup.bid
join tbl_course on student.course = tbl_course.cid