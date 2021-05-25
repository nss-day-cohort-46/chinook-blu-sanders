select trackName, max(totalTracks)

from(

    select

    track.Name as trackName,
    count(invoiceLine.InvoiceLineId) as totalTracks

    from InvoiceLine

    join Invoice on
        invoice.InvoiceId = InvoiceLine.InvoiceId
    join track on
        track.TrackId = InvoiceLine.TrackId

    where InvoiceDate like "%2013%"

    group by track.TrackId
	order by track.name
)

