select invoiceId, count(*)
from InvoiceLine
group by InvoiceId