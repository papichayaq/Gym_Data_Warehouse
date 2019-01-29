SELECT main.Equip_ID, branch.Branch_ID, dim_time.TimeKey, main.Main_ID, main.Main_cost
FROM [Gym].[dbo].[Mas_Employee] employee, [Gym].[dbo].[Tran_Maintenance] main, [Gym].[dbo].[Mas_Equipment] equip, [Gym].[dbo].[Mas_Branch] branch, [Gym_DW].[dbo].[Dim_Time] dim_time
WHERE main.Equip_ID = equip.Equip_ID
AND main.Main_ID = employee.Emp_ID
AND employee.Branch_ID = branch.Branch_ID
AND main.Main_date = dim_time.FullDate