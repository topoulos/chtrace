CREATE TABLE [dbo].[Recipe] (
    [Id]                      INT            IDENTITY (1, 1) NOT NULL,
    [Name]                    NVARCHAR (MAX) NOT NULL,
    [PreparationInstructions] NVARCHAR (MAX) NULL,
    [CookingInstructions]     NVARCHAR (MAX) NULL,
    [IsActive]                BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

