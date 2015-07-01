function CheckRange (event)

	local caster = event.caster
	local target = event.target
	local ability = event.ability
	local inrange = false
	
	for _, unit in pairs(Entities:FindAllInSphere(caster:GetAbsOrigin(), ability:GetCastRange())) do
		if unit == target then
			inrange = true
		end
	end
	
	if not inrange then
		ability:EndChannel(true)
	end
end