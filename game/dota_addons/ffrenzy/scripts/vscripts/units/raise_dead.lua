function RaiseDead( event )
	Timers:CreateTimer(0.1,function ()
		local caster = event.caster
		local ability = event.ability

		local pID = caster:GetPlayerOwnerID()
		local team = caster:GetTeamNumber()
		local duration = ability:GetLevelSpecialValueFor( "duration", ability:GetLevel() - 1 )
		local fv = caster:GetForwardVector()
		local origin = caster:GetAbsOrigin()
		local position = origin + fv * 200

		local skeleton = CreateUnitByName("undead_skeletal_mage_skeleton_warrior", position, true, caster, caster, team)
		skeleton:SetControllableByPlayer(pID, true)
		FindClearSpaceForUnit(skeleton, position, true)

		-- Apply modifiers for the summon properties
		skeleton:AddNewModifier(caster, ability, "modifier_kill", {duration = duration})
		ability:ApplyDataDrivenModifier(caster, skeleton, "modifier_raise_dead", nil)

		-- Leave no corpses
		skeleton.no_corpse = true

		ability:StartCooldown(ability:GetCooldown(1))
	end)
end