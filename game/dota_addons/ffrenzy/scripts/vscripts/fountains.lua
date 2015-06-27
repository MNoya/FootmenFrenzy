function team_2_fountain(trigger)
print(trigger.activator)
	if trigger.activator:GetTeam() ~= 2 then
		FindClearSpaceForUnit(trigger.activator, Entities:FindByName(nil, "team_2_fountain_blocker"):GetAbsOrigin(), true)
	end
end

--------------------------------------------------------------------------------------------------------------------

function team_3_fountain(trigger)
	if trigger.activator:GetTeam() ~= 3 then
		FindClearSpaceForUnit(trigger.activator, Entities:FindByName(nil, "team_3_fountain_blocker"):GetAbsOrigin(), true)
	end
end

--------------------------------------------------------------------------------------------------------------------

function team_6_fountain(trigger)
	if trigger.activator:GetTeam() ~= 6 then
		FindClearSpaceForUnit(trigger.activator, Entities:FindByName(nil, "team_6_fountain_blocker"):GetAbsOrigin(), true)
	end
end

--------------------------------------------------------------------------------------------------------------------

function team_7_fountain(trigger)
	if trigger.activator:GetTeam() ~= 7 then
		FindClearSpaceForUnit(trigger.activator, Entities:FindByName(nil, "team_7_fountain_blocker"):GetAbsOrigin(), true)
	end
end

