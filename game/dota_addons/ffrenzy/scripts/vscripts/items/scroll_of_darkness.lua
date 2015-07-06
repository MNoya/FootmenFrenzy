function Cast (event)
	local caster = event.caster
	local teamID = caster:GetTeamNumber()
	local ability = event.ability
	local duration = ability:GetLevelSpecialValueFor("duration", (ability:GetLevel() - 1))
	
	local time_elapsed = 0
	local time_flow = 0.0020833333
	local future_time = GameRules:GetTimeOfDay() + duration*time_flow
	
	GameRules:SetTimeOfDay(0)

	--[[for x=-1000, 1000, 1000 do
		for y=-1000, 1000, 1000 do
			local dummy = CreateUnitByName("dummy_unit", Vector(x, y, 250), true, nil, nil, 4)
			local smoke = ParticleManager:CreateParticle("particles/scroll_of_darkness.vpcf", PATTACH_ABSORIGIN_FOLLOW, dummy)
			Timers:CreateTimer(duration, function() 
				ParticleManager:DestroyParticle(smoke, true)
			end)
		end
	end]]
	
	Timers:CreateTimer(1, function() 
		if time_elapsed < duration then
			GameRules:SetTimeOfDay(0)
			time_elapsed = time_elapsed + 1
			return 1
		else
			GameRules:SetTimeOfDay(future_time) 
		end
	end)
	
	for _,dummy in pairs(FindUnitsInRadius(teamID, Vector(0,0,100), nil, 10, DOTA_UNIT_TARGET_TEAM_BOTH, DOTA_UNIT_TARGET_ALL,  DOTA_UNIT_TARGET_FLAG_NONE, FIND_ANY_ORDER, false)) do
	print("dummy found")
		if dummy:GetTeamNumber() ~= teamID then
			local dummyteam = dummy:GetTeamNumber()
			dummy:SetNightTimeVisionRange(0)
			Timers:CreateTimer(duration, function() 
				dummy:SetNightTimeVisionRange(1800)
			end)
		end
	end
	

end