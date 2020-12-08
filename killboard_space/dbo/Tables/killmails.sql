CREATE TABLE [dbo].[killmails] (
    [hash]                NVARCHAR (MAX) NOT NULL,
    [started_processing]  DATETIME       NULL,
    [finished_processing] DATETIME       NULL,
    [killmail_id]         INT            NOT NULL,
    [killmail_time]       DATETIME       NULL,
    [date_added]          DATETIME       NOT NULL,
    [system_id]           INT            NULL,
    PRIMARY KEY CLUSTERED ([killmail_id] ASC),
    CONSTRAINT [FK_killmails_system_id_systems_system_id] FOREIGN KEY ([system_id]) REFERENCES [dbo].[systems] ([system_id])
);

