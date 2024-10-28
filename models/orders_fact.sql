SELECT 
      O.OrderID
    , O.OrderDate
    , O.CUSTOMERID
    , O.EmployeeId
    , O.StoreID
    , O.StatusCD
    , O.StatusDesc
    , O.Updated_at
    , COUNT(DISTINCT O.OrderID) AS ORDERCOUNT
    , SUM(OI.TotalPrice) AS REVENUE
FROM 
    {{ ref('orders_stg')}} O
JOIN 
    {{ ref('orderitems_stg')}} OI ON O.OrderID = OI.OrderID
GROUP BY
    O.OrderID
    , O.OrderDate
    , O.CUSTOMERID
    , O.EmployeeId
    , O.StoreID
    , O.StatusCD
    , O.StatusDesc
    , O.Updated_at