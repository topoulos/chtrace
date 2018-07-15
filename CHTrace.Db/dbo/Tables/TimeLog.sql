CREATE TABLE [dbo].[TimeLog] (
    [Id]           INT                IDENTITY (1, 1) NOT NULL,
    [ProductLogId] INT                NULL,
    [StartTime]    DATETIMEOFFSET (7) NOT NULL,
    [StopTime]     DATETIMEOFFSET (7) NOT NULL,
    [IsActive]     BIT                DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_TimeLog] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TimeLog_ProductLog] FOREIGN KEY ([ProductLogId]) REFERENCES [dbo].[ProductLog] ([Id])
);

