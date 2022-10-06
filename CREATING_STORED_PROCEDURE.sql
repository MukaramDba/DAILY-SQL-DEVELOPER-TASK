if exists(select * from sys.procedures where name='SP_tblEmployee')
drop proc SP_tblEmployee
go
CREATE proc SP_tblEmployee as
begin
	Select * from tblEmployee
	where EmployeeNumber =123

end
go

exec SP_tblEmployee 123

select * from VW_tblEmployee

select * from sys.all_columns
go
--TASK TO DO (Create a procudere that will retrieve any employee number , First name and last name )

if exists(select * from sys.procedures where name = 'SP_EmployeeDetails')
drop proc SP_EmployeeDetails
go
create proc SP_EmployeeDetails(@EmployeeNumber int) as
	begin
		select EmployeeNumber, EmployeeFirstName, EmployeeLastName 
		from tblEmployee 
		where EmployeeNumber = @EmployeeNumber
	end
	select 'This value is not available'
go

exec SP_EmployeeDetails 223
go
--TASK TO DO (Create a procedure to that will return different data base on different employeeNumbers )

if exists (select * from sys.procedures where name = 'SP_tblEmployee_diff')
drop proc SP_tblEmployee_diff
go
create proc SP_tblEmployee_diff(@EmployeeNumber int) as
	begin
		if exists(Select * from tblEmployee where EmployeeNumber = @EmployeeNumber)
		begin
			if @EmployeeNumber = 123
			begin
				Select EmployeeNumber, EmployeeLastName, EmployeeFirstName from tblEmployee
				where EmployeeNumber = (@EmployeeNumber)
			end
			if @EmployeeNumber >300
			begin
				select @EmployeeNumber
			end
			else
			begin
				select EmployeeNumber, EmployeeLastName, EmployeeFirstName, EmployeeGovernmentID from tblEmployee
				where EmployeeNumber = @EmployeeNumber
			end
		end	
		else 
			select ''
	end

	exec SP_tblEmployee_diff 2
	execute SP_tblEmployee_diff 200