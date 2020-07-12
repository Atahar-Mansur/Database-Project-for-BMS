CREATE TABLE [dbo].[tblDeletedBill] (
    [intID]     BIGINT         IDENTITY (1, 1) NOT NULL,
    [intBillID] BIGINT         NULL,
    [strReason] VARCHAR (5000) NULL,
    [ysnActive] BIT            NULL
);

