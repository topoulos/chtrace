CREATE TABLE [dbo].[ReceivingLog] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [SupplierId] INT           NOT NULL,
    [LogNumber]  NVARCHAR (20) NULL,
    CONSTRAINT [PK_ReceivingLogs] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ReceivingLog_Supplier] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Supplier] ([Id])
);

