local L = LibStub("AceLocale-3.0"):NewLocale("BigWigs", "enUS", true)

-- Core.lua
L["%s has been defeated"] = true     -- "<boss> has been defeated"
L["%s have been defeated"] = true    -- "<bosses> have been defeated"
L["Bosses"] = true
L["Options for bosses in %s."] = true -- "Options for bosses in <zone>"
L["Options for %s (r%d)."] = true     -- "Options for <boss> (<revision>)"
L["Plugins"] = true
L["Plugins handle the core features of Big Wigs - like displaying messages, timer bars, and other essential features."] = true
L["Extras"] = true
L["Extras are 3rd party and bundled plugins that Big Wigs will function properly without."] = true
L["Active"] = true
L["Activate or deactivate this module."] = true
L["Reboot"] = true
L["Reboot this module."] = true
L["Options"] = true
L["Minimap icon"] = true
L["Toggle show/hide of the minimap icon."] = true
L["Advanced"] = true
L["You shouldn't really need to touch these options, but if you want to tweak them then you're welcome to do so!"] = true

L["Toggles whether or not the boss module should warn about %s."] = true
L.bosskill = "Boss death"
L.bosskill_desc = "Announce when the boss has been defeated."
L.berserk = "Berserk"
L.berserk_desc = "Show a timer bar for and timed warnings for when the boss will go berserk."

L["Load"] = true
L["Load All"] = true
L["Load all %s modules."] = true

L.already_registered = "|cffff0000WARNING:|r |cff00ff00%s|r (|cffffff00%s|r) already exists as a module in Big Wigs, but something is trying to register it again. This usually means you have two copies of this module in your addons folder due to some addon updater failure. It is recommended that you delete any Big Wigs folders you have and then reinstall it from scratch."

-- Loader / Options.lua
L["|cff00ff00Module running|r"] = true
L["|cffeda55fClick|r to reset all running modules. |cffeda55fAlt-Click|r to disable them."] = true
L["Active boss modules:"] = true
L["All running modules have been reset."] = true
L["Menu"] = true
L["Menu options."] = true

L["Big Wigs is currently disabled."] = true
L["|cffeda55fClick|r to enable."] = true
L["|cffeda55fClick|r to reset all running modules. |cffeda55fAlt-Click|r to disable them. |cffeda55fCtrl-Alt-Click|r to disable Big Wigs completely."] = true
L["All running modules have been disabled."] = true
