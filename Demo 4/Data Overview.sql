use AdventureWorks2019

select *
from [Sales].[SalesOrderHeader]

select count(SalesOrderNumber), count(distinct(SalesOrderID))
from sales.SalesOrderHeader

select count(SalesOrderNumber), status
from sales.SalesOrderHeader
group by status 


select count(sh.SalesOrderID), pc.ProductCategoryID
from sales.SalesOrderHeader sh
left join sales.SalesOrderDetail sd
	on sh.SalesOrderID = sd.SalesOrderID
left join Production.Product p
	on p.ProductID = sd.ProductID
left join Production.ProductSubcategory psc
	on p.ProductSubcategoryID = psc.ProductSubcategoryID
left join Production.ProductCategory pc
	on psc.ProductCategoryID = pc.ProductCategoryID
group by pc.ProductCategoryID

select count(status), status 
from sales.SalesOrderHeader
group by status 

-- 
select *
from sales.SalesOrderDetail

select count(SalesOrderDetailID), count(distinct SalesOrderDetailID)
from sales.SalesOrderDetail

select count(SalesOrderID), count(distinct SalesOrderID)
from sales.SalesOrderDetail

-- 
select * 
from [Production].[Product]

select *
from [Sales].[SalesTerritory]

select *
from [Sales].[SalesReason]

select *
from [Sales].[Store]

-- status from Functions ==> Scalar ==> GetSalesOrderStutes