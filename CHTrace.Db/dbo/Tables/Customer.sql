CREATE TABLE [dbo].[Customer] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (MAX) NOT NULL,
    [ContactName] NVARCHAR (MAX) NULL,
    [Email]       NVARCHAR (MAX) NULL,
    [Phone]       NVARCHAR (200) NULL,
    [Fax]         NVARCHAR (200) NULL,
    [IsActive]    BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([Id] ASC)
);

