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
	if IsValidEntity(caster) then

        -- Remove the rally flag if there is one
        if caster.flag then
			caster.flag:RemoveSelf()
		end

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
	
	-- Teach spawn ability
    building:AddAbility(spawn_ability)
    local ability = building:FindAbilityByName(spawn_ability)
    ability:SetLevel(1)

end

-- Forces an ability to level 0
function SetLevel0( event )
	local ability = event.ability
	if ability:GetLevel() == 1 then
		ability:SetLevel(0)	
	end
end