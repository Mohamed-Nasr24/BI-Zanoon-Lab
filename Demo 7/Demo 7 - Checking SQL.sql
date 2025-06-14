select 
	sum(SubTotal), 
	sum(TaxAmt),
	sum(Freight),
	sum(TotalDue)
from [Sales].[SalesOrderHeader]


select count(distinct SalesOrderID)
from [Sales].[SalesOrderHeader]


select count(distinct SalesOrderDetailID)
from [Sales].[SalesOrderDetail]
