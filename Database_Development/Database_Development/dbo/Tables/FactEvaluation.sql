CREATE TABLE [dbo].[FactEvaluation] (
    [EvaluationNumber]  INT           IDENTITY (1, 1) NOT NULL,
    [RecordNumber]      INT           NOT NULL,
    [EvaluationDateKey] INT           NOT NULL,
    [EvaluatorKey]      INT           NOT NULL,
    [EvaluateeKey]      INT           NOT NULL,
    [EvaluationTypeKey] INT           NOT NULL,
    [Comments]          VARCHAR (200) NULL,
    [IsActive]          BIT           NOT NULL,
    [IsComplete]        BIT           NOT NULL,
    [LastUpdate]        DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FactEvaluation] PRIMARY KEY CLUSTERED ([EvaluationNumber] ASC),
    CONSTRAINT [FK_FactEvaluation_DimDate_EvaluationDateKey] FOREIGN KEY ([EvaluationDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactEvaluation_DimEmployee_Evaluatee] FOREIGN KEY ([EvaluateeKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey]),
    CONSTRAINT [FK_FactEvaluation_DimEmployee_Evaluator] FOREIGN KEY ([EvaluatorKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey]),
    CONSTRAINT [FK_FactEvaluation_DimEvaluationType] FOREIGN KEY ([EvaluationTypeKey]) REFERENCES [dbo].[DimEvaluationType] ([EvaluationTypeKey]) ON UPDATE CASCADE,
    CONSTRAINT [FK_FactEvaluation_FactProject] FOREIGN KEY ([RecordNumber]) REFERENCES [dbo].[FactProject] ([RecordNumber]),
    CONSTRAINT [AK_FactEvaluation] UNIQUE NONCLUSTERED ([RecordNumber] ASC, [EvaluationTypeKey] ASC)
);

