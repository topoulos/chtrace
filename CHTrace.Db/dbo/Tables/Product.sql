CREATE TABLE [dbo].[Product] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [Name]            NVARCHAR (MAX) NOT NULL,
    [Description]     NVARCHAR (MAX) NULL,
    [ProductTypeId]   INT            NOT NULL,
    [ProductNumber]   NVARCHAR (200) NULL,
    [ParentProductId] INT            NULL,
    [IsActive]        BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Product_Product] FOREIGN KEY ([ParentProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_Product_ProductType] FOREIGN KEY ([ProductTypeId]) REFERENCES [dbo].[ProductType] ([Id])
);

