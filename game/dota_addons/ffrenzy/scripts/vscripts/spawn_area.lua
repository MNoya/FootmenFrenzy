-- Deprecated, using info_targets on the map instead

--3000 should be 2600

function Spawn_Position(trigger)
	print("spawn success")
	if trigger.activator:GetTeam() == 2 then
		trigger.activator:SetAbsOrigin(Vector(-2400, -2400, 100))
	end
	if trigger.activator:GetTeam() == 3 then
		trigger.activator:SetAbsOrigin(Vector(2400, 2400, 100))
	end
	if trigger.activator:GetTeam() == 6 then
		trigger.activator:SetAbsOrigin(Vector(2400, -2400, 100))
	end
	if trigger.activator:GetTeam() == 7 then
		trigger.activator:SetAbsOrigin(Vector(-2400, 2400, 100))
	end
	--[[if trigger.activator:GetPlayerOwnerID() == 1 then
		trigger.activator:SetAbsOrigin(Vector(-1700, -3000, 100))
	end
	if trigger.activator:GetPlayerOwnerID() == 2 then
		trigger.activator:SetAbsOrigin(Vector(3000, 1700, 100))
	end
	if trigger.activator:GetPlayerOwnerID() == 3 then
		trigger.activator:SetAbsOrigin(Vector(1700, 3000, 100))
	end
	if trigger.activator:GetPlayerOwnerID() == 5 then
		trigger.activator:SetAbsOrigin(Vector(3000, -1700, 100))
	end
	if trigger.activator:GetPlayerOwnerID() == 6 then
		trigger.activator:SetAbsOrigin(Vector(1700, -3000, 100))
	end
	if trigger.activator:GetPlayerOwnerID() == 7 then
		trigger.activator:SetAbsOrigin(Vector(-3000, 1700, 100))
	end
	if trigger.activator:GetPlayerOwnerID() == 8 then
		trigger.activator:SetAbsOrigin(Vector(-1700, 3000, 100))
	end]]
end