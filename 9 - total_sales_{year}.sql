select

strftime("%Y", InvoiceDate) as iYear,
sum(total)

from invoice
where

iYear = "2009"
OR
iYear = "2011"

group by iYear