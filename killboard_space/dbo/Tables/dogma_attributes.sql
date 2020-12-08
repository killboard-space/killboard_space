CREATE TABLE [dbo].[dogma_attributes] (
    [attribute_id]  INT            NOT NULL,
    [default_value] FLOAT (53)     NULL,
    [description]   NVARCHAR (MAX) NULL,
    [display_name]  NVARCHAR (500) NULL,
    [high_is_good]  BIT            NULL,
    [icon_id]       INT            NULL,
    [name]          NVARCHAR (500) NULL,
    [published]     BIT            NULL,
    [stackable]     BIT            NULL,
    [unit_id]       INT            NULL,
    CONSTRAINT [PK_dogma_attributes_attribute_id] PRIMARY KEY CLUSTERED ([attribute_id] ASC)
);

