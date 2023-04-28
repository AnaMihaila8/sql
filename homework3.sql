--Problem 1: List all products and their suppliers.
-- Partial result
--ProductID  ProductName              SupplierName
--1          Adjustable Race          Litware, Inc.
--879        All-Purpose Bike Stand   Green Lake Bike Company
--712        AWC Logo Cap             Integrated Sport Products
--2          Bearing Ball          Wood Fitness
--877        Bike Wash - Dissolver    Green Lake Bike Company


select 
p.ProductID, p.Name ProductName, pv.Name SupplierName

from Production.Product p
join Purchasing.ProductVendor v on p.ProductID=v.ProductID 
join Purchasing.Vendor pv on v.BusinessEntityID=pv.BusinessEntityID


-- Problem 2: List all orders placed by a specific customer (e.g., CustomerID = 29825) along with the order details.
-- Partial result
--SalesOrderID    OrderDate    ProductID    ProductName    OrderQty    UnitPrice    LineTotal
--43659    2011-05-31 00:00:00.000    776    Mountain-100 Black, 42    1    2024.994    2024.994000
--43659    2011-05-31 00:00:00.000    777    Mountain-100 Black, 44    3    2024.994    6074.982000
--43659    2011-05-31 00:00:00.000    778    Mountain-100 Black, 48    1    2024.994    2024.994000
--43659    2011-05-31 00:00:00.000    771    Mountain-100 Silver, 38    1    2039.994    2039.994000
--43659    2011-05-31 00:00:00.000    772    Mountain-100 Silver, 42    1    2039.994    2039.994000

select  
sd.SalesOrderID,
sh.OrderDate, pp.ProductID,
pp.Name ProductName, sd.OrderQty,
sd.UnitPrice, sd.LineTotal
from sales.SalesOrderDetail sd

join Production.Product pp on pp.ProductID=sd.ProductID
join Sales.SalesOrderHeader sh on sd.SalesOrderID=sh.SalesOrderID
join Sales.Customer sc on sh.CustomerID=sc.CustomerID
where sc.CustomerID=29825


-- Problem 3: List all customers and their respective sales territories.
-- Partial result
--CustomerID    FirstName    LastName    TerritoryName
--29485    Catherine    Abel    Southwest
--29486    Kim    Abercrombie    Central
--29487    Humberto    Acevedo    Northeast
--29484    Gustavo    Achong    Southeast
--29488    Pilar    Ackerman    Australia

select
sc.CustomerID,
pp.FirstName,
pp.LastName,
st.Name TerritoryName

from Sales.Customer sc
join sales.SalesTerritory st
on sc.TerritoryID=st.TerritoryID
join Person.Person pp
on sc.PersonID=pp.BusinessEntityID

-- Problem 4: List all products with their subcategories and categories.
-- Partial results
-- ProductID    ProductName    SubcategoryName    CategoryName
-- 680    HL Road Frame - Black, 58    Road Frames    Components
-- 706    HL Road Frame - Red, 58    Road Frames    Components
-- 707    Sport-100 Helmet, Red    Helmets    Accessories
-- 708    Sport-100 Helmet, Black    Helmets    Accessories
-- 709    Mountain Bike Socks, M    Socks    Clothing

select
pp.ProductID,
pp.Name ProductName,
ps.Name SubcategoryName,
pc.Name CategoryName

from Production.Product pp
join Production.ProductSubcategory ps
on pp.ProductSubcategoryID=ps.ProductSubcategoryID
join Production.ProductCategory pc
on pc.ProductCategoryID=ps.ProductCategoryID


-- Problem 5: List all vendors and their respective purchase order approvers.
-- Partial result
-- BusinessEntityID    VendorName    FirstName    LastName    EmailAddress
-- 1492    Australia Bike Retailer    Annette    Hill    annette0@adventure-works.com
-- 1492    Australia Bike Retailer    Arvind    Rao    arvind0@adventure-works.com
-- 1492    Australia Bike Retailer    Ben    Miller    ben0@adventure-works.com
-- 1492    Australia Bike Retailer    Eric    Kurjan    eric2@adventure-works.com
-- 1492    Australia Bike Retailer    Erin    Hagens    erin0@adventure-works.com


select distinct
Pv.BusinessEntityID BusinessEntityID,
Pv.Name VendorName,
Pp.FirstName FirstName,
Pp.LastName LastName,
Pe.EmailAddress EmailAddress
from Purchasing.PurchaseOrderHeader PpoH
join Purchasing.Vendor Pv on PpoH.VendorID=Pv.BusinessEntityID
join Person.Person Pp on PpoH.EmployeeID=Pp.BusinessEntityID
join Person.EmailAddress Pe on Pp.BusinessEntityID=Pe.BusinessEntityID

