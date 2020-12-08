CREATE TABLE [dbo].[groups] (
    [group_id]    INT            IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (MAX) NOT NULL,
    [category_id] INT            NOT NULL,
    [published]   BIT            NULL,
    PRIMARY KEY CLUSTERED ([group_id] ASC),
    FOREIGN KEY ([category_id]) REFERENCES [dbo].[categories] ([category_id])
);

