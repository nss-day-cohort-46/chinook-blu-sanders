SELECT

BillingCountry, '$'|| max(TotalSales)

FROM

(
	SELECT BillingCountry, SUM(Total) AS TotalSales
	FROM Invoice
	JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
	GROUP BY BillingCountry
	ORDER BY TotalSales DESC
)





-- WITH TotalSales AS (
--     SELECT SUM(Total) Total,
--         BillingCountry Country
--     FROM Invoice
--     GROUP BY BillingCountry
-- )
-- SELECT '$' || MAX(Total) "Grand Total",
--     Country
-- FROM TotalSales