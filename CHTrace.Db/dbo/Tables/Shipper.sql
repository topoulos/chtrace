CREATE TABLE [dbo].[Shipper] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (MAX) NOT NULL,
    [IsActive] BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Shipper] PRIMARY KEY CLUSTERED ([Id] ASC)
);

