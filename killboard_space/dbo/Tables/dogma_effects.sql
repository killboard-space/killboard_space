CREATE TABLE [dbo].[dogma_effects] (
    [effect_id]                   INT            NOT NULL,
    [description]                 NVARCHAR (500) NULL,
    [disallow_auto_repeat]        BIT            NULL,
    [dischard_attribute_id]       INT            NULL,
    [display_name]                NVARCHAR (500) NULL,
    [duration_attribute_id]       INT            NULL,
    [effect_gategory]             INT            NULL,
    [electronic_chance]           BIT            NULL,
    [falloff_attribute_id]        INT            NULL,
    [icon_id]                     INT            NULL,
    [is_assistance]               BIT            NULL,
    [is_offensive]                BIT            NULL,
    [is_warp_safe]                BIT            NULL,
    [name]                        NVARCHAR (500) NULL,
    [post_expression]             INT            NULL,
    [pre_expression]              INT            NULL,
    [published]                   BIT            NULL,
    [range_attribute_id]          INT            NULL,
    [range_chance]                BIT            NULL,
    [tracking_speed_attribute_id] INT            NULL,
    CONSTRAINT [PK_dogma_effects_effect_id] PRIMARY KEY CLUSTERED ([effect_id] ASC)
);

