/********* Script to extract the usefull data and discarding the redundant data  ****************/

SELECT 
		  [ProductID]		  -- Selects the unique product Ids
         ,[ProductName]		  -- Select each product names
         ,[Price]			  -- Select the Price of the products
		 --,[Category]		  -- Category data has been discarded as it is not helpful
		 ,CASE 
			WHEN price < 50 THEN 'LOW'
			WHEN Price BETWEEN 50 AND 200 THEN 'MEDIUM'
			ELSE 'HIGH'
			END As PriceCategory
   
  FROM [PortfolioProject_MarketingAnalytics].[dbo].[products]
