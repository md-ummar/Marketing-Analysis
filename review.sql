/******  SCRIPT TO GET THE CUSTOMER REVIEWS         ******/

SELECT [ReviewID]				-- Selects the each review Id which customer has given
      ,[CustomerID]				-- Selects the customer Id of each customer
      ,[ProductID]				-- Selects the product Id the customer has purchased
      ,[ReviewDate]				-- Selects the review date the customer has given
      ,[Rating]					-- Selects the rating given by the customer
     
	 -- Cleaning da
	-- As review text has dounle spaces we are replacing thouse review text by single text	
	  ,REPLACE(ReviewText, '  ',' ') 
  FROM [PortfolioProject_MarketingAnalytics].[dbo].[customer_reviews]
