Select City, Count (EmployeeID) as Empcount FROM Orders
Inner Join Customers On Orders.CustomerID= Customers.CustomerID
Group BY City 
Order BY Empcount DESC
LIMIT 5

Select CustomerName, Count (OrderID) as Ordercount FROM Orders
Inner Join Customers On Orders.CustomerID= Customers.CustomerID
Group BY CustomerName 
Order BY Ordercount DESC
LIMIT 5

Select CustomerName, SUM(OrderDetails.Quantity) as Quantitycount FROM Orders
Inner Join Customers On Orders.CustomerID= Customers.CustomerID
Inner Join OrderDetails On Orders.OrderID= OrderDetails.OrderID
Group BY CustomerName 
Order BY Quantitycount DESC
LIMIT 5

Select * FROM Products
Inner Join Categories On Products.CategoryID= Categories.CategoryID