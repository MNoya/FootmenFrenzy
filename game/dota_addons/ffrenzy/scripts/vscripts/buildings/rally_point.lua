function SpawnUnit( event )
	local caster = event.caster
	local owner = caster:GetOwner()
	local player = caster:GetPlayerOwner()
	local playerID = player:GetPlayerID()
	local hero = player:GetAssignedHero()
	local unit_name = event.UnitName
	local position = GetInitialRallyPoint( event )
	local teamID = caster:GetTeam()
	
	local unit = CreateUnitByName(unit_name, position, true, owner, owner, caster:GetTeamNumber())
	
	
	-- Wearables
	for k, v in pairs(unit:GetChildren()) do 
		if v:GetClassname() == "dota_item_wearable" then
			local model = v:GetModelName()
			print(v:GetModelName())
			if (not string.match(model, "luna_head") and not string.match(model, "dragon_knight/weapon") and not string.match(model, "weaver_head") 
			and not string.match(model, "weaver_legs") and not string.match(model, "weaver_arms") and not string.match(model, "weapon") and not string.match(model, "windrunner_bow") 
			and not string.match(model, "huskar_spear") and not string.match(model, "huskar_dagger") and not string.match(model, "mount") and not string.match(model, "windrunner_quiver") 
			and not string.match(model, "furion_staff") and not string.match(model, "furion_horns") and not string.match(model, "blood_chaser") and not string.match(model, "pugna_head")
			and not string.match(model, "pugna_shoulder") and not string.match(model, "buttercup") and not string.match(model, "leftarm") and not string.match(model, "righthook")
			and not string.match(model, "enchantress_hair") and not string.match(model, "knight_mace") and not string.match(model, "horse_foretold") ) then
				v:SetRenderColor(GameRules.TeamColors[teamID][1],GameRules.TeamColors[teamID][2],GameRules.TeamColors[teamID][3])
			end
		end 
	end 

	-- Make sure the unit gets stuck
	FindClearSpaceForUnit(unit, position, true)
	unit:AddNewModifier(caster, nil, "modifier_phased", { duration = 0.03 })

	-- Add to hero.units table
	unit:SetOwner(hero)
	unit:SetControllableByPlayer(playerID, true)
	table.insert(hero.units, unit)
	
	-- Put the passive skill on cooldown (just for looks)
	local ability = event.ability
	ability:StartCooldown(10)

	-- Move to Rally Point
	if caster.flag then
		local position = caster.flag:GetAbsOrigin()
		Timers:CreateTimer(0.05, function() unit:MoveToPosition(position) end)
		--print(unit:GetUnitName().." moving to position",position)
	end
end

--[[
	Author: Noya
	Date: 11.02.2015.
	Creates a rally point flag for this unit, removing the old one if there was one
]]
function SetRallyPoint( event )
	local caster = event.caster
	local origin = caster:GetOrigin()

	-- Need to wait one frame for the building to be properly positioned
	Timers:CreateTimer(function()

		-- If there's an old flag, remove
		if caster and caster.flag then
			caster.flag:RemoveSelf()
		end

		-- Find vector towards 0,0,0 for the initial rally point
		if not IsValidEntity(caster) then
			return
		end
		origin = caster:GetOrigin()
		local forwardVec = Vector(0,0,0) - origin
		forwardVec = forwardVec:Normalized()

		local point = event.target_points[1]

		-- Make a flag dummy
		caster.flag = CreateUnitByName("dummy_unit", point, false, caster, caster, caster:GetTeamNumber())

		local particle = ParticleManager:CreateParticleForTeam("particles/rally_flag.vpcf", PATTACH_ABSORIGIN_FOLLOW, caster.flag, caster:GetTeamNumber())
		ParticleManager:SetParticleControl(particle, 0, point) -- Position
		ParticleManager:SetParticleControl(particle, 1, caster:GetAbsOrigin()) --Orientation
		ParticleManager:SetParticleControl(particle, 15, GameRules.TeamColors[caster:GetTeamNumber()]) --Color

		--DebugDrawLine(caster:GetAbsOrigin(), point, 255, 255, 255, false, 10)

		--print(caster:GetUnitName().." sets rally point on ",point)
	end)
end

function GetInitialRallyPoint( event )
	local caster = event.caster

	-- For the initial rally point, get point away from the building looking towards (0,0,0)
	local origin = caster:GetOrigin()
	local forwardVec = Vector(0,0,0) - origin
	forwardVec = forwardVec:Normalized()
	local initial_spawn_position = origin + forwardVec * 220

	if initial_spawn_position then
		return initial_spawn_position
	else
		print("Fail, no initial rally point, this shouldn't happen")
		return origin
	end
end

function PreventTurning( event )
	local caster = event.caster
	caster:SetForwardVector( ( Vector(0,0,0) - caster:GetAbsOrigin() ):Normalized() )
end