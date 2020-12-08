CREATE TABLE [dbo].[factions] (
    [faction_id]             INT            IDENTITY (1, 1) NOT NULL,
    [name]                   NVARCHAR (MAX) NOT NULL,
    [corporation_id]         INT            NULL,
    [description]            NVARCHAR (MAX) NOT NULL,
    [is_unique]              BIT            DEFAULT ((0)) NOT NULL,
    [size_factor]            FLOAT (53)     NOT NULL,
    [system_id]              INT            NOT NULL,
    [station_count]          INT            NOT NULL,
    [station_system_count]   INT            NOT NULL,
    [militia_corporation_id] INT            NULL,
    PRIMARY KEY CLUSTERED ([faction_id] ASC),
    FOREIGN KEY ([system_id]) REFERENCES [dbo].[systems] ([system_id]),
    CONSTRAINT [FK_factions_corporation_id] FOREIGN KEY ([corporation_id]) REFERENCES [dbo].[corporations] ([corporation_id])
);

