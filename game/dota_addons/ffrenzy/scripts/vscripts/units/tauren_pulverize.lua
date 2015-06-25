function OnProc( event )
	local caster = event.caster
	local owner = caster:GetOwner()
	local ownerID = owner:GetPlayerID()
	local radius = event.Radius
	local teamID = caster:GetTeam()
	local ability_damage = event.Damage
	
	caster:StartGesture(ACT_DOTA_CAST_ABILITY_2)
	Timers:CreateTimer(0.69, function() 
		for _, unit in pairs( Entities:FindAllInSphere(caster:GetAbsOrigin(), radius) ) do
			if unit:GetTeamNumber() ~= teamID then
				ApplyDamage({ victim = unit, attacker = caster, damage = ability_damage, damage_type = DAMAGE_TYPE_PHYSICAL })
			end
		end
	end)


end