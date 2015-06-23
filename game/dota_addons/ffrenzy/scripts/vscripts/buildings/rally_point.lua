require("apply_modifier")
function SpawnUnit( event )
	local caster = event.caster
	local owner = caster:GetOwner()
	local player = caster:GetPlayerOwner()
	local playerID = player:GetPlayerID()
	local hero = player:GetAssignedHero()
	local unit_name = event.UnitName
	local position = GetInitialRallyPoint( event )
	
	local unit = CreateUnitByName(unit_name, position, true, owner, owner, caster:GetTeamNumber())
	

	-- Make sure the unit gets stuck
	FindClearSpaceForUnit(unit, position, true)
	unit:AddNewModifier(caster, nil, "modifier_phased", { duration = 0.03 })

	-- Add to player.units table
	unit:SetOwner(hero)
	unit:SetControllableByPlayer(playerID, true)
	table.insert(player.units, unit)
	
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
		if caster.flag then
			caster.flag:RemoveSelf()
		end

		-- Make a new one
		caster.flag = Entities:CreateByClassname("prop_dynamic")

		-- Find vector towards 0,0,0 for the initial rally point
		if not IsValidEntity(caster) then
			return
		end
		origin = caster:GetOrigin()
		local forwardVec = Vector(0,0,0) - origin
		forwardVec = forwardVec:Normalized()

		local point = event.target_points[1]

		local flag_model = "models/particle/legion_duel_banner.vmdl"

		caster.flag:SetAbsOrigin(point)
		caster.flag:SetModel(flag_model)
		caster.flag:SetModelScale(0.7)
		--caster.flag:SetForwardVector(forwardVec)

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


function DetectRightClick( event )
	local point = event.target_points[1]

	print("####",point)
end