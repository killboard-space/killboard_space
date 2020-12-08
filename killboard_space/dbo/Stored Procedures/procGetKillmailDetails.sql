
-- =============================================
-- Author:      Hunter Sharpe
-- Create Date: 06/17/2020
-- Description: Retrieve Killmail details from all or single killmail(s).
-- =============================================
CREATE PROCEDURE [dbo].[procGetKillmailDetails]
(
    @killmailId int = 0,
	@allianceId int = 0,
	@corporationId int = 0,
	@characterId int = 0,
	@attackerId int = 0,
	@systemId int = 0,
	@constellationId int = 0,
	@regionId int = 0,
	@shipTypeId int = 0,
	@groupId int = 0
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	IF @killmailId = -1 -- All
		select
			k.killmail_id,
			k.hash,
			cv.character_id as victim_character_id,
			cv.name as victim_name,
			cv.corporation_id,
			cv.alliance_id,
			c.name as corporation_name,
			a.name as alliance_name,
			count(att.char_id) as attackers,
			cf.character_id as final_blow_char,
			cf.name as final_blow_char_name,
			v.ship_type_id,
			i.name as ship_name,
			s.system_id,
			s.name as system_name,
			r.region_id,
			r.name as region_name,
			k.killmail_time
		from killmails k
		join victims v on v.killmail_id = k.killmail_id
		join characters cv on cv.character_id = v.char_id
		join corporations c on c.corporation_id = cv.corporation_id
		join alliances a on a.alliance_id = cv.alliance_id
		join attackers att on att.killmail_id = k.killmail_id
		join characters cf on cf.character_id in (select atv.char_id from attackers atv where atv.killmail_id = k.killmail_id and atv.final_blow = 1)
		join systems s on s.system_id = k.system_id
		join constellations ct on ct.constellation_id = s.constellation_id
		join regions r on r.region_id = ct.region_id
		join items i on i.type_id = v.ship_type_id
		group by 
			k.killmail_id, 
			k.hash, 
			cv.character_id, 
			cv.name, 
			cv.corporation_id, 
			cv.alliance_id, 
			c.name, 
			a.name,
			cf.character_id,
			cf.name,
			v.ship_type_id,
			i.name,
			s.system_id,
			s.name,
			r.region_id,
			r.name,
			k.killmail_time
	ELSE IF @killmailId != 0 -- Single Killmail
		select
			k.killmail_id,
			k.hash,
			cv.character_id as victim_character_id,
			cv.name as victim_name,
			cv.corporation_id,
			cv.alliance_id,
			c.name as corporation_name,
			a.name as alliance_name,
			count(att.char_id) as attackers,
			cf.character_id as final_blow_char,
			cf.name as final_blow_char_name,
			v.ship_type_id,
			i.name as ship_name,
			s.system_id,
			s.name as system_name,
			r.region_id,
			r.name as region_name,
			k.killmail_time
		from killmails k
		join victims v on v.killmail_id = k.killmail_id
		join characters cv on cv.character_id = v.char_id
		join corporations c on c.corporation_id = cv.corporation_id
		join alliances a on a.alliance_id = cv.alliance_id
		join attackers att on att.killmail_id = k.killmail_id
		join characters cf on cf.character_id in (select atv.char_id from attackers atv where atv.killmail_id = k.killmail_id and atv.final_blow = 1)
		join systems s on s.system_id = k.system_id
		join constellations ct on ct.constellation_id = s.constellation_id
		join regions r on r.region_id = ct.region_id
		join items i on i.type_id = v.ship_type_id
		where k.killmail_id = @killmailId
		group by 
			k.killmail_id, 
			k.hash, 
			cv.character_id, 
			cv.name, 
			cv.corporation_id, 
			cv.alliance_id, 
			c.name, 
			a.name,
			cf.character_id,
			cf.name,
			v.ship_type_id,
			i.name,
			s.system_id,
			s.name,
			r.region_id,
			r.name,
			k.killmail_time
	ELSE -- Apply Filter
		select
			k.killmail_id,
			k.hash,
			cv.character_id as victim_character_id,
			cv.name as victim_name,
			cv.corporation_id,
			cv.alliance_id,
			c.name as corporation_name,
			a.name as alliance_name,
			count(att.char_id) as attackers,
			cf.character_id as final_blow_char,
			cf.name as final_blow_char_name,
			v.ship_type_id,
			i.name as ship_name,
			s.system_id,
			s.name as system_name,
			r.region_id,
			r.name as region_name,
			k.killmail_time
		from killmails k
		join victims v on v.killmail_id = k.killmail_id
		join characters cv on cv.character_id = v.char_id
		join corporations c on c.corporation_id = cv.corporation_id
		join alliances a on a.alliance_id = cv.alliance_id
		join attackers att on att.killmail_id = k.killmail_id
		join characters cf on cf.character_id in (select atv.char_id from attackers atv where atv.killmail_id = k.killmail_id and atv.final_blow = 1)
		join systems s on s.system_id = k.system_id
		join constellations ct on ct.constellation_id = s.constellation_id
		join regions r on r.region_id = ct.region_id
		join items i on i.type_id = v.ship_type_id
		join groups g on g.group_id = i.group_id
		where (
			(@allianceId = 0 OR a.alliance_id = @allianceId)
			AND (@corporationId = 0 OR c.corporation_id = @corporationId)
			AND (@characterId = 0 OR cv.character_id = @characterId)
			AND (@systemId = 0 OR s.system_id = @systemId)
			AND (@constellationId = 0 OR ct.constellation_id = @constellationId)
			AND (@regionId = 0 OR r.region_id = @regionId)
			AND (@attackerId = 0 OR @attackerId in (select atv.char_id from attackers atv where atv.killmail_id = k.killmail_id))
			AND (@shipTypeId = 0 OR v.ship_type_id = @shipTypeId)
		)
		group by 
			k.killmail_id, 
			k.hash, 
			cv.character_id, 
			cv.name, 
			cv.corporation_id, 
			cv.alliance_id, 
			c.name, 
			a.name,
			cf.character_id,
			cf.name,
			v.ship_type_id,
			i.name,
			s.system_id,
			s.name,
			r.region_id,
			r.name,
			k.killmail_time
END