function CDOTA_BaseNPC_Hero:GetInternalName()
    return GameRules.HeroKV[self:GetUnitName()]["InternalName"]
end