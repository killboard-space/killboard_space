CREATE TABLE [dbo].[bloodlines] (
    [bloodline_id]   INT            IDENTITY (1, 1) NOT NULL,
    [name]           NVARCHAR (MAX) NOT NULL,
    [corporation_id] INT            NOT NULL,
    [description]    NVARCHAR (MAX) NOT NULL,
    [charisma]       INT            NOT NULL,
    [memory]         INT            NOT NULL,
    [perception]     INT            NOT NULL,
    [willpower]      INT            NOT NULL,
    [ship_type_id]   INT            NOT NULL,
    [intelligence]   INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([bloodline_id] ASC),
    FOREIGN KEY ([ship_type_id]) REFERENCES [dbo].[items] ([type_id]),
    CONSTRAINT [FK_bloodlines_corporation_id] FOREIGN KEY ([corporation_id]) REFERENCES [dbo].[corporations] ([corporation_id])
);

