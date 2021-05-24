select

employee.FirstName, Employee.LastName, count(customer.CustomerId) as CustCount

from Employee

left join customer on Customer.SupportRepId = employee.EmployeeId

group by EmployeeId