CREATE TABLE [dbo].[stations] (
    [station_id] INT            IDENTITY (1, 1) NOT NULL,
    [name]       NVARCHAR (MAX) NOT NULL,
    [system_id]  INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([station_id] ASC),
    FOREIGN KEY ([system_id]) REFERENCES [dbo].[systems] ([system_id])
);

