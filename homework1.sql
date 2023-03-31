
USE AdventureWorks2012;

--1 Retrieve the top 10 most expensive products in the 'Product' table.
select top 10 name, listprice
from production.product
order by listprice desc

--2 Find the total number of products for each product subcategory.
select productsubcategoryid, count(*) totnmbofproducts
from production.product
group by productsubcategoryid

-- 3 List all products that have a standard cost between $100 and $500
select name, standardcost
from Production.Product
where standardcost between 100 and 500

--4 Retrieve the top 5 product subcategories with the highest average list price
select top 5 ProductSubcategoryID, avg(listprice) as AvgListPrice
from production.product
group by ProductSubcategoryID
order by AvgListPrice desc

--5 Find the total number of discontinued products
SELECT count(ProductNumber) as TotalDiscontinuedProducts
FROM Production.Product
where SellEndDate is not null
