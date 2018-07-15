CREATE TABLE [dbo].[Supplier] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (MAX) NOT NULL,
    [IsActive] BIT            CONSTRAINT [DF_Supplier_IsActive] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED ([Id] ASC)
);

