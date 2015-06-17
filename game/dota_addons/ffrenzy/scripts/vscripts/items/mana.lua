function GiveMana( event )
	local target = event.caster
	local mana_amount = event.mana_amount
	target:GiveMana(mana_amount)
	--PopupMana(target,mana_amount)
end