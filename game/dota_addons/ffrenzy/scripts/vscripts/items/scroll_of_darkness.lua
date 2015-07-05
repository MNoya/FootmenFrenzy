function Cast (event)
	local caster = event.caster
	local teamID = caster:GetTeamNumber()
	local future_time = GameRules:GetTimeOfDay() + 1
	GameRules:SetTimeOfDay(6.0)
	Timers:CreateTimer(30, function() GameRules:SetTimeOfDay(future_time) end)
	
	for _,dummy in pairs(FindUnitsInRadius(teamID, Vector(0,0,100), nil, 10, DOTA_UNIT_TARGET_TEAM_BOTH, DOTA_UNIT_TARGET_ALL,  DOTA_UNIT_TARGET_FLAG_NONE, FIND_ANY_ORDER, false)) do
	print("dummy found")
		--if dummy:GetTeamNumber() ~= teamID then
			--dummy:SetAbsOrigin(Vector(-5000,0,0))
			local dummyteam = dummy:GetTeamNumber()
			dummy:RemoveSelf()
			Timers:CreateTimer(30, function() 
				--dummy:SetAbsOrigin(Vector(0,0,100)) 
				CreateUnitByName("dummy_vision", Vector(0, 0, 100), false, nil, nil, dummyteam)
			end)
		--end
	end
	

end