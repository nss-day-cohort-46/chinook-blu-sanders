select

	track.Name as trackName,
	count(*) as totalTracks

from InvoiceLine

join track on track.TrackId = InvoiceLine.TrackId

group by InvoiceLine.TrackId
order by totalTracks desc
limit 5

