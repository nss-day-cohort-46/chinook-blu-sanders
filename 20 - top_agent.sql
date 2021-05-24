select

max(invoice.Total),
Employee.FirstName || " " || Employee.LastName as "EmpName"

from Invoice

join Employee on Customer.SupportRepId = employee.EmployeeId
join customer on invoice.CustomerId = customer.CustomerId