select

    Employee.FirstName || " " || Employee.LastName as "EmpName",
    sum(invoice.Total) as totalSales

from Employee

left join Customer on
    Customer.SupportRepId = employee.EmployeeId

left join invoice on
    invoice.CustomerId = customer.CustomerId

group by Employee.EmployeeId
order by totalSales