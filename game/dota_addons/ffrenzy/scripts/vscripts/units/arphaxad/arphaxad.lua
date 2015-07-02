function OnCreated (event)

	local arphaxad = event.target
	
	for k, v in pairs(arphaxad:GetChildren()) do 
		if v:GetClassname() == "dota_item_wearable" then
			local model = v:GetModelName()
			if not string.match(model, "horse") and not string.match(model, "mount") and not string.match(model, "ogre_head") and not string.match(model, "goblin_body") and not string.match(model, "goblin_head") then
				v:SetRenderColor(GameRules.TeamColors[teamID][1],GameRules.TeamColors[teamID][2],GameRules.TeamColors[teamID][3])
				print(v:GetModelName())
			end
		end 
	end 
end