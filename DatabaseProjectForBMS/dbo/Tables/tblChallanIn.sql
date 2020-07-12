CREATE TABLE [dbo].[tblChallanIn] (
    [intID]           INT            IDENTITY (1, 1) NOT NULL,
    [intChallanId]    INT            NULL,
    [strPartyName]    VARCHAR (1000) NULL,
    [strPartyAddress] VARCHAR (1000) NULL,
    [dteChallanDate]  DATETIME       NOT NULL,
    [dteEntryDate]    DATETIME       NOT NULL,
    [strDetails]      VARCHAR (1000) NULL,
    [intQuantity]     BIGINT         NULL,
    [strRemarks]      VARCHAR (1000) NULL,
    [ysnActive]       BIT            NOT NULL
);

