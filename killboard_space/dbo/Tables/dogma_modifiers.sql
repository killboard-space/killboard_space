CREATE TABLE [dbo].[dogma_modifiers] (
    [ref_effect_id]          INT            NOT NULL,
    [domain]                 NVARCHAR (500) NULL,
    [effect_id]              INT            NULL,
    [func]                   NVARCHAR (500) NULL,
    [modified_attribute_id]  INT            NOT NULL,
    [modifying_attribute_id] INT            NOT NULL,
    [operator]               INT            NULL,
    [id]                     INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_dogma_modifiers_ref_effect_id_id] PRIMARY KEY CLUSTERED ([ref_effect_id] ASC, [id] ASC),
    CONSTRAINT [FK_dogma_modifiers_ref_effect_id] FOREIGN KEY ([ref_effect_id]) REFERENCES [dbo].[dogma_effects] ([effect_id])
);

