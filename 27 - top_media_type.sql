-- top_media_type.sql: Provide a query that shows the most purchased Media Type

select typeName, max(totalTracks) 

FROM (

select

	MediaType.name as typeName,
	count(*) as totalTracks

from invoiceLine

join track on track.TrackId = InvoiceLine.TrackId 
join MediaType on MediaType.MediaTypeId = track.MediaTypeId

group by MediaType.Name

order by totalTracks DESC

)