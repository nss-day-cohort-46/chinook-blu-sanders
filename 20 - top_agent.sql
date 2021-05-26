select
    
	Agent,
    Max(TotalSales) as MaxSales

FROM
(
    SELECT
        e.FirstName || " " || e.LastName as Agent,
        sum(i.total) as TotalSales

FROM employee e

JOIN Customer c on c.supportrepid = e.EmployeeId
JOIN invoice i on i.customerid = c.customerid
)
