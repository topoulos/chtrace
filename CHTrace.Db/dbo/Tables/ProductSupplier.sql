CREATE TABLE [dbo].[ProductSupplier] (
    [Id]                         INT             IDENTITY (1, 1) NOT NULL,
    [ProductId]                  INT             NOT NULL,
    [SupplierId]                 INT             NOT NULL,
    [Allotment]                  DECIMAL (18, 2) NULL,
    [BaseQty]                    DECIMAL (18, 4) NOT NULL,
    [UnitMeasureId]              INT             NOT NULL,
    [SupplierProductDescription] NVARCHAR (MAX)  NULL,
    [SupplierProductNumber]      NVARCHAR (200)  NULL,
    [IsActive]                   BIT             DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_ProductSupplier] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductSupplier_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_ProductSupplier_ProductSupplier] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Supplier] ([Id]),
    CONSTRAINT [FK_ProductSupplier_UnitMeasure] FOREIGN KEY ([UnitMeasureId]) REFERENCES [dbo].[UnitMeasure] ([Id])
);

