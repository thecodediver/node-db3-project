-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select
  product.id,
  product.productname,
  category.id,
  category.CategoryName
from product
left join category
  on product.id = category.id
  
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select
  [order].id
  [order].ShipName
  [order].ShippedDate
from [order]
where [order].ShippedDate < "2012-08-09"
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select
  OrderDetail.id
  OrderDetail.ProductId
  OrderDetail.ProductName
from OrderDetail
join ProductName
  on Product.id = OrderDetail.ProductId
  where OrderDetail.id like "10251%"
  order by Product.ProductName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
