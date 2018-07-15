CREATE TABLE [dbo].[Address] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (MAX) NOT NULL,
    [Attention]     NVARCHAR (MAX) NULL,
    [AddressLine1]  NVARCHAR (MAX) NOT NULL,
    [AddressLine2]  NVARCHAR (MAX) NULL,
    [City]          NVARCHAR (MAX) NULL,
    [State]         NVARCHAR (200) NOT NULL,
    [Zipcode]       NVARCHAR (200) NOT NULL,
    [Phone]         NVARCHAR (200) NULL,
    [Fax]           NVARCHAR (200) NULL,
    [AddressTypeId] INT            NOT NULL,
    [IsActive]      BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Address_Address] FOREIGN KEY ([AddressTypeId]) REFERENCES [dbo].[AddressType] ([Id])
);

