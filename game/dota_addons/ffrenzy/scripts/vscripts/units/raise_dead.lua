function RaiseDead( event )
	local caster = event.caster
	local ability = event.ability

	local pID = caster:GetPlayerOwnerID()
	local team = caster:GetTeamNumber()
	local duration = ability:GetLevelSpecialValueFor( "duration", ability:GetLevel() - 1 )
	--local fv = caster:GetForwardVector()
	--local origin = caster:GetAbsOrigin()
	--local position = origin + fv * 200
	
	
	Timers:CreateTimer(0.1,function ()
		if ability:GetCooldownTimeRemaining() == 0 and (caster:IsIdle() or caster:IsAttacking()) then
			-- Find all corpse entities in the radius
			local targets = Entities:FindAllByNameWithin("npc_dota_creature", caster:GetAbsOrigin(), ability:GetCastRange())
			-- Go through every unit, stop at the first corpse found
			for _, unit in pairs(targets) do
				if unit.corpse_expiration ~= nil then
					
					
					ability:ApplyDataDrivenModifier(caster, caster, "modifier_raise_dead_cast_animation", nil)
				
					-- Create the skeleton
					local skeleton = CreateUnitByName("undead_skeletal_mage_skeleton_warrior", unit:GetAbsOrigin(), true, caster, caster, team)
					skeleton:SetControllableByPlayer(pID, true)
					FindClearSpaceForUnit(skeleton, unit:GetAbsOrigin(), true)

					-- Apply modifiers for the summon properties
					skeleton:AddNewModifier(caster, ability, "modifier_kill", {duration = duration})
					ability:ApplyDataDrivenModifier(caster, skeleton, "modifier_raise_dead", nil)

					-- Leave no corpses
					skeleton.no_corpse = true
		
					ability:StartCooldown(ability:GetCooldown(1))
					return 60
				end
			end
		end
		
		
		return 1
		
	end)
end