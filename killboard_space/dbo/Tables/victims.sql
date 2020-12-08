CREATE TABLE [dbo].[victims] (
    [victim_id]    INT IDENTITY (1, 1) NOT NULL,
    [killmail_id]  INT NOT NULL,
    [char_id]      INT NOT NULL,
    [damage_taken] INT NOT NULL,
    [faction_id]   INT NULL,
    [position_id]  INT NOT NULL,
    [ship_type_id] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([victim_id] ASC),
    FOREIGN KEY ([faction_id]) REFERENCES [dbo].[factions] ([faction_id]),
    FOREIGN KEY ([position_id]) REFERENCES [dbo].[positions] ([position_id]),
    FOREIGN KEY ([ship_type_id]) REFERENCES [dbo].[items] ([type_id]),
    CONSTRAINT [FK_victims_char_id] FOREIGN KEY ([char_id]) REFERENCES [dbo].[characters] ([character_id]),
    CONSTRAINT [FK_victims_killmail_id] FOREIGN KEY ([killmail_id]) REFERENCES [dbo].[killmails] ([killmail_id])
);

