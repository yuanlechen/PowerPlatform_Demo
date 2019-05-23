

CREATE VIEW [dbo].[vw_ActiveSurvey] AS
SELECT
	[Eval].[EvaluationNumber],
	[Pro].[ProjectName],
	[Date].[FullDate] AS [ProjectEndDate],
	[Pha].[Phase],
	[Type].[EvaluationType],
	[or].[EmployeeID] AS [EvaluatorID],
	CONCAT([ee].[FirstName], ' ', [ee].[LastName]) AS [EvaluateeID]
FROM
	[dbo].[FactEvaluation] AS [Eval]
	LEFT JOIN [dbo].[FactProject] AS [Pro]
		ON [Eval].[RecordNumber] = [Pro].[RecordNumber]
	LEFT JOIN [dbo].[DimDate] AS [Date]
		ON [Pro].[WorkEndDateKey] = [Date].[DateKey]
	LEFT JOIN [dbo].[DimEmployee] AS [or]
		ON [Eval].[EvaluatorKey] = [or].[EmployeeKey]
	LEFT JOIN [dbo].[DimEmployee] AS [ee]
		ON [Eval].[EvaluateeKey] = [ee].[EmployeeKey]
	LEFT JOIN [dbo].[DimPhase] AS [Pha]
		ON [Pro].[PhaseKey] = [Pha].[PhaseKey]
	LEFT JOIN [dbo].[DimEvaluationType] AS [Type]
		ON [Eval].[EvaluationTypeKey] = [Type].[EvaluationTypeKey]
WHERE
	[Eval].[IsActive] = 1
	AND [Eval].[IsComplete] = 0

