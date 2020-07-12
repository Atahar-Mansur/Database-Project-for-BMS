CREATE TABLE [dbo].[tblStockRegister] (
    [intId]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [intChallanId]   BIGINT         NULL,
    [strPartyName]   VARCHAR (1000) NULL,
    [dteChallanDate] DATETIME       NULL,
    [dteEntryDate]   DATETIME       NULL,
    [strDetails]     VARCHAR (1000) NULL,
    [intQuantity]    BIGINT         NULL,
    [strRemarks]     VARCHAR (1000) NULL,
    [ysnActive]      BIT            NULL,
    [strAction]      VARCHAR (50)   NULL,
    [intBalance]     BIGINT         NULL,
    [ysnProduction]  BIT            CONSTRAINT [DF_tblStockRegister_ysnProduction] DEFAULT ((0)) NULL
);

