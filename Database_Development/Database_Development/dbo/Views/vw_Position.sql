CREATE VIEW [dbo].[vw_Position] AS

SELECT
	[or].[Email],
	[po].[Title]
FROM
	[dbo].[DimEmployee] AS [or]
	LEFT JOIN [dbo].[DimPosition] AS [po]
		ON [or].[PositionKey] = [po].[PositionKey]
		AND [po].[IsActive] = 1
