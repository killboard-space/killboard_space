CREATE TABLE [dbo].[scopes] (
    [scope_id]    INT           IDENTITY (1, 1) NOT NULL,
    [scope_name]  VARCHAR (100) NOT NULL,
    [description] VARCHAR (250) NOT NULL,
    [version]     INT           NOT NULL,
    [full_name]   VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([scope_id] ASC)
);

