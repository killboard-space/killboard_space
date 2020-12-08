CREATE TABLE [dbo].[dropped_items] (
    [flag_id]            INT NOT NULL,
    [item_type_id]       INT NOT NULL,
    [quantity_dropped]   INT NULL,
    [quantity_destroyed] INT NULL,
    [killmail_id]        INT NOT NULL,
    FOREIGN KEY ([item_type_id]) REFERENCES [dbo].[items] ([type_id]),
    CONSTRAINT [FK_dropped_items_killmail_id] FOREIGN KEY ([killmail_id]) REFERENCES [dbo].[killmails] ([killmail_id])
);

