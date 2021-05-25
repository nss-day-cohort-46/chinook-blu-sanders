select

    EmpName,
    max(totalSales)

from 

    (

        select

        sum(invoice.Total) as totalSales,
        Employee.FirstName || " " || Employee.LastName as "EmpName"

        from Employee

        left join Customer on Customer.SupportRepId = employee.EmployeeId
        left join invoice on invoice.CustomerId = customer.CustomerId

        where invoice.InvoiceDate like "%2009%"

        group by employee.EmployeeId 
        order by totalSales desc


    )