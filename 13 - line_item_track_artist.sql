select
    
    Artist.Name as artistName,
    track.Name as trackName,
    album.Title,
    invoiceLine.*

from InvoiceLine

join Track on InvoiceLine.TrackId = Track.TrackId
join album on Track.AlbumId = album.AlbumId
join artist on Artist.ArtistId = Album.ArtistId