CREATE TABLE [dbo].[Batch] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [RecipeId] INT            NOT NULL,
    [Name]     NVARCHAR (MAX) NOT NULL,
    [IsActive] BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Batch_Recipes] FOREIGN KEY ([RecipeId]) REFERENCES [dbo].[Recipe] ([Id])
);

