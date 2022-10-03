alter table [dbo].[tblTransaction]
add constraint CKtblTransaction_amount check (Amount >-1000 and Amount <1000)

INSERT INTO tblTransaction (Amount) VALUES (1110)

--RESULT
--Msg 515, Level 16, State 2, Line 4
--Cannot insert the value NULL into column 'EmployeeNumber', table 'My DB.dbo.tblTransaction'; column does not allow nulls. INSERT fails.
--The statement has been terminated.

--Completion time: 2022-09-28T07:59:29.6277286+01:00

INSERT INTO tblTransaction (Amount) VALUES (-1110)

--RESULT
--Cannot insert the value NULL into column 'EmployeeNumber', table 'My DB.dbo.tblTransaction'; column does not allow nulls. INSERT fails.
--The statement has been terminated.

--Completion time: 2022-09-28T08:01:02.5106818+01:00

INSERT INTO tblTransaction VALUES (-110, '2014-01-01', 1)

--RESULT : COMPLETED SUCCESSFULLY
----(1 row affected)

----Completion time: 2022-09-28T08:02:45.5846581+01:00


--DATE CONSTRAINT 

ALTER TABLE tblEmployee
add constraint cktblTransaction_DOB check (DateOfBirth between '1900-01-01' and getdate())

--if you dont want it to check the previous record in the table use this 
ALTER TABLE tblEmployee with nocheck
add constraint cktblTransaction_DOB check (DateOfBirth between '1900-01-01' and getdate())

