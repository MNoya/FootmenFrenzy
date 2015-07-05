function AutoCast (event)
	local caster = event.caster
	local ability = event.ability
	
	if ability:GetAutoCastState() and caster:GetMana() >= 5 and caster:IsAttacking() then
		local target = nil
		for _,unit in pairs (FindUnitsInRadius(caster:GetTeamNumber(), caster:GetAbsOrigin(), nil, ability:GetCastRange(), DOTA_UNIT_TARGET_TEAM_FRIENDLY, DOTA_UNIT_TARGET_HERO,  DOTA_UNIT_TARGET_FLAG_NONE, FIND_ANY_ORDER, false) ) do
			if not unit:HasModifier("modifier_inner_fire") then
				target = unit
				break
			end
		end
		if target == nil then
			for _,unit in pairs (FindUnitsInRadius(caster:GetTeamNumber(), caster:GetAbsOrigin(), nil, ability:GetCastRange(), DOTA_UNIT_TARGET_TEAM_FRIENDLY, DOTA_UNIT_TARGET_BASIC,  DOTA_UNIT_TARGET_FLAG_NONE, FIND_ANY_ORDER, false) ) do
				if not unit:HasModifier("modifier_inner_fire") then
					target = unit
					break
				end
			end
		end
		if target then
			caster:CastAbilityOnTarget(target, ability, caster:GetPlayerOwnerID())
		end
	end
end