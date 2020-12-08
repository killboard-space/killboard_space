CREATE TABLE [dbo].[stargates] (
    [stargate_id]             INT            IDENTITY (1, 1) NOT NULL,
    [name]                    NVARCHAR (MAX) NOT NULL,
    [system_id]               INT            NOT NULL,
    [type_id]                 INT            NOT NULL,
    [destination_stargate_id] INT            NOT NULL,
    [position_id]             INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([stargate_id] ASC),
    FOREIGN KEY ([destination_stargate_id]) REFERENCES [dbo].[stargates] ([stargate_id]),
    FOREIGN KEY ([position_id]) REFERENCES [dbo].[positions] ([position_id]),
    FOREIGN KEY ([system_id]) REFERENCES [dbo].[systems] ([system_id]),
    FOREIGN KEY ([type_id]) REFERENCES [dbo].[items] ([type_id])
);

