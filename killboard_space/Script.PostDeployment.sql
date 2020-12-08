/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
:r .\Scripts\dbo.alliances.Table.sql
:r .\Scripts\dbo.corporations.Table.sql
:r .\Scripts\dbo.characters.Table.sql
:r .\Scripts\dbo.categories.Table.sql
:r .\Scripts\dbo.groups.Table.sql
:r .\Scripts\dbo.items.Table.sql
:r .\Scripts\dbo.bloodlines.Table.sql
:r .\Scripts\dbo.ancestries.Table.sql
:r .\Scripts\dbo.positions.Table.sql
:r .\Scripts\dbo.positions2.Table.sql
:r .\Scripts\dbo.regions.Table.sql
:r .\Scripts\dbo.constellations.Table.sql
:r .\Scripts\dbo.systems.Table.sql
:r .\Scripts\dbo.factions.Table.sql
:r .\Scripts\dbo.dogma_effects.Table.sql
:r .\Scripts\dbo.dogma_modifiers.Table.sql
:r .\Scripts\dbo.planets.Table.sql
:r .\Scripts\dbo.stargates.Table.sql
:r .\Scripts\dbo.stars.Table.sql
:r .\Scripts\dbo.moons.Table.sql
:r .\Scripts\dbo.asteroid_belts.Table.sql
:r .\Scripts\dbo.dogma_attributes.Table.sql
:r .\Scripts\dbo.races.Table.sql