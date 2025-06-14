

select 
	count(OrderDetailID) Count_all, 
	count(distinct OrderDetailID) suborders, 
	count(distinct OrderID) main_orders
from Sales$


