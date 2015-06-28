-- This will put a set of predefined undroppable items on the casters inventory
function GiveBaseItems( event )
	local caster = event.caster
	local owner = caster:GetOwner()
	local player = caster:GetPlayerOwner()
	local hero = player:GetAssignedHero()

	-- Don't do it for towers
	if string.find(caster:GetUnitName(), "tower") then
		return
	end

	-- Check the current level of upgrades and give the items on their proper rank
	local upgrades = hero.upgrades -- Table of the current upgrade levels

	local upgrade_weapon_level = hero.upgrades["upgrade_weapon"]
	if upgrade_weapon_level then
		local next_upgrade_level = upgrade_weapon_level + 1
		local item_upgrade_weapon = CreateItem("item_upgrade_weapon"..next_upgrade_level, owner, caster)
		caster:AddItem(item_upgrade_weapon)
	else
		local item_upgrade_weapon = CreateItem("item_upgrade_weapon1", owner, caster)
		caster:AddItem(item_upgrade_weapon)
	end

	local upgrade_armor_level = hero.upgrades["upgrade_armor"]
	if upgrade_armor_level then
		local next_upgrade_level = upgrade_armor_level + 1
		local item_upgrade_armor = CreateItem("item_upgrade_armor"..next_upgrade_level, owner, caster)
		caster:AddItem(item_upgrade_armor)
	else
		local item_upgrade_armor = CreateItem("item_upgrade_armor1", owner, caster)
		caster:AddItem(item_upgrade_armor)
	end

	-- Race item: Check the building race to add the according upgrade-item
	local building_name = caster:GetUnitName()
	local race_training_level = 1
	if StringStartsWith(building_name, "human") then
		race_training_level = hero.upgrades["upgrade_human_training"]
		if race_training_level then
			local next_upgrade_level = race_training_level + 1
			local item_upgrade_human_training = CreateItem("item_upgrade_human_training"..next_upgrade_level, owner, caster)
			caster:AddItem(item_upgrade_human_training)
		else
			local item_upgrade_armor = CreateItem("item_upgrade_human_training1", owner, caster)
			caster:AddItem(item_upgrade_armor)
		end
	elseif StringStartsWith(building_name, "nightelf") then
		race_training_level = hero.upgrades["upgrade_nightelf_training"]
		if race_training_level then
			local next_upgrade_level = race_training_level + 1
			local item_upgrade_nightelf_training = CreateItem("item_upgrade_nightelf_training"..next_upgrade_level, owner, caster)
			caster:AddItem(item_upgrade_nightelf_training)
		else
			local item_upgrade_armor = CreateItem("item_upgrade_nightelf_training1", owner, caster)
			caster:AddItem(item_upgrade_armor)
		end
	elseif StringStartsWith(building_name, "orc") then
		race_training_level = hero.upgrades["upgrade_orc_training"]
		if race_training_level then
			local next_upgrade_level = race_training_level + 1
			local item_upgrade_orc_training = CreateItem("item_upgrade_orc_training"..next_upgrade_level, owner, caster)
			caster:AddItem(item_upgrade_orc_training)
		else
			local item_upgrade_armor = CreateItem("item_upgrade_orc_training1", owner, caster)
			caster:AddItem(item_upgrade_armor)
		end
	elseif StringStartsWith(building_name, "undead") then
		race_training_level = hero.upgrades["upgrade_undead_training"]
		if race_training_level then
			local next_upgrade_level = race_training_level + 1
			local item_upgrade_undead_training = CreateItem("item_upgrade_undead_training"..next_upgrade_level, owner, caster)
			caster:AddItem(item_upgrade_undead_training)
		else
			local item_upgrade_armor = CreateItem("item_upgrade_undead_training1", owner, caster)
			caster:AddItem(item_upgrade_armor)
		end
	else
		print("ERROR In building name, can't give any race item to "..building_name)
	end

	local item_rally = CreateItem("item_rally", owner, caster)
	caster:AddItem(item_rally)

	local item_filler1 = CreateItem("item_filler", owner, caster)
		caster:AddItem(item_filler1)

	local item_filler2 = CreateItem("item_filler", owner, caster)
		caster:AddItem(item_filler2)

end