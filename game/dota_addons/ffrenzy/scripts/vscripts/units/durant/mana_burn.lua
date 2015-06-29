function ManaBurn( event )
	-- Variables
	local target = event.target
	local caster = event.caster
	local ability = event.ability
	local abilityDamageType = ability:GetAbilityDamageType()
	local mana_burn = ability:GetLevelSpecialValueFor("mana_burn", ability:GetLevel() - 1 )
	local damage_per_mana = ability:GetLevelSpecialValueFor("damage_per_mana", ability:GetLevel() - 1 )
	local targetMana = target:GetMana()
	local aura_duration = ability:GetLevelSpecialValueFor("duration", ability:GetLevel() - 1 )

	-- Set the new target mana
	local newMana = targetMana - mana_burn
	target:SetMana( newMana )

	-- Check how much damage to do
	-- Discount mana burn over the minimum 0
	if newMana < 0 then
		mana_burn = mana_burn + newMana
	end

	-- Do the damage
	ApplyDamage({ victim = target, attacker = caster, damage = mana_burn, damage_type = abilityDamageType })
	
	event.ability:ApplyDataDrivenModifier(caster, caster, "modifier_mana_aura", {duration = aura_duration*(mana_burn/100)})

end