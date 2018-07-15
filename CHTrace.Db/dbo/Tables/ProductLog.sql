CREATE TABLE [dbo].[ProductLog] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [ProductId]         INT            NOT NULL,
    [Qty]               DECIMAL (18)   NULL,
    [UnitMesureId]      INT            NULL,
    [NumberOfEmployees] INT            NULL,
    [LogNumber]         NVARCHAR (200) NOT NULL,
    [BatchId]           INT            NULL,
    [LogTypeId]         INT            NOT NULL,
    [IsActive]          BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_ProductLogs] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductLogs_Batch] FOREIGN KEY ([BatchId]) REFERENCES [dbo].[Batch] ([Id]),
    CONSTRAINT [FK_ProductLogs_LogType] FOREIGN KEY ([LogTypeId]) REFERENCES [dbo].[LogType] ([Id]),
    CONSTRAINT [FK_ProductLogs_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_ProductLogs_UnitMeasures] FOREIGN KEY ([UnitMesureId]) REFERENCES [dbo].[UnitMeasure] ([Id])
);

