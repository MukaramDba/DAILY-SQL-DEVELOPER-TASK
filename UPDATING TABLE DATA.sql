select * from tblEmployee where EmployeeNumber = 194
select * from tblTransaction where EmployeeNumber = 3
select * from tblTransaction where EmployeeNumber = 194


begin transaction

update tblTransaction 
set EmployeeNumber = 194
output inserted.*, deleted.*
where EmployeeNumber =3

rollback transaction