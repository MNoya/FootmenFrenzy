function Cast (event)
	local caster = event.caster
	local ability = event.ability
	local targets = event.target_entities
	local teamID = caster:GetTeamNumber()
	local radius = ability:GetLevelSpecialValueFor( "radius", ability:GetLevel() - 1 )
	
	for _,unit in pairs (targets) do
		if unit:GetTeamNumber() == teamID then
			print("ally")
			unit:Purge(false, true, false, false, false)
		else
			print("enemy")
			unit:Purge(true, false, false, false, false)
		end
		if unit:IsSummoned() then
			ApplyDamage({ victim = unit, attacker = event.target, damage = damage, damage_type = abilityDamageType}) 
		end
	end
end