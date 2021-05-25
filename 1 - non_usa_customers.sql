select

    CustomerId,
    FirstName || " " || LastName as FullName,
    Country

from customer

where country != "USA"

