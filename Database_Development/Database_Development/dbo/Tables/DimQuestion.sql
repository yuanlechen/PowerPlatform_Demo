CREATE TABLE [dbo].[DimQuestion] (
    [QuestionKey]       INT           IDENTITY (1, 1) NOT NULL,
    [QuestionID]        VARCHAR (5)   NOT NULL,
    [EvaluationTypeKey] INT           NOT NULL,
    [Question]          VARCHAR (100) NULL,
    [IsActive]          BIT           DEFAULT ((1)) NOT NULL,
    [StartDate]         DATETIME      DEFAULT (getdate()) NOT NULL,
    [EndDate]           DATETIME      NULL,
    CONSTRAINT [PK_DimQuestion] PRIMARY KEY CLUSTERED ([QuestionKey] ASC),
    CONSTRAINT [AK_DimQuestion_DimEvaluationType] FOREIGN KEY ([EvaluationTypeKey]) REFERENCES [dbo].[DimEvaluationType] ([EvaluationTypeKey]) ON UPDATE CASCADE,
    CONSTRAINT [AK_DimQuestion] UNIQUE NONCLUSTERED ([QuestionID] ASC, [StartDate] ASC)
);

