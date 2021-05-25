select

    employee.FirstName || " " || employee.LastName as "Full Name",
    Invoice.*

from Employee

join Customer on Customer.SupportRepId = employee.EmployeeId
join Invoice on invoice.CustomerId = customer.CustomerId

group by invoice.CustomerId
order by employee.LastName