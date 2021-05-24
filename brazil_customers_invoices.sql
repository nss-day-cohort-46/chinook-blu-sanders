select
customer.CustomerId,
customer.FirstName || " " || LastName as FullName,
customer.Country,
Invoice.InvoiceId,
invoice.BillingCountry,
Invoice.InvoiceDate
from customer
join Invoice on customer.CustomerId = invoice.CustomerId
where country is "Brazil"