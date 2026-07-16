use world;
SELECT * FROM `product-sales-region`;
#Total Sales by Region
select Region,sum(TotalPrice) AS TotalSales from `product-sales-region` group by Region;
#Top 5 Products by Sales
select Product,sum(TotalPrice) AS TotalSales from  `product-sales-region`  group by Product order by TotalSales desc LIMIT 5;
#Sales by Store Location
select StoreLocation,sum(TotalPrice) AS TotalSales from  `product-sales-region`  group by StoreLocation;
#Customer Type Wise Sales
select CustomerType,sum(TotalPrice) AS TotalSales from  `product-sales-region`  group by CustomerType;
#Payment method wise orders
select PaymentMethod,count(*) AS TotalOrders from  `product-sales-region`  group by PaymentMethod;
#Highest Selling Salesperson
select Salesperson,sum(TotalPrice) AS TotalSales from  `product-sales-region`  group by Salesperson order by TotalSales desc LIMIT 1;
#Region manager performance
select RegionManager,sum(TotalPrice) AS TotalSales from `product-sales-region` group by RegionManager;
#Returned Products
select * from `product-sales-region` where Returned="Yes";
#Products with Discount Greater Than 10%
select Product,Discount from `product-sales-region` where Discount>0.10;
#Overrall Sales Summary 
SELECT COUNT(*) AS TotalOrders, SUM(TotalPrice) AS TotalSales,AVG(TotalPrice) AS AverageSale,
MAX(TotalPrice) AS HighestSale,MIN(TotalPrice) AS LowestSale FROM `product-sales-region`;