/******  SCRIPT TO GET THE CUSTOMER DETAILS AND WITH COUNTRY AND CITY BY JOINING THE GEOGRAPHICAL TABLE         ******/

SELECT c.[CustomerID]				    -- Selects the customer unique Id (primary Key)
      ,c.[CustomerName]					-- Selects the custiomer name
      ,c.[Email]						-- Selects the Email of the customers
      ,c.[Gender]						-- Selects the Gender
      ,c.[Age]							-- Selects the age 
      -- ,[GeographyID]					-- we dont use this as it is only used to join and filter the data from geographical table
	  ,g.Country						-- Selects the country of the customers
	  ,g.City							-- Selects the city of the customers

  FROM [PortfolioProject_MarketingAnalytics].[dbo].[customers] As c

  LEFT JOIN 
  
  [dbo].[geography] AS g

  ON c.GeographyID = g.GeographyID



  
  
