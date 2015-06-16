function modifier_item_scourge_bone_chimes_datadriven_lifesteal_aura_on_attack_landed(keys)
	local isBuilding = target:FindAbilityByName("ability_building")
	if not isBuilding == nil and keys.target.GetInvulnCount == nil and not keys.target:IsMechanical() then
		keys.ability:ApplyDataDrivenModifier(keys.attacker, keys.attacker, "modifier_item_scourge_bone_chimes_datadriven_lifesteal_aura_lifesteal", {duration = 0.03})
	end
end