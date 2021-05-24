select invoiceLine.*, track.Name
from InvoiceLine
join Track on InvoiceLine.TrackId = Track.TrackId
