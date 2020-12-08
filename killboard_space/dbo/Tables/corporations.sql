CREATE TABLE [dbo].[corporations] (
    [name]           NVARCHAR (MAX) NOT NULL,
    [alliance_id]    INT            NULL,
    [ceo_char_id]    INT            NULL,
    [description]    NVARCHAR (MAX) NULL,
    [ticker]         VARCHAR (10)   NOT NULL,
    [create_time]    DATETIME       NOT NULL,
    [create_char]    INT            NULL,
    [member_count]   INT            NOT NULL,
    [tax_rate]       DECIMAL (18)   NULL,
    [url]            NVARCHAR (240) NULL,
    [corporation_id] INT            NOT NULL,
    CONSTRAINT [PK_corporations_corporation_id] PRIMARY KEY CLUSTERED ([corporation_id] ASC),
    CONSTRAINT [FK_corporations_alliance_id] FOREIGN KEY ([alliance_id]) REFERENCES [dbo].[alliances] ([alliance_id])
);

