CREATE TABLE [dbo].[tblBill] (
    [intId]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [intBillId]       BIGINT         NULL,
    [dteDate]         DATETIME       NULL,
    [strBOE]          VARCHAR (1000) NULL,
    [intChallanId]    BIGINT         NOT NULL,
    [strPartyName]    VARCHAR (1000) NULL,
    [strPartyAddress] VARCHAR (1000) NULL,
    [strDetails]      VARCHAR (1000) NULL,
    [intQuantity]     BIGINT         NULL,
    [monPrice]        FLOAT (53)     NULL,
    [monTotalPrice]   FLOAT (53)     NULL,
    [strCurrency]     VARCHAR (15)   NULL,
    [strRemark]       VARCHAR (1000) NULL,
    [ysnPendingBill]  BIT            NULL,
    [ysnActive]       BIT            NULL
);

