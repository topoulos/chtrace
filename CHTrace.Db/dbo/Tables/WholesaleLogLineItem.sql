CREATE TABLE [dbo].[WholesaleLogLineItem] (
    [Id]             INT IDENTITY (1, 1) NOT NULL,
    [WholesaleLogId] INT NOT NULL,
    [ProductId]      INT NOT NULL,
    [UnitMeasureId]  INT NOT NULL,
    [QtyShipped]     INT NOT NULL,
    [ProductLogId]   INT NOT NULL,
    [IsActive]       BIT DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_WholesaleLogLineItems] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WholesaleLogLineItem_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_WholesaleLogLineItem_ProductLog] FOREIGN KEY ([ProductLogId]) REFERENCES [dbo].[ProductLog] ([Id]),
    CONSTRAINT [FK_WholesaleLogLineItem_UnitMeasure] FOREIGN KEY ([UnitMeasureId]) REFERENCES [dbo].[UnitMeasure] ([Id]),
    CONSTRAINT [FK_WholesaleLogLineItem_WholesaleLog] FOREIGN KEY ([WholesaleLogId]) REFERENCES [dbo].[WholesaleLog] ([Id])
);

