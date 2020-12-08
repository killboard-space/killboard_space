CREATE TABLE [dbo].[users] (
    [user_id]       INT            IDENTITY (1, 1) NOT NULL,
    [username]      NVARCHAR (120) NOT NULL,
    [hash]          NVARCHAR (MAX) NOT NULL,
    [create_time]   DATETIME       NOT NULL,
    [create_ip]     VARCHAR (100)  NOT NULL,
    [modified_time] DATETIME       NULL,
    [modified_ip]   VARCHAR (100)  NULL,
    [email]         NVARCHAR (300) NULL,
    [salt]          BINARY (16)    NOT NULL,
    PRIMARY KEY CLUSTERED ([user_id] ASC)
);

