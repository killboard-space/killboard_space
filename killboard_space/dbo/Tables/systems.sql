CREATE TABLE [dbo].[systems] (
    [system_id]        INT            IDENTITY (1, 1) NOT NULL,
    [name]             NVARCHAR (MAX) NOT NULL,
    [constellation_id] INT            NOT NULL,
    [security_status]  REAL           NOT NULL,
    [security_class]   VARCHAR (2)    NULL,
    [position_id]      INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([system_id] ASC),
    FOREIGN KEY ([constellation_id]) REFERENCES [dbo].[constellations] ([constellation_id]),
    FOREIGN KEY ([position_id]) REFERENCES [dbo].[positions] ([position_id])
);

