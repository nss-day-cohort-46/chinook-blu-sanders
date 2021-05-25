select
    Invoice.*, count(InvoiceLine.InvoiceId)

from
    Invoice

join InvoiceLine
    on invoice.InvoiceId = InvoiceLine.InvoiceId

group by
    invoice.InvoiceId

