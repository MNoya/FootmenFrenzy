function OnHit( event )
	local caster = event.caster
	local owner = caster:GetOwner():GetPlayerID()
	--caster:AddAbility("tauren_pulverize_cast")
	--Timers:CreateTimer(0.03, function() caster:CastAbilityNoTarget(caster:GetAbilityByIndex(caster:GetAbilityCount()),owner) end)
	caster:CastAbilityNoTarget(caster:GetAbilityByIndex(1),owner)

end