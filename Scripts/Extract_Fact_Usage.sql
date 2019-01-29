SELECT cust.Cust_ID, course.Course_ID, branch.Branch_ID, dim_time.TimeKey, 1 as Total_usage
FROM [Gym].[dbo].[Mas_Branch] branch, [Gym_DW].[dbo].[Dim_Time] dim_time, [Gym].[dbo].[Mas_Customer] cust, [Gym].[dbo].[Mas_Course] course, [Gym].[dbo].[Tran_Usage_Record] usage
WHERE usage.Cust_ID = cust.Cust_ID
AND usage.Course_ID = course.Course_ID
AND course.Branch_ID = branch.Branch_ID
AND usage.Usage_date = dim_time.FullDate