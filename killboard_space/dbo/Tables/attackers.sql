CREATE TABLE [dbo].[attackers] (
    [char_id]        INT NOT NULL,
    [damage_done]    INT NOT NULL,
    [final_blow]     BIT DEFAULT ((0)) NOT NULL,
    [ship_type_id]   INT NOT NULL,
    [weapon_type_id] INT NOT NULL,
    [killmail_id]    INT NOT NULL,
    CONSTRAINT [PK_attackers_char_id_killmail_id] PRIMARY KEY CLUSTERED ([char_id] ASC, [killmail_id] ASC),
    FOREIGN KEY ([ship_type_id]) REFERENCES [dbo].[items] ([type_id]),
    FOREIGN KEY ([weapon_type_id]) REFERENCES [dbo].[items] ([type_id]),
    CONSTRAINT [FK_attackers_killmail_id] FOREIGN KEY ([killmail_id]) REFERENCES [dbo].[killmails] ([killmail_id])
);

