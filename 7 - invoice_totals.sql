select

invoice.InvoiceId,
invoice.Total,
Invoice.BillingCountry,
Employee.FirstName || " " || Employee.LastName as "Emp Name",
customer.FirstName || " " || customer.LastName as "Cust Name"

from Invoice

join Employee on Customer.SupportRepId = employee.EmployeeId
join customer on invoice.CustomerId = customer.CustomerId

