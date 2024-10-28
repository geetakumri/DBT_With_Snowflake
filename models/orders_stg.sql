SELECT 
    OrderID
    , OrderDate
    , CUSTOMERID
    , EmployeeId
    , StoreID
    , Status AS StatusCD
    , CASE WHEN Status ='01' THEN 'In Progress'
           WHEN Status ='02' THEN 'Completed'
           WHEN Status ='03' THEN 'Cancelled'
    END AS StatusDesc
    , Updated_at
FROM L3_CONSUMPTION.ORDERS
