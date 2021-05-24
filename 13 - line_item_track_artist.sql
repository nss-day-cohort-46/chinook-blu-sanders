select invoiceLine.*, track.Name, album.Title, Artist.Name
from InvoiceLine
join Track on InvoiceLine.TrackId = Track.TrackId
join album on Track.AlbumId = album.AlbumId
join artist on Artist.ArtistId = Album.ArtistId