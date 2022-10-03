select * from tblEmployee
select tblEmployee.EmployeeNumber, tblEmployee.EmployeeLastName, tblEmployee.Department,  sum(Amount) from tblTransaction
left join tblEmployee on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
where tblEmployee.EmployeeNumber = 126
group by tblEmployee.EmployeeNumber, tblEmployee.EmployeeLastName, tblEmployee.Department,tblTransaction.Amount, tblTransaction.DateOfTrasaction

select * from tblDepartment
select *  from tblTransaction

select tblDepartment.DepartmentHead,  sum(tblTransaction.Amount), count(tblDepartment.Department)
from tblDepartment 
left join tblEmployee on tblDepartment.Department = tblEmployee.Department
left join tblTransaction on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
group by tblDepartment.DepartmentHead

insert into tblDepartment values('Accounts', 'James')
alter table tblDepartment
alter column DepartmentHead nvarchar(20)

select * 
from tblDepartment 
left join tblTransaction on tblDepartment.Department = tblTransaction.Amount



select E.EmployeeNumber as ENumber, E.EmployeeLastName , E.EmployeeFirstName, T.EmployeeNumber, sum(T.Amount)
from tblEmployee as E  
	 left join tblTransaction as T on E.EmployeeNumber = T.EmployeeNumber
group by
		E.EmployeeNumber , E.EmployeeLastName , E.EmployeeFirstName, T.EmployeeNumber
order by
		ENumber , E.EmployeeLastName , E.EmployeeFirstName, T.EmployeeNumber

		
