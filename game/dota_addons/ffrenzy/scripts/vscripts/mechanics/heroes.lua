function CDOTA_BaseNPC_Hero:GetInternalName()
    return GameRules.HeroKV[self:GetUnitName()]["InternalName"]
end

function CDOTA_BaseNPC_Hero:GetRacialUpgradeCount()
    local human = self.upgrades["upgrade_human_training"] or 0
    local orc = self.upgrades["upgrade_orc_training"] or 0
    local nightelf = self.upgrades["upgrade_nightelf_training"] or 0
    local undead = self.upgrades["upgrade_undead_training"] or 0
    return human + orc + nightelf + undead
end