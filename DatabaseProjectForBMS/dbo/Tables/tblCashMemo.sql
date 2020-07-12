CREATE TABLE [dbo].[tblCashMemo] (
    [intID]              INT            IDENTITY (1, 1) NOT NULL,
    [intCashMemoId]      INT            NULL,
    [intBillId]          INT            NULL,
    [strPartyName]       VARCHAR (1000) NULL,
    [dteCashMemoDate]    DATETIME       NULL,
    [strChequeNo]        VARCHAR (1000) NULL,
    [dteChequeIssueDate] DATETIME       NULL,
    [monPaid]            FLOAT (53)     CONSTRAINT [DF_tblCashMemo_monPaid] DEFAULT ((0)) NULL,
    [monVat]             FLOAT (53)     CONSTRAINT [DF_tblCashMemo_monVat] DEFAULT ((0)) NULL,
    [monDiscount]        FLOAT (53)     CONSTRAINT [DF_tblCashMemo_monDiscount] DEFAULT ((0)) NULL,
    [monTotal]           FLOAT (53)     CONSTRAINT [DF_tblCashMemo_monTotal] DEFAULT ((0)) NULL,
    [monDue]             FLOAT (53)     NULL,
    [ysnDue]             BIT            CONSTRAINT [DF_tblCashMemo_ysnDue] DEFAULT ((1)) NOT NULL,
    [ysnActive]          BIT            CONSTRAINT [DF_tblCashMemo_ysnActive] DEFAULT ((1)) NOT NULL,
    [dteEntryDate]       DATETIME       CONSTRAINT [DF_tblCashMemo_dteEntryDate] DEFAULT (getdate()) NOT NULL
);

