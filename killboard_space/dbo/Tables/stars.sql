CREATE TABLE [dbo].[stars] (
    [star_id]        INT            IDENTITY (1, 1) NOT NULL,
    [name]           NVARCHAR (MAX) NOT NULL,
    [system_id]      INT            NOT NULL,
    [type_id]        INT            NOT NULL,
    [age]            BIGINT         NULL,
    [luminosity]     FLOAT (53)     NOT NULL,
    [radius]         BIGINT         NULL,
    [spectral_class] VARCHAR (10)   NULL,
    [temperature]    INT            NULL,
    PRIMARY KEY CLUSTERED ([star_id] ASC),
    FOREIGN KEY ([system_id]) REFERENCES [dbo].[systems] ([system_id]),
    FOREIGN KEY ([type_id]) REFERENCES [dbo].[items] ([type_id])
);

