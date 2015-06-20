function Spawn( event )
	local building = event.caster
	local unit_name = event.UnitName
	local position = GetInitialRallyPoint( event )
	local unit = CreateUnitByName(unit_name, building:GetAbsOrigin(), true, nil, nil, DOTA_TEAM_NEUTRALS)
	event.target = unit
	MoveToRallyPoint(event)
end