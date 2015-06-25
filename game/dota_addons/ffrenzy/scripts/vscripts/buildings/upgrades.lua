--[[
	Author: Noya
	Date: 19.02.2015.
	Replaces the building to the upgraded unit name
]]
function UpgradeBuilding( event )
	local caster = event.caster
	local new_unit = event.UnitName
	local spawn_ability = event.UnitSpawn
	local position = caster:GetAbsOrigin()
	local hero = caster:GetPlayerOwner():GetAssignedHero()
	local playerID = hero:GetPlayerID()
	local player = PlayerResource:GetPlayer(playerID)
	local currentHealthPercentage = caster:GetHealth()/caster:GetMaxHealth()

	-- Remove the old building from the game
	local old_flag = caster.flag
	if IsValidEntity(caster) then
		caster:SetAbsOrigin(Vector(6000, -6000, 0))
		--caster:ForceKill(true)
        caster:RemoveSelf()
    end

	local building = CreateUnitByName(new_unit, position, true, hero, hero, hero:GetTeamNumber())
	building:SetOwner(hero)
	building:SetControllableByPlayer(playerID, true)
	building:SetAbsOrigin(position)
	building:RemoveModifierByName("modifier_invulnerable")
	local newRelativeHP = math.ceil(building:GetMaxHealth() * currentHealthPercentage)
	if newRelativeHP == 0 then newRelativeHP = 1 end --just incase rounding goes wrong
	building:SetHealth(newRelativeHP)
	building.flag = old_flag

	-- Update the player base
	player.base = building
	
	-- Teach spawn ability
	if spawn_ability ~= nil and new_unit ~= "human_guard_tower" and new_unit ~= "human_cannon_tower" and new_unit ~= "human_arcane_tower"  then
		building:AddAbility(spawn_ability)
		local ability = building:FindAbilityByName(spawn_ability)
		ability:SetLevel(1)
	end

	-- Unstuck any units
	Timers:CreateTimer(0.1, function()
		local units = FindUnitsInRadius(hero:GetTeamNumber(), position, nil, building:GetHullRadius()*2, DOTA_UNIT_TARGET_TEAM_FRIENDLY, DOTA_UNIT_TARGET_BASIC, 0, 0, false)
		for _,unit in pairs(units) do
			FindClearSpaceForUnit(unit, unit:GetAbsOrigin(), true)
		end
	end)

end

-- Forces an ability to level 0
function SetLevel0( event )
	local ability = event.ability
	if ability:GetLevel() == 1 then
		ability:SetLevel(0)	
	end
end