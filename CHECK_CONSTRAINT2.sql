Select * from tblTransaction

Alter table tblTransaction 
add constraint CKTransactions check (Amount >- 1000 and amount < 1000)


Insert into tblTransaction values (1010, '2020-04-02', 2)

--Msg 547, Level 16, State 0, Line 7
--The INSERT statement conflicted with the CHECK constraint "CKtblTransaction_amount". 
--The conflict occurred in database "My DB", table "dbo.tblTransaction", column 'Amount'.
--The statement has been terminated.


Insert into tblTransaction values (-1010, '2020-04-02', 2)

--Msg 547, Level 16, State 0, Line 7
--The INSERT statement conflicted with the CHECK constraint "CKtblTransaction_amount". 
--The conflict occurred in database "My DB", table "dbo.tblTransaction", column 'Amount'.
--The statement has been terminated.

Insert into tblTransaction values (-110,1999/3/3, 4)

--Completed Successfully
--(1 row affected)


alter table tblEmployee
add constraint ckMiddleName check ([EmployeeMiddleName] in ('Sola', 'Bola', 'Razaq'))

create table test3 (Fname varchar(20))

insert into test3 values('Bola')
delete test3 where Fname = 'Kola'

alter table test3 
add constraint tc check (Fname in ('Bola', 'Tola'))

select * from test3

alter table test3
add constraint 

declare @replace varchar(20), @EmployeeMiddleName varchar(20)
set @EmployeeMiddleName = 'Adex'

Select @replace = replace(@EmployeeMiddleName, 'x', 'niran') 

Select @replace

select tblEmployee.EmployeeLastName from tblEmployee
where tblEmployee.EmployeeLastName like '%bell%'

