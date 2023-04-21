use AdventureWorks2012


/* 
ex 1 
*/

select p.Name as ProductName, c.name as CategoryName
from Production.Product p
join Production.ProductSubCategory s
on p.ProductSubcategoryID=s.ProductSubcategoryID
join Production.ProductCategory c
on c.ProductCategoryID=s.ProductCategoryID

/* 
ex 2 
*/

select c.CustomerID, o.SalesOrderID, d.SalesOrderDetailID,
*
from Sales.SalesOrderHeader o
join Sales.Customer c
on c.CustomerID=o.CustomerID
join Sales.SalesOrderDetail d
on o.SalesOrderID=d.SalesOrderID


/* 
ex 3 
*/

select  cat.name as CategoryName, sub.name SubcategoryName
from  Production.ProductCategory cat
cross join Production.ProductSubcategory sub