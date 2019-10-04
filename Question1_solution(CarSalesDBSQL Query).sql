CarSales DB to output the total sale price per maker and model from the past 30 days. 
===============================================================


SELECT DISTINCT 
CarMaker AS CarMaker, 
CarModel AS CarModel,
SUM(SalePriceInDollar)AS TotalSalePrice
FROM dbo.CarSales
WHERE DATEDIFF(day,SaleDate,getdate())<=30
GROUP BY CarModel, CarMaker
ORDER BY CarModel, CarMaker; 