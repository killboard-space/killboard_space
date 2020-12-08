CREATE TABLE [dbo].[constellations] (
    [constellation_id] INT            IDENTITY (1, 1) NOT NULL,
    [name]             NVARCHAR (MAX) NOT NULL,
    [region_id]        INT            NOT NULL,
    [position_id]      INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([constellation_id] ASC),
    FOREIGN KEY ([position_id]) REFERENCES [dbo].[positions] ([position_id]),
    FOREIGN KEY ([region_id]) REFERENCES [dbo].[regions] ([region_id])
);

