CREATE TABLE [dbo].[ancestries] (
    [ancestry_id]       INT            NOT NULL,
    [name]              NVARCHAR (MAX) NOT NULL,
    [bloodline_id]      INT            NOT NULL,
    [icon_id]           INT            NULL,
    [short_description] NVARCHAR (250) NOT NULL,
    [description]       NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([ancestry_id] ASC),
    FOREIGN KEY ([bloodline_id]) REFERENCES [dbo].[bloodlines] ([bloodline_id])
);

