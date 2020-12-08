CREATE TABLE [dbo].[access_tokens] (
    [id]            INT           IDENTITY (1, 1) NOT NULL,
    [char_id]       INT           NOT NULL,
    [access_token]  VARCHAR (MAX) NOT NULL,
    [refresh_token] VARCHAR (500) NOT NULL,
    [date_added]    DATETIME      NOT NULL,
    [expires_on]    DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_access_tokens_char_id] FOREIGN KEY ([char_id]) REFERENCES [dbo].[characters] ([character_id])
);

