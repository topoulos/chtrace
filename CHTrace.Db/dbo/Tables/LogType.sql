CREATE TABLE [dbo].[LogType] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (200) NOT NULL,
    [IsActive] BIT            CONSTRAINT [DF_LogType_IsActive] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_LogType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

