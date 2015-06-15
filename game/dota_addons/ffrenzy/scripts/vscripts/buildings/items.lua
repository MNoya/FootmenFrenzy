-- This will put a set of predefined undroppable items on the casters inventory
function GiveBaseItems( event )
	local caster = event.caster
	local owner = caster:GetOwner()

	local itemNames = { "item_upgrade_weapon1",
						"item_upgrade_armor1",
						"item_upgrade_human_training1",	
						"item_rally",					
						"item_filler",						
						"item_filler"
					  }

	-- Add each item in order
	for i=1,#itemNames do
		local item = CreateItem(itemNames[i], owner, caster)
		caster:AddItem(item)
	end
end