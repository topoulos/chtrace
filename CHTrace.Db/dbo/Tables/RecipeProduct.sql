CREATE TABLE [dbo].[RecipeProduct] (
    [Id]        INT IDENTITY (1, 1) NOT NULL,
    [RecipeId]  INT NOT NULL,
    [ProductId] INT NOT NULL,
    [IsActive]  BIT DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_RecipeProducts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RecipeProduct_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_RecipeProduct_Recipes] FOREIGN KEY ([RecipeId]) REFERENCES [dbo].[Recipe] ([Id])
);

