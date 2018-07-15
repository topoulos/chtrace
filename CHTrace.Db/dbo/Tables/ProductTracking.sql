CREATE TABLE [dbo].[ProductTracking] (
    [Id]                     INT            IDENTITY (1, 1) NOT NULL,
    [ProductId]              INT            NOT NULL,
    [Type]                   NVARCHAR (MAX) NULL,
    [SupplierId]             INT            NOT NULL,
    [ManufacturingLotNumber] NVARCHAR (200) NULL,
    [LogTypeId]              INT            NOT NULL,
    [Qty]                    DECIMAL (18)   NULL,
    [UnitOfMeasureId]        INT            NOT NULL,
    [IsActive]               BIT            CONSTRAINT [DF__ProductTr__IsAct__25869641] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_ProductTracking] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductTracking_LogType] FOREIGN KEY ([LogTypeId]) REFERENCES [dbo].[LogType] ([Id]),
    CONSTRAINT [FK_ProductTracking_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_ProductTracking_ProductTracking] FOREIGN KEY ([Id]) REFERENCES [dbo].[ProductTracking] ([Id]),
    CONSTRAINT [FK_ProductTracking_Supplier] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Supplier] ([Id]),
    CONSTRAINT [FK_ProductTracking_UnitMeasure] FOREIGN KEY ([UnitOfMeasureId]) REFERENCES [dbo].[UnitMeasure] ([Id])
);

