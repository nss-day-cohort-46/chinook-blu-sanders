select
PlaylistTrack.playlistId,
Playlist.name,
count(*) as "# of Tracks" from PlaylistTrack
join Playlist on Playlist.PlaylistId = PlaylistTrack.PlaylistId
group by PlaylistTrack.PlaylistId