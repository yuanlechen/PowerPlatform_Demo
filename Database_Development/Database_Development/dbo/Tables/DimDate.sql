CREATE TABLE [dbo].[DimDate] (
    [DateKey]                     INT          NOT NULL,
    [FullDate]                    DATETIME     NOT NULL,
    [Day]                         TINYINT      NOT NULL,
    [DaySuffix]                   VARCHAR (4)  NOT NULL,
    [DayOfWeek]                   VARCHAR (9)  NOT NULL,
    [DayOfWeekNumber]             INT          NOT NULL,
    [DayOfWeekInMonth]            TINYINT      NOT NULL,
    [DayOfYearNumber]             INT          NOT NULL,
    [WeekOfYearNumber]            TINYINT      NOT NULL,
    [WeekOfMonthNumber]           TINYINT      NOT NULL,
    [CalendarMonthNumber]         TINYINT      NOT NULL,
    [CalendarMonthName]           VARCHAR (9)  NOT NULL,
    [CalendarQuarterNumber]       TINYINT      NOT NULL,
    [CalendarQuarterName]         VARCHAR (6)  NOT NULL,
    [CalendarYearNumber]          INT          NOT NULL,
    [StandardDate]                VARCHAR (10) NULL,
    [WeekDayFlag]                 BIT          NOT NULL,
    [WorkDayFlag]                 BIT          NOT NULL,
    [HolidayFlag]                 BIT          NOT NULL,
    [OpenFlag]                    BIT          NOT NULL,
    [FirstDayOfCalendarMonthFlag] BIT          NOT NULL,
    [LastDayOfCalendarMonthFlag]  BIT          NOT NULL,
    [HolidayText]                 VARCHAR (50) NULL,
    CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED ([DateKey] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_DimDate_Date]
    ON [dbo].[DimDate]([FullDate] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_Day]
    ON [dbo].[DimDate]([Day] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_DayOfWeek]
    ON [dbo].[DimDate]([DayOfWeek] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_DOWInMonth]
    ON [dbo].[DimDate]([DayOfWeekInMonth] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_DayOfYear]
    ON [dbo].[DimDate]([DayOfYearNumber] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_WeekOfYear]
    ON [dbo].[DimDate]([WeekOfYearNumber] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_WeekOfMonth]
    ON [dbo].[DimDate]([WeekOfMonthNumber] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_Month]
    ON [dbo].[DimDate]([CalendarMonthNumber] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_MonthName]
    ON [dbo].[DimDate]([CalendarMonthName] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_Quarter]
    ON [dbo].[DimDate]([CalendarQuarterNumber] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_QuarterName]
    ON [dbo].[DimDate]([CalendarQuarterName] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_Year]
    ON [dbo].[DimDate]([CalendarYearNumber] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_dim_Time_HolidayText]
    ON [dbo].[DimDate]([HolidayText] ASC) WITH (FILLFACTOR = 90);

