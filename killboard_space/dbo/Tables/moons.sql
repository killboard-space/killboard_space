CREATE TABLE [dbo].[moons] (
    [moon_id]     INT            IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (MAX) NOT NULL,
    [planet_id]   INT            NOT NULL,
    [position_id] INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([moon_id] ASC),
    FOREIGN KEY ([planet_id]) REFERENCES [dbo].[planets] ([planet_id]),
    FOREIGN KEY ([position_id]) REFERENCES [dbo].[positions] ([position_id])
);

