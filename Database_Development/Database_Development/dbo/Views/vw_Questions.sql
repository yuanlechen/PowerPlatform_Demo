CREATE VIEW [dbo].[vw_Questions] AS
SELECT
	[R].[ResultNumber],
	[R].[EvaluationNumber],
	[Q].[QuestionKey],
	[Q].[EvaluationTypeKey],
	[Q].[Question]
FROM
	[dbo].[FactResult] AS [R]
	LEFT JOIN [dbo].[DimQuestion] AS [Q]
		ON [R].[QuestionKey] = [Q].[QuestionKey]
WHERE
	[Q].[IsActive] = 1
	AND [R].[Score] IS NULL