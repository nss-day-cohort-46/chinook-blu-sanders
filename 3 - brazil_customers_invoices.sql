select distinct

    customer.CustomerId,
    customer.FirstName || " " || LastName as FullName,
    customer.Country,
    Invoice.InvoiceId,
    invoice.BillingCountry,
    Invoice.InvoiceDate

from invoice

join customer on customer.CustomerId = invoice.CustomerId

where country like "%Brazil%"