function modifier_item_scourge_bone_chimes(keys)
	local isBuilding = keys.target:FindAbilityByName("ability_building")
	if isBuilding == nil and keys.target.GetInvulnCount == nil and not keys.target:IsMechanical() then
		keys.ability:ApplyDataDrivenModifier(keys.attacker, keys.attacker, "modifier_item_scourge_bone_chimes_lifesteal", {duration = 0.03})
	end
end