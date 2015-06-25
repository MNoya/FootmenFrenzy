function OnHit( event )
	local caster = event.caster
	local radius = event.Radius
	local teamID = caster:GetTeam()
	local ability_damage = event.Damage
	local target = event.target
	
	for _, unit in pairs( Entities:FindAllInSphere(target:GetAbsOrigin(), radius) ) do
		if unit:GetTeamNumber() ~= teamID and unit ~= target then
			ApplyDamage({ victim = unit, attacker = caster, damage = ability_damage, damage_type = DAMAGE_TYPE_PHYSICAL })
		end
	end


end