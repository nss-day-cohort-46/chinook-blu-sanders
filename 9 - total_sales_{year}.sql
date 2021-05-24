select

strftime("%Y", InvoiceDate) as iYear,
sum(total)

from invoice
where

strftime("%Y", InvoiceDate) = "2009"
OR
strftime("%Y", InvoiceDate) = "2011"

group by iYear