local selfbuffs = CreateFrame("Frame", nil, UIParent)
selfbuffs:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS")
selfbuffs:RegisterEvent("CHAT_MSG_SPELL_SELF_BUFF")

local messages = {
    "You gain Windfury Weapon.",
    "(.*)Windfury Totem(.*)"
}

selfbuffs:SetScript("OnEvent", function()
    for _, msg in pairs(messages) do
        if (string.find(arg1, msg)) then
            PlaySoundFile[[Interface\AddOns\BuffAlert\sound.ogg]]
        end
    end
end)