CREATE TABLE [dbo].[DimEvaluationType] (
    [EvaluationTypeKey] INT          IDENTITY (1, 1) NOT NULL,
    [EvaluationTypeID]  INT          NOT NULL,
    [EvaluationType]    VARCHAR (50) NULL,
    [IsActive]          BIT          DEFAULT ((1)) NOT NULL,
    [StartDate]         DATETIME     DEFAULT (getdate()) NOT NULL,
    [EndDate]           DATETIME     NULL,
    CONSTRAINT [PK_DimEvaluationType] PRIMARY KEY CLUSTERED ([EvaluationTypeKey] ASC),
    CONSTRAINT [AK_DimEvaluationType] UNIQUE NONCLUSTERED ([EvaluationType] ASC, [StartDate] ASC)
);

