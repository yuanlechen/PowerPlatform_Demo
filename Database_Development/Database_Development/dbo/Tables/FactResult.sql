CREATE TABLE [dbo].[FactResult] (
    [ResultNumber]     INT      IDENTITY (1, 1) NOT NULL,
    [EvaluationNumber] INT      NOT NULL,
    [QuestionKey]      INT      NOT NULL,
    [Score]            SMALLINT NULL,
    [IsActive]         BIT      NOT NULL,
    [LastUpdate]       DATETIME DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FactResult] PRIMARY KEY CLUSTERED ([ResultNumber] ASC),
    CONSTRAINT [FK_FactResult_DimQuestion] FOREIGN KEY ([QuestionKey]) REFERENCES [dbo].[DimQuestion] ([QuestionKey]),
    CONSTRAINT [FK_FactResult_FactEvaluation] FOREIGN KEY ([EvaluationNumber]) REFERENCES [dbo].[FactEvaluation] ([EvaluationNumber]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [AK_FactResult] UNIQUE NONCLUSTERED ([EvaluationNumber] ASC, [QuestionKey] ASC)
);

