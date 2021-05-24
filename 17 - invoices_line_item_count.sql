select Invoice.*, InvoiceLine.*
from Invoice
join InvoiceLine on invoice.InvoiceId = InvoiceLine.InvoiceId
