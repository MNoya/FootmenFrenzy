
function Spawn_Position(hero)
	print("spawn success")
	if hero:GetTeam() == 2 then
		FindClearSpaceForUnit(hero, Vector(-2400, -2400, 100), true)
	end
	if hero:GetTeam() == 3 then
		FindClearSpaceForUnit(hero, Vector(2400, 2400, 100), true)
	end
	if hero:GetTeam() == 6 then
		FindClearSpaceForUnit(hero, Vector(2400, -2400, 100), true)
	end
	if hero:GetTeam() == 7 then
		FindClearSpaceForUnit(hero, Vector(-2400, 2400, 100), true)
	end
end