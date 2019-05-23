CREATE TABLE [dbo].[FactProject] (
    [RecordNumber]      INT          IDENTITY (1, 1) NOT NULL,
    [ProjectNumber]     VARCHAR (10) NOT NULL,
    [ProjectName]       VARCHAR (50) NULL,
    [PhaseKey]          INT          NOT NULL,
    [WorkStartDateKey]  INT          NOT NULL,
    [WorkEndDateKey]    INT          NULL,
    [CoordinatorKey]    INT          NULL,
    [ProjectManagerKey] INT          NULL,
    [TeamLeadKey]       INT          NULL,
    [IsComplete]        BIT          DEFAULT ((0)) NOT NULL,
    [LastUpdate]        DATETIME     DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_FactJob] PRIMARY KEY CLUSTERED ([RecordNumber] ASC),
    CONSTRAINT [FK_FactProject_DimDate_WorkEndDate] FOREIGN KEY ([WorkEndDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactProject_DimDate_WorkStartDate] FOREIGN KEY ([WorkStartDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_FactProject_DimEmployee_Coordinator] FOREIGN KEY ([CoordinatorKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey]),
    CONSTRAINT [FK_FactProject_DimEmployee_ProjectManager] FOREIGN KEY ([ProjectManagerKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey]),
    CONSTRAINT [FK_FactProject_DimEmployee_TeamLead] FOREIGN KEY ([TeamLeadKey]) REFERENCES [dbo].[DimEmployee] ([EmployeeKey]),
    CONSTRAINT [AK_FactJob] UNIQUE NONCLUSTERED ([ProjectName] ASC, [PhaseKey] ASC, [WorkStartDateKey] ASC)
);

