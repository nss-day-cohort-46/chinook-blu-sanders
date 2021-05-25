select
    track.Name,
    invoiceLine.*

from InvoiceLine

join Track on InvoiceLine.TrackId = Track.TrackId
