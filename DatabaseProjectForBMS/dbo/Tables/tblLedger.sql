CREATE TABLE [dbo].[tblLedger] (
    [intID]              INT            IDENTITY (1, 1) NOT NULL,
    [intCashMemoId]      INT            NULL,
    [intBillId]          INT            NULL,
    [strPartyName]       VARCHAR (1000) NULL,
    [dteLedgerDate]      DATETIME       NULL,
    [strChequeNo]        VARCHAR (1000) NULL,
    [dteChequeIssueDate] DATETIME       NULL,
    [monPaid]            FLOAT (53)     CONSTRAINT [DF_tblLedger_monPaid] DEFAULT ((0)) NULL,
    [monVat]             FLOAT (53)     CONSTRAINT [DF_tblLedger_monVat] DEFAULT ((0)) NULL,
    [monDiscount]        FLOAT (53)     CONSTRAINT [DF_tblLedger_monDiscount] DEFAULT ((0)) NULL,
    [monTotal]           FLOAT (53)     CONSTRAINT [DF_tblLedger_monTotal] DEFAULT ((0)) NULL,
    [monDue]             FLOAT (53)     NULL,
    [strAction]          VARCHAR (10)   NULL,
    [ysnActive]          BIT            CONSTRAINT [DF_tblLedger_ysnActive] DEFAULT ((1)) NOT NULL,
    [dteEntryDate]       DATETIME       CONSTRAINT [DF_tblLedger_dteEntryDate] DEFAULT (getdate()) NOT NULL
);

