SELECT
    OrderItemID
    , OrderID
    , ProductID
    , QUANTITY
    , UNITPRICE
    , Quantity * UnitPrice AS TotalPrice
    , Updated_at

FROM 
L3_CONSUMPTION.ORDERITEMS