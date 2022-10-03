select * from tblEmployee

select * from tblEmployee where EmployeeNumber = 132
delete from tblEmployee where  EmployeeNumber = 132 and Department = 'HR'

--adding primary key constraint--

alter table tblEmployee
add constraint PK_tblEmployee primary key ([EmployeeNumber])

--Commands completed successfully.

--Adding primary key constraints when creating a table and using IDENTITY(Auto adding of numbers)

create table tblEmployee2 (
		EmployeeNumber int,
		constraint pk_tblEmployee2 primary key (EmployeeNumber)  )


create table tblEmployee3 (
		EmployeeNumber int,
		constraint pk_tblEmployee2 primary key (EmployeeNumber) identity(1,1) )   --This will not work
		Msg 156, Level 15, State 1, Line 22
--Incorrect syntax near the keyword 'identity'.

create table tblEmployee3 (
		EmployeeNumber int constraint pk_tblEmployee3 primary key (EmployeeNumber) identity(1,1),
		Ename nvarchar(20)
		 ) -- this will work > Note the difference x	


--Practicing Identity

insert into tblEmployee3 values (1,'Kola')
--An explicit value for the identity column in table 'tblEmployee3' can only be specified 
--when a column list is used and IDENTITY_INSERT is ON.

--Lets set IDENTITY_INSERT TO ON . this will allow us to explicit insert value into the primary key which contains identity

set IDENTITY_INSERT tblEmployee3 ON

--Lets try it again 

insert into tblEmployee3 (EmployeeNumber, Ename) values (1,'Kola')


--(1 row affected)

--Completion time: 2022-10-03T09:26:53.2412674+01:00

select * from tblEmployee3

select @@IDENTITY

select SCOPE_IDENTITY() --This can be used int functions and procedures

select IDENT_CURRENT('tblEmployee3') --This is used to get the exact identity for a specific table
