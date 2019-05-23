CREATE TABLE [dbo].[DimPhase] (
    [PhaseKey]  INT          IDENTITY (1, 1) NOT NULL,
    [PhaseID]   VARCHAR (5)  NOT NULL,
    [Phase]     VARCHAR (50) NULL,
    [IsActive]  BIT          DEFAULT ((1)) NOT NULL,
    [StartDate] DATETIME     DEFAULT (getdate()) NOT NULL,
    [EndDate]   DATETIME     NULL,
    CONSTRAINT [PK_DimPhase] PRIMARY KEY CLUSTERED ([PhaseKey] ASC),
    CONSTRAINT [AK_DimPhase] UNIQUE NONCLUSTERED ([PhaseID] ASC, [StartDate] ASC)
);

