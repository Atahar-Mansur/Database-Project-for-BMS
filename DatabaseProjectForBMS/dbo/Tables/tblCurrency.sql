CREATE TABLE [dbo].[tblCurrency] (
    [intID]           INT           IDENTITY (1, 1) NOT NULL,
    [strCurrency]     VARCHAR (100) NULL,
    [strCurrencyIcon] NVARCHAR (10) NULL,
    [monValueByTaka]  FLOAT (53)    NULL
);

