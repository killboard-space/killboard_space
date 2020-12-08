CREATE TABLE [dbo].[planets] (
    [planet_id]    INT            IDENTITY (1, 1) NOT NULL,
    [name]         NVARCHAR (MAX) NOT NULL,
    [system_id]    INT            NOT NULL,
    [item_type_id] INT            NOT NULL,
    [position_id]  INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([planet_id] ASC),
    FOREIGN KEY ([item_type_id]) REFERENCES [dbo].[items] ([type_id]),
    FOREIGN KEY ([position_id]) REFERENCES [dbo].[positions] ([position_id]),
    FOREIGN KEY ([system_id]) REFERENCES [dbo].[systems] ([system_id])
);

