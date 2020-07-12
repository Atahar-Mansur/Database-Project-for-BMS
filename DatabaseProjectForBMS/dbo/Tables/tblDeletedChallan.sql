CREATE TABLE [dbo].[tblDeletedChallan] (
    [intID]        BIGINT         IDENTITY (1, 1) NOT NULL,
    [intChallanID] BIGINT         NULL,
    [strReason]    VARCHAR (5000) NULL,
    [ysnActive]    BIT            NULL
);

