CREATE TABLE [dbo].[ProductLogLineItem] (
    [Id]                INT IDENTITY (1, 1) NOT NULL,
    [ProductLogId]      INT NOT NULL,
    [ProductTrackingId] INT NOT NULL,
    [IsActive]          BIT CONSTRAINT [DF_ProductLogLineItem_IsActive] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_ProductLogLineItem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductLogLineItem_ProductLog] FOREIGN KEY ([ProductLogId]) REFERENCES [dbo].[ProductLog] ([Id]),
    CONSTRAINT [FK_ProductLogLineItem_ProductTracking] FOREIGN KEY ([ProductTrackingId]) REFERENCES [dbo].[ProductTracking] ([Id])
);

