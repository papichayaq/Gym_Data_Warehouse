SELECT DISTINCT [Pay_date]
  FROM [Gym].[dbo].[Tran_Payment]
UNION
SELECT DISTINCT [Order_date]
  FROM [Gym].[dbo].[Tran_Order]
UNION
SELECT DISTINCT [Main_date]
  FROM [Gym].[dbo].[Tran_Maintenance]
  UNION
SELECT DISTINCT [Usage_date]
  FROM [Gym].[dbo].[Tran_Usage_Record];