CREATE TABLE [dbo].[WholesaleLog] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId]      INT            NOT NULL,
    [WorkOrderNumber] NVARCHAR (200) NULL,
    [LogNumber]       NVARCHAR (200) NULL,
    [ShipperId]       INT            NULL,
    [AddressId]       INT            NULL,
    [ShiptoAddressId] INT            NULL,
    [IsActive]        BIT            DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_WholesaleLogs] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_WholesaleLog_Address] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id]),
    CONSTRAINT [FK_WholesaleLog_Address1] FOREIGN KEY ([ShiptoAddressId]) REFERENCES [dbo].[Address] ([Id]),
    CONSTRAINT [FK_WholesaleLog_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id]),
    CONSTRAINT [FK_WholesaleLog_Shipper] FOREIGN KEY ([ShipperId]) REFERENCES [dbo].[Shipper] ([Id])
);

