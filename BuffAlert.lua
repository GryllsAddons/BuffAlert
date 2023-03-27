local selfbuffs = CreateFrame("Frame", nil, UIParent)
selfbuffs:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS")

local function SearchBuffs(buff)
    local i,x=1,0        
    while UnitBuff("player",i) do if UnitBuff("player",i)==buff then x=i end i=i+1 end
    if x>0 then return true end
end

local icons = {
    "Interface\\Icons\\Spell_Nature_Cyclone" -- Windfury
}

selfbuffs:SetScript("OnEvent", function()
    for _, icon in pairs(icons) do
        if (SearchBuffs(icon)) then
            PlaySoundFile[[Interface\AddOns\BuffAlert\sound.ogg]]
        end
    end
end)
