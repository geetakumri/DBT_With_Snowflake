
{{config(materialized='table')}}
WITH CUSTOMERORDERS AS (
    SELECT 
    C.CUSTOMERID
    ,CONCAT(C.FIRSTNAME, '', C.LASTNAME) AS CUSTOMERNAME
    , COUNT(O.ORDERID) AS NO_OF_ORDERS
    FROM L3_CONSUMPTION.CUSTOMERS C
    JOIN L3_CONSUMPTION.ORDERS O
    ON C.CUSTOMERID = O.CUSTOMERID
    GROUP BY C.CUSTOMERID, CUSTOMERNAME
    ORDER BY NO_OF_ORDERS DESC
)

SELECT CUSTOMERID, CUSTOMERNAME, NO_OF_ORDERS
FROM CUSTOMERORDERS