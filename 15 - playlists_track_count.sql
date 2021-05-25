select
    Playlist.name as "Play List",
    count(*) as "# of Tracks"

from Playlist

join PlaylistTrack
    on Playlist.PlaylistId = PlaylistTrack.PlaylistId

group by PlaylistTrack.PlaylistId
order by Playlist.name
