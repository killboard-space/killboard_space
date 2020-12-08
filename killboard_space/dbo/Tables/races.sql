CREATE TABLE [dbo].[races] (
    [race_id]     INT            IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (MAX) NOT NULL,
    [alliance_id] INT            NOT NULL,
    [description] NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([race_id] ASC)
);

