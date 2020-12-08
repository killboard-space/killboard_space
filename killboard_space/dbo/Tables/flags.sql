CREATE TABLE [dbo].[flags] (
    [flag_id] INT            IDENTITY (1, 1) NOT NULL,
    [name]    NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([flag_id] ASC)
);

