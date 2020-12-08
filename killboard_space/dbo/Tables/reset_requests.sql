CREATE TABLE [dbo].[reset_requests] (
    [request_id]  INT            NOT NULL,
    [user_id]     INT            NOT NULL,
    [hash]        NVARCHAR (MAX) NOT NULL,
    [create_time] DATETIME       NOT NULL,
    [expire_time] DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([request_id] ASC),
    FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([user_id])
);

