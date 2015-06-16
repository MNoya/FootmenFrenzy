function modifier_item_berserkers_axe_datadriven_on_created(keys)
	if not keys.caster:IsRangedAttacker() then
		keys.ability:ApplyDataDrivenModifier(keys.caster, keys.caster, "modifier_item_berserkers_axe_datadriven_cleave", {duration = -1})
	end
end

function modifier_item_berserkers_axe_datadriven_on_destroy(keys)
	if not keys.caster:IsRangedAttacker() then
		keys.caster:RemoveModifierByName("modifier_item_berserkers_axe_datadriven_cleave")
	end
end

function modifier_item_berserkers_axe_datadriven_on_interval_think(keys)
	if not keys.caster:IsRangedAttacker() and not keys.caster:HasModifier("modifier_item_berserkers_axe_datadriven_cleave") then
		for i=0, 5, 1 do
			local current_item = keys.caster:GetItemInSlot(i)
			if current_item ~= nil then
				if current_item:GetName() == "item_berserkers_axe_datadriven" then
					keys.ability:ApplyDataDrivenModifier(keys.caster, keys.caster, "modifier_item_berserkers_axe_datadriven_cleave", {duration = -1})
				end
			end
		end
	end
end

function modifier_item_berserkers_axe_datadriven_cleave_on_interval_think(keys)
	if keys.caster:IsRangedAttacker() then
		while keys.caster:HasModifier("modifier_item_berserkers_axe_datadriven_cleave") do
			keys.caster:RemoveModifierByName("modifier_item_berserkers_axe_datadriven_cleave")
		end
	end
end