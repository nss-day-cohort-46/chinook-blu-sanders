select 

max(sumTotal)

from(


select

BillingCountry,
sum(total) as sumTotal

from Invoice

join InvoiceLine on invoice.InvoiceId = InvoiceLine.InvoiceId

group by BillingCountry
order by sumTotal desc 

)