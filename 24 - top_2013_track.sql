-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.


select

track.Name as trackName,
count(invoice.invoiceId) as totalTracks

from Invoice

join InvoiceLine on invoice.InvoiceId = InvoiceLine.InvoiceId
join track on track.TrackId = InvoiceLine.TrackId

where InvoiceDate like "%2013%"