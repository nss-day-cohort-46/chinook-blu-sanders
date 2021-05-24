select
customer.FirstName || " " || customer.LastName as "Full Name",
Employee.LastName,
Employee.FirstName,
sum(Invoice.Total) as "Total Invoices"
from Employee
join Customer on Customer.SupportRepId = employee.EmployeeId
join Invoice on invoice.CustomerId = customer.CustomerId
group by invoice.CustomerId
order by customer.LastName