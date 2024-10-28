SELECT
    CUSTOMERID
    , FIRSTNAME
    , LASTNAME
    , Email
    , Phone
    , Address
    , City
    , State
    , ZipCode
    , Updated_at
    , CONCAT(FirstName, ' ', LastName) AS CUSTOMERNAME
FROM
    L3_CONSUMPTION.CUSTOMERS