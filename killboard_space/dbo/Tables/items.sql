CREATE TABLE [dbo].[items] (
    [type_id]      INT            IDENTITY (1, 1) NOT NULL,
    [name]         NVARCHAR (MAX) NOT NULL,
    [capacity]     INT            NULL,
    [description]  NVARCHAR (MAX) NOT NULL,
    [group_id]     INT            NOT NULL,
    [icon_id]      INT            NULL,
    [mass]         REAL           NULL,
    [portion_size] INT            NULL,
    [published]    BIT            DEFAULT ((0)) NOT NULL,
    [radius]       REAL           NULL,
    [volume]       REAL           NULL,
    PRIMARY KEY CLUSTERED ([type_id] ASC),
    FOREIGN KEY ([group_id]) REFERENCES [dbo].[groups] ([group_id])
);

