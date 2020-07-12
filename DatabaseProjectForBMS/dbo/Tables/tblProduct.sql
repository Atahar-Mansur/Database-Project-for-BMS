CREATE TABLE [dbo].[tblProduct] (
    [intProductId]       INT            IDENTITY (1, 1) NOT NULL,
    [strProductName]     VARCHAR (1000) NULL,
    [strProductDetails]  VARCHAR (1000) NULL,
    [strMeasurementUnit] VARCHAR (100)  NOT NULL,
    [decUnitPerKG]       FLOAT (53)     CONSTRAINT [DF_tblProduct_decPisPerKG] DEFAULT ((1)) NULL,
    [dteEntryDate]       DATETIME       NULL,
    [ysnActive]          BIT            NULL,
    [strProductImageURL] VARCHAR (1000) NULL
);

