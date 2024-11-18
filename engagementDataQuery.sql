/******

SCRIPT TO CLEAN THE ENGAGEMENT DATA TABLEAND EXTRACTING HELPFULL DATA FOR ANAKYSIS

********/

SELECT [EngagementID]				-- Selects the each engagement Id for content
      ,[ContentID]					-- Selects the each content Id
	  ,[CampaignID]					-- Selects the capaign Id
      ,[ProductID]					-- Select the product Id

      ,UPPER(REPLACE([ContentType], 'Socialmedia', 'Social Media')) As ContentType	-- Replaces the 'Socialmedia' to 'Social Media' and converts to upper case

	  , LEFT(ViewsClicksCombined , CHARINDEX( '-',ViewsClicksCombined)-1)  AS Views  -- Extracts only the views from the viewsClicksCombined Column
	  , RIGHT(ViewsClicksCombined , LEN(ViewsClicksCombined) - CHARINDEX('-',ViewsClicksCombined) ) As Clicks --Extracts only the clicks count from combined column using colon as seperator
      ,[Likes]						-- Selects the Likes for the content
      ,[EngagementDate]				-- Selects the date when the engagement happend
     
      ,[ViewsClicksCombined]
  FROM [PortfolioProject_MarketingAnalytics].[dbo].[engagement_data]
  WHERE ContentType != 'newsletter'    --Filters out the contenttype of 'newsletters' as is not for our analysis