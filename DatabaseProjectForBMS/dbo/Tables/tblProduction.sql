CREATE TABLE [dbo].[tblProduction] (
    [intId]             BIGINT         IDENTITY (1, 1) NOT NULL,
    [dteProductionDate] DATETIME       NULL,
    [dteEntryDate]      DATETIME       NULL,
    [strDetails]        VARCHAR (1000) NULL,
    [decQuantity]       FLOAT (53)     NULL,
    [strRemarks]        VARCHAR (1000) NULL,
    [ysnActive]         BIT            NULL,
    [strAction]         VARCHAR (50)   NULL
);

