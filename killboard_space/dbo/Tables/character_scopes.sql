CREATE TABLE [dbo].[character_scopes] (
    [char_id]  INT NOT NULL,
    [scope_id] INT NOT NULL,
    [approved] BIT DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([char_id] ASC, [scope_id] ASC),
    FOREIGN KEY ([scope_id]) REFERENCES [dbo].[scopes] ([scope_id]),
    CONSTRAINT [FK_character_scopes_char_id] FOREIGN KEY ([char_id]) REFERENCES [dbo].[characters] ([character_id])
);

