CREATE TABLE [dbo].[positions] (
    [position_id] INT        IDENTITY (1, 1) NOT NULL,
    [x]           FLOAT (53) NOT NULL,
    [y]           FLOAT (53) NOT NULL,
    [z]           FLOAT (53) NOT NULL,
    PRIMARY KEY CLUSTERED ([position_id] ASC)
);

