CREATE TABLE [dbo].[Stage_FactProject] (
    [ProjectNumber]     VARCHAR (10) NOT NULL,
    [ProjectName]       VARCHAR (50) NULL,
    [PhaseKey]          INT          NOT NULL,
    [WorkStartDateKey]  INT          NOT NULL,
    [WorkEndDateKey]    INT          NULL,
    [CoordinatorKey]    INT          NULL,
    [ProjectManagerKey] INT          NULL,
    [TeamLeadKey]       INT          NULL
);

