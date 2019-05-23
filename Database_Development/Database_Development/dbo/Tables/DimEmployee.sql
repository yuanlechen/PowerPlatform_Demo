CREATE TABLE [dbo].[DimEmployee] (
    [EmployeeKey]        INT          IDENTITY (1, 1) NOT NULL,
    [EmployeeID]         VARCHAR (10) NOT NULL,
    [PositionKey]        INT          NULL,
    [HireDateKey]        INT          NULL,
    [TerminationDateKey] INT          NULL,
    [FirstName]          VARCHAR (30) NULL,
    [LastName]           VARCHAR (30) NULL,
    [MiddleName]         VARCHAR (30) NULL,
    [PreferredName]      VARCHAR (30) NULL,
    [IsActive]           BIT          DEFAULT ((1)) NOT NULL,
    [StartDate]          DATETIME     DEFAULT (getdate()) NOT NULL,
    [EndDate]            DATETIME     NULL,
    [Email] VARCHAR(100) NULL, 
    CONSTRAINT [PK_DimEmployee] PRIMARY KEY CLUSTERED ([EmployeeKey] ASC),
    CONSTRAINT [FK_DimEmployee_DimDate_HireDateKey] FOREIGN KEY ([HireDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_DimEmployee_DimDate_TerminationDateKey] FOREIGN KEY ([TerminationDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_DimEmployee_DimPosition] FOREIGN KEY ([PositionKey]) REFERENCES [dbo].[DimPosition] ([PositionKey]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [AK_DimEmployee] UNIQUE NONCLUSTERED ([EmployeeID] ASC, [StartDate] ASC)
);

