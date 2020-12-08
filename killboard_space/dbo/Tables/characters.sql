CREATE TABLE [dbo].[characters] (
    [user_id]         INT            NULL,
    [name]            NVARCHAR (45)  NOT NULL,
    [corporation_id]  INT            NOT NULL,
    [security_status] REAL           NOT NULL,
    [description]     NVARCHAR (MAX) NULL,
    [bloodline_id]    INT            NOT NULL,
    [gender]          VARCHAR (10)   NOT NULL,
    [race_id]         INT            NOT NULL,
    [birthday]        DATETIME       NOT NULL,
    [ancestry_id]     INT            NOT NULL,
    [character_id]    INT            NOT NULL,
    [alliance_id]     INT            NULL,
    CONSTRAINT [PK_characters_character_id] PRIMARY KEY CLUSTERED ([character_id] ASC),
    FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([user_id]),
    CONSTRAINT [FK_characters_alliance_id] FOREIGN KEY ([alliance_id]) REFERENCES [dbo].[alliances] ([alliance_id]),
    CONSTRAINT [FK_characters_corporation_id] FOREIGN KEY ([corporation_id]) REFERENCES [dbo].[corporations] ([corporation_id])
);

