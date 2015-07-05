function Cast (event)
	local caster = event.caster
	local ability = event.ability
	local targets = event.target_entities
	local teamID = caster:GetTeamNumber()
	local radius = ability:GetLevelSpecialValueFor( "radius", ability:GetLevel() - 1 )
	local damage = ability:GetLevelSpecialValueFor( "damage" , ability:GetLevel() - 1 )
	
	
	
	for _,unit in pairs (targets) do
		if unit:GetTeamNumber() == teamID then
			print("ally")
			unit:Purge(false, true, false, false, false)
		else
			print("enemy")
			unit:Purge(true, false, false, false, false)
		end
		if unit:IsSummoned() then
			ApplyDamage({ victim = unit, attacker = caster, damage = damage, damage_type = abilityDamageType}) 
		end
	end
end

function Sound (event)
	EmitSoundOnLocationWithCaster(event.target_points[1], "Hero_Oracle.PurifyingFlames.Damage", event.caster)

end