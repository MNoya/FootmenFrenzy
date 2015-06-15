function SpawnPosition(trigger)
	if trigger.activator:GetPlayerOwnerID() == 0 then
		trigger.activator:SetAbsOrigin(Vector(-3000, -1700, 100))
	end
	if trigger.activator:GetPlayerOwnerID() == 1 then
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
	end
end