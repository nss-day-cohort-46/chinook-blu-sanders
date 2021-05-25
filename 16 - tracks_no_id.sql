select

    track.name,
    track.composer,
    track.Milliseconds,
    track.bytes,
    track.UnitPrice,
    album.Title,
    MediaType.Name as mediaType,
    Genre.Name as Genre

from Track

join Album on
    Album.AlbumId = track.AlbumId

join MediaType on
    MediaType.MediaTypeId = Track.MediaTypeId

join Genre on
	Genre.GenreId = Track.GenreId

