select

    sum(invoice.Total) as totalSales,
    Employee.FirstName || " " || Employee.LastName as "EmpName"

from Employee

left join Customer on
    Customer.SupportRepId = employee.EmployeeId

left join invoice on
    invoice.CustomerId = customer.CustomerId

group by EmpName
order by totalSales