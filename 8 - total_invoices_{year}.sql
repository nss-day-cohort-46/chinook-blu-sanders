select
count(*)
from invoice
where
strftime("%Y", InvoiceDate) = "2009"
OR
strftime("%Y", InvoiceDate) = "2011"
