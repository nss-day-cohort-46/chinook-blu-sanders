select

    invoice.InvoiceId,
    customer.FirstName || " " || customer.LastName as "CustName",
    invoice.Total,
    Invoice.BillingCountry,
    Employee.FirstName || " " || Employee.LastName as "EmpName"

from Invoice

join Employee on
    Customer.SupportRepId = employee.EmployeeId

join customer on
    invoice.CustomerId = customer.CustomerId

order by CustName

