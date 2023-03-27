local events = CreateFrame("Frame", nil, UIParent)
events:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS")
events:RegisterEvent("CHAT_MSG_SPELL_SELF_BUFF")
events:RegisterEvent("CHAT_MSG_SPELL_SELF_DAMAGE")

local messages = {
    "You gain Windfury Weapon.",
    "You gain 1 extra attack through Windfury Totem.",
}

events:SetScript("OnEvent", function()
    for _, msg in pairs(messages) do
        if (string.find(arg1, msg)) then
            PlaySoundFile[[Interface\AddOns\BuffAlert\sound.ogg]]
        end
    end
end)