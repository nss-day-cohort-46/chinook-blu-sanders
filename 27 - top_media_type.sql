-- top_media_type.sql: Provide a query that shows the most purchased Media Type

select typeName, max(totalTracks) 

FROM

(

	select

		MediaType.name as typeName,
		count(*) as totalTracks

	from invoiceLine

	join track on track.TrackId = InvoiceLine.TrackId 
	join MediaType on MediaType.MediaTypeId = track.MediaTypeId

	group by MediaType.Name

	order by totalTracks DESC

)


-- With TrackCounts AS (
--     Select COUNT(InvoiceLineId) TotalSales,
--         TrackId
--     FROM InvoiceLine
--     GROUP BY TrackId
-- ),
-- MediaTypeSales AS (
--     SELECT SUM(tc.TotalSales) TotalSales,
--         mt.Name Name
--     FROM TrackCounts tc
--         JOIN Track t on t.TrackId = tc.TrackId
--         JOIN MediaType mt ON mt.MediaTypeid = t.MediaTypeId
--     GROUP BY mt.Name
-- )
-- SELECT MAX(TotalSales) TotalSales, Name
-- FROM MediaTypeSales