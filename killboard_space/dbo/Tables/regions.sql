CREATE TABLE [dbo].[regions] (
    [region_id]   INT            IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (MAX) NOT NULL,
    [description] NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([region_id] ASC)
);

