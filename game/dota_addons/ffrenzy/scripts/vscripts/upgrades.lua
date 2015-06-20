-- This is called after an upgrade is purchased
function UpgradeFinished( event )
	local caster = event.caster
	local player = caster:GetPlayerOwner()
	local upgrades = player.upgrades -- Table of the current upgrade levels
	local upgrade_level = event.Level
	local upgrade_name = event.Name

	player.upgrades[upgrade_name] = upgrade_level
	print("Upgrade Finished: "..upgrade_name..upgrade_level)
	--DeepPrintTable(player.upgrades)

	-- Upgrade all units
	for _,unit in pairs(player.units) do
		ApplyUpgrade(unit, upgrade_name)
	end

	-- Remove the item
	local item = event.ability
	caster:RemoveItem(item) --Pretty sure the item ability IS the item

	-- Add a new item rank if possible
	if upgrade_level < 20 then
		local next_rank = tonumber(upgrade_level) + 1
		local new_item_name = "item_"..upgrade_name..next_rank
		local new_item = CreateItem(new_item_name, caster, caster)
		caster:AddItem(new_item)
	end
end

-- Upgrades are applied with SetModifierStacks of a single modifier for each of the types.
-- OnEntitySpawned, check its name and apply upgrades for the player that owns it
function ApplyUpgrade(unit, upgrade_name)
	local player = unit:GetPlayerOwner()
	if not player then
		if not string.find(unit:GetUnitName(), "dummy") then
			print("ERROR UNIT "..unit:GetUnitName().." HAS NO PLAYER OWNER")
		end
		return
	end
	local upgrades = player.upgrades
	local upgrade_level = 0

	if player.upgrades[upgrade_name] then
		upgrade_level = player.upgrades[upgrade_name]
	else
		return
	end

	local ability = unit:FindAbilityByName(upgrade_name)
	local modifierName = "modifier_"..upgrade_name

	-- The ability level and stacks are updated to the current upgrade level
	if ability then
		ability:SetLevel(upgrade_level)
		-- Extra Health bonus on Human and Orc units
		if upgrade_name == "upgrade_human_training" then
			UpdateHealthBonus(unit, 30, upgrade_level)
		elseif upgrade_name == "upgrade_orc_training" then
			UpdateHealthBonus(unit, 15, upgrade_level)
		end

		--ability:ApplyDataDrivenModifier( unit, unit, modifierName, {} )
		unit:SetModifierStackCount( modifierName, ability, upgrade_level )
	else
		-- If it can't find the ability it means the unit might not benefit from the upgrade
		local unit_name = unit:GetUnitName()
		if upgrade_name == "upgrade_weapon" or upgrade_name == "upgrade_armor"	
		or ( upgrade_name == "upgrade_human_training" and IsHuman(unit_name) )
		or ( upgrade_name == "upgrade_nightelf_training" and IsNightElf(unit_name) )
		or ( upgrade_name == "upgrade_orc_training" and IsOrc(unit_name) )
		or ( upgrade_name == "upgrade_undead_training" and IsUndead(unit_name) ) then
			unit:AddAbility(upgrade_name)
			local new_ability = unit:FindAbilityByName(upgrade_name)
			new_ability:SetLevel(upgrade_level)
			new_ability:ApplyDataDrivenModifier( unit, unit, modifierName, {} )
			unit:SetModifierStackCount( modifierName, ability, upgrade_level )
		end

		-- Extra Health bonus on Human and Orc units
		if upgrade_name == "upgrade_human_training" then
			UpdateHealthBonus(unit, 30, upgrade_level)
		elseif upgrade_name == "upgrade_orc_training" then
			UpdateHealthBonus(unit, 15, upgrade_level)
		end
	end
end


-- Add Health through lua because MODIFIER_PROPERTY_HEALTH_BONUS doesn't work on npc_dota_creature zzz
function UpdateHealthBonus(unit, bonus_health, upgrade_level)
	local unit_name = unit:GetUnitName()
	local unitUnmodifiedBaseHealth = GameRules.UnitKV[unit_name]["StatusHealth"]
	local bonus_health_total = bonus_health * upgrade_level
	local newHP = unitUnmodifiedBaseHealth + bonus_health_total
	local currentHealthPercentage = unit:GetHealth()/unit:GetMaxHealth()
	unit:SetMaxHealth(newHP)
	unit:SetBaseMaxHealth(newHP)
	unit:SetHealth(math.ceil(newHP * currentHealthPercentage)) -- Keep relative HP
end



----------------------------------------------------
function IsHuman( unit_name )
	return StringStartsWith( unit_name, "human")
end

function IsNightElf( unit_name )
	return StringStartsWith( unit_name, "nightelf")
end

function IsOrc( unit_name )
	return StringStartsWith( unit_name, "orc")
end

function IsUndead( unit_name )
	return StringStartsWith( unit_name, "undead")
end
