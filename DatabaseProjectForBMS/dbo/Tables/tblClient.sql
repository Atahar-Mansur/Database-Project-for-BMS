CREATE TABLE [dbo].[tblClient] (
    [intID]         INT            IDENTITY (1, 1) NOT NULL,
    [strClientName] VARCHAR (1000) NULL,
    [strEmail]      VARCHAR (1000) NULL,
    [strMobileNo]   VARCHAR (50)   NULL,
    [strAddress]    VARCHAR (1000) NULL,
    [ysnActive]     BIT            NOT NULL
);

