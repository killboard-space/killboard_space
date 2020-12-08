CREATE TABLE [dbo].[alliances] (
    [name]             NVARCHAR (MAX) NOT NULL,
    [executor_corp_id] INT            NULL,
    [ticker]           VARCHAR (10)   NOT NULL,
    [alliance_id]      INT            NOT NULL,
    CONSTRAINT [PK_alliances_alliance_id] PRIMARY KEY CLUSTERED ([alliance_id] ASC)
);

