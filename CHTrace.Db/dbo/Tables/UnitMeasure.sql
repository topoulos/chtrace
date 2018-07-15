CREATE TABLE [dbo].[UnitMeasure] (
    [Id]                INT             IDENTITY (1, 1) NOT NULL,
    [Name]              NVARCHAR (200)  NOT NULL,
    [UnitMeasureTypeId] INT             NOT NULL,
    [BaseUnitMeasureId] INT             NULL,
    [ConversionFactor]  DECIMAL (18, 6) NULL,
    [IsActive]          BIT             CONSTRAINT [DF__UnitMeasu__IsAct__33D4B598] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_UnitMeasures] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UnitMeasure_UnitMeasure] FOREIGN KEY ([BaseUnitMeasureId]) REFERENCES [dbo].[UnitMeasure] ([Id]),
    CONSTRAINT [FK_UnitMeasure_UnitMeasureType] FOREIGN KEY ([UnitMeasureTypeId]) REFERENCES [dbo].[UnitMeasureType] ([Id])
);

