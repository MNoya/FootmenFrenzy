function AutoCast (event)
	local caster = event.caster
	local ability = event.ability
	
	if ability:GetAutoCastState() and caster:GetMana() >= 5 and (caster:IsIdle() or caster:IsAttacking()) then
		local target = nil
		for _,unit in pairs (FindUnitsInRadius(caster:GetTeamNumber(), caster:GetAbsOrigin(), nil, ability:GetCastRange(), DOTA_UNIT_TARGET_TEAM_FRIENDLY, DOTA_UNIT_TARGET_HERO,  DOTA_UNIT_TARGET_FLAG_NONE, FIND_ANY_ORDER, false) ) do
			if unit:GetHealth() ~= unit:GetMaxHealth() then
				target = unit
				break
			end
		end
		if target then
			caster:CastAbilityOnTarget(target, ability, caster:GetPlayerOwnerID())
		else if caster:GetHealth() ~= caster:GetMaxHealth() then
				caster:CastAbilityOnTarget(caster, ability, caster:GetPlayerOwnerID())
			end
		end
	end
end