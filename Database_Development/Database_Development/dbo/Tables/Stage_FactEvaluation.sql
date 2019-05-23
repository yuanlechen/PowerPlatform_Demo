CREATE TABLE [dbo].[Stage_FactEvaluation] (
    [RecordNumber]      INT NOT NULL,
    [EvaluationDateKey] INT NOT NULL,
    [EvaluatorKey]      INT NOT NULL,
    [EvaluateeKey]      INT NOT NULL,
    [EvaluationTypeKey] INT NOT NULL,
    [IsActive]          BIT DEFAULT ((0)) NOT NULL,
    [IsComplete]        BIT DEFAULT ((0)) NOT NULL
);

