select

BillingCountry,
sum(total)

from Invoice

join InvoiceLine on invoice.InvoiceId = InvoiceLine.InvoiceId

group by BillingCountry