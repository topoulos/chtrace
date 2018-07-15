CREATE TABLE [dbo].[BatchProduct] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [BatchId]         INT             NOT NULL,
    [RecipeProductId] INT             NOT NULL,
    [Qty]             DECIMAL (18, 2) NOT NULL,
    [UnitMeasureId]   INT             NOT NULL,
    [IsActive]        BIT             DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_BatchProducts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BatchProduct_Batch] FOREIGN KEY ([BatchId]) REFERENCES [dbo].[Batch] ([Id]),
    CONSTRAINT [FK_BatchProduct_RecipeProducts] FOREIGN KEY ([RecipeProductId]) REFERENCES [dbo].[RecipeProduct] ([Id]),
    CONSTRAINT [FK_BatchProduct_UnitMeasures] FOREIGN KEY ([UnitMeasureId]) REFERENCES [dbo].[UnitMeasure] ([Id])
);

