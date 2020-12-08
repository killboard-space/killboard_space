CREATE TABLE [dbo].[categories] (
    [category_id] INT            IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (MAX) NOT NULL,
    [published]   BIT            DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([category_id] ASC)
);

