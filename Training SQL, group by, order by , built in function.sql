
insert into  [dbo].[tblEmployee]
values	(131	Jossef	H	Wright	UQ801730E	29/03/1986	Customer Relations)

alter table [dbo].[tblEmployee]
alter column Department varchar(20)
go
select * from [dbo].[tblEmployee]
where [EmployeeLastName] like '%w'

select year([DateOfBirth]) as Year,count(*) as NumberOfBorn from [dbo].[tblEmployee]

group by year(DateOfBirth)
order by Year

select top 5 LEFT([EmployeeLastName], 1) as LastName, count(*) as counting from [dbo].[tblEmployee]
group by LEFT([EmployeeLastName], 1)
order by counting desc---]LEFT([EmployeeLastName], 1)

Update tblEmployee
Set EmployeeMiddleName = NULL
Where EmployeeMiddleName = ''







select DATENAME(MONTH,[DateOfBirth]) as MonthName, COUNT(*) NumberOfEmployee ,
count([EmployeeMiddleName]) as employeeMiddleName,
count(*)-COUNT([EmployeeMiddleName]) as NoMiddleName,
format(min([DateOfBirth]), 'dd-mm-yy')
from [dbo].[tblEmployee]
group by DATENAME(MONTH,[DateOfBirth]), MONTH([DateOfBirth])
order by  MONTH([DateOfBirth])