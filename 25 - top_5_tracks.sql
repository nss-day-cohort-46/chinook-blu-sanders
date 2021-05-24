-- top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.select

count(InvoiceLine.TrackId) as trackCount

FROM InvoiceLine

group by TrackId
order by trackCount desc 