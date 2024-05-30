local NAME, S = ...
S.VERSION = GetAddOnMetadata(NAME, "Version")
S.BUILD = "Release"

LogOutTimer = LibStub("AceAddon-3.0"):NewAddon(NAME, "AceEvent-3.0")
local LT = LogOutTimer

function LT:nag(msg)
    print("|cffC1FFBA"..msg)
    RaidNotice_AddMessage(RaidBossEmoteFrame, msg, ChatTypeInfo["RAID_WARNING"])
    RaidNotice_AddMessage(RaidBossEmoteFrame, msg, ChatTypeInfo["RAID_WARNING"])
end
