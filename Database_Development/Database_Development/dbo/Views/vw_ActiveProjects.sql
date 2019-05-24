CREATE VIEW [dbo].[vw_ActiveProjects]
	AS 
	SELECT
		[pj].[ProjectNumber]
		,[pj].[ProjectName]
		,[ph].[Phase]
		,[dt].[FullDate]								AS [WorkStartDate]
		,[pj].[CoordinatorKey]
		,[cd].[FirstName] + ' ' +[cd].[LastName]		AS [Coordinator]
		,[pj].[ProjectManagerKey]
		,[pm].[FirstName] + ' ' +[pm].[LastName]		AS [ProjectManager]
		,[pj].[TeamLeadKey]
		,[tl].[FirstName] + ' ' +[tl].[LastName]		AS [TeamLead]
	FROM 
		[dbo].[FactProject] AS [pj]
		LEFT JOIN [dbo].[DimPhase] AS [ph]
			ON [pj].[PhaseKey] = [ph].[PhaseKey]
		LEFT JOIN [dbo].[DimDate] AS [dt]
			ON [pj].[WorkStartDateKey] = [dt].[DateKey]
		LEFT JOIN [dbo].[DimEmployee] AS [cd]
			ON [pj].[CoordinatorKey] = [cd].[EmployeeKey]
		LEFT JOIN [dbo].[DimEmployee] AS [pm]
			ON [pj].[ProjectManagerKey] = [pm].[EmployeeKey]
		LEFT JOIN [dbo].[DimEmployee] AS [tl]
			ON [pj].[TeamLeadKey] = [tl].[EmployeeKey]
	WHERE
		[IsComplete] = 0