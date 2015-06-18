function team_2_fountain(trigger)
	if trigger.activator:GetTeam() == 2 then
		trigger.activator:SetBaseHealthRegen(trigger.activator:GetBaseHealthRegen()*10)
	end
end

function team_2_fountain_leave(trigger)
	if trigger.activator:GetTeam() == 2 then
		trigger.activator:SetBaseHealthRegen(trigger.activator:GetBaseHealthRegen()/10)
	end
end

--------------------------------------------------------------------------------------------------------------------

function team_3_fountain(trigger)
	if trigger.activator:GetTeam() == 3 then
		trigger.activator:SetBaseHealthRegen(trigger.activator:GetBaseHealthRegen()*10)
	end
end

function team_3_fountain_leave(trigger)
	if trigger.activator:GetTeam() == 3 then
		trigger.activator:SetBaseHealthRegen(trigger.activator:GetBaseHealthRegen()/10)
	end
end

--------------------------------------------------------------------------------------------------------------------

function team_6_fountain(trigger)
	if trigger.activator:GetTeam() == 6 then
		trigger.activator:SetBaseHealthRegen(trigger.activator:GetBaseHealthRegen()*10)
	end
end

function team_6_fountain_leave(trigger)
	if trigger.activator:GetTeam() == 6 then
		trigger.activator:SetBaseHealthRegen(trigger.activator:GetBaseHealthRegen()/10)
	end
end

--------------------------------------------------------------------------------------------------------------------

function team_7_fountain(trigger)
	if trigger.activator:GetTeam() == 7 then
		trigger.activator:SetBaseHealthRegen(trigger.activator:GetBaseHealthRegen()*10)
	end
end

function team_7_fountain_leave(trigger)
	if trigger.activator:GetTeam() == 7 then
		trigger.activator:SetBaseHealthRegen(trigger.activator:GetBaseHealthRegen()/10)
	end
end

--------------------------------------------------------------------------------------------------------------------

function center_fountain(trigger)
	trigger.activator:SetBaseManaRegen(trigger.activator:GetStatsBasedManaRegen()*5)
end

function center_fountain_leave(trigger)
	trigger.activator:SetBaseManaRegen(trigger.activator:GetStatsBasedManaRegen()/5)
end