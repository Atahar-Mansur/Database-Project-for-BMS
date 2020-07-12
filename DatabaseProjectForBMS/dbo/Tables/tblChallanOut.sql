CREATE TABLE [dbo].[tblChallanOut] (
    [intId]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [intChallanId]    BIGINT         NOT NULL,
    [strPartyName]    VARCHAR (1000) NULL,
    [strPartyAddress] VARCHAR (1000) NULL,
    [dteChallanDate]  DATETIME       NULL,
    [dteEntryDate]    DATETIME       NULL,
    [strDetails]      VARCHAR (1000) NULL,
    [intQuantity]     BIGINT         NULL,
    [strRemarks]      VARCHAR (1000) NULL,
    [ysnActive]       BIT            NULL,
    [strPurchNo]      VARCHAR (1000) NULL,
    [dtePurchDate]    DATETIME       NULL,
    [strLCNo]         VARCHAR (1000) NULL,
    [dteLCDate]       DATETIME       NULL
);

