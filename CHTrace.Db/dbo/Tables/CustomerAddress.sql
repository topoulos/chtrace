CREATE TABLE [dbo].[CustomerAddress] (
    [Id]         INT IDENTITY (1, 1) NOT NULL,
    [CustomerId] INT NOT NULL,
    [AddressId]  INT NOT NULL,
    [IsActive]   BIT DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_CustomerAddress] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CustomerAddress_Address] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id]),
    CONSTRAINT [FK_CustomerAddress_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id])
);

