CREATE TABLE [dbo].[DimPosition] (
    [PositionKey] INT          IDENTITY (1, 1) NOT NULL,
    [TitleID]     VARCHAR (5)  NOT NULL,
    [Title]       VARCHAR (50) NULL,
    [IsActive]    BIT          DEFAULT ((1)) NOT NULL,
    [StartDate]   DATETIME     DEFAULT (getdate()) NOT NULL,
    [EndDate]     DATETIME     NULL,
    CONSTRAINT [PK_DimPosition] PRIMARY KEY CLUSTERED ([PositionKey] ASC),
    CONSTRAINT [AK_DimPosition] UNIQUE NONCLUSTERED ([TitleID] ASC, [StartDate] ASC)
);

