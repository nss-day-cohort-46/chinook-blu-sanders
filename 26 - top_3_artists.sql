-- Provide a query that shows the top 3 best selling artists.

select

	artist.name,
	count(*) as totalTracks

from invoiceLine

join track on track.TrackId = InvoiceLine.TrackId 
join album on album.albumId = track.AlbumId
join artist on artist.ArtistId = album.ArtistId

group by artist.ArtistId

order by totalTracks DESC
limit 3

