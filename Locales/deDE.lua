local L = LibStub("AceLocale-3.0"):NewLocale("BigWigs", "deDE")

if not L then return end

-- Core.lua
L["%s has been defeated"] = "%s wurde besiegt!"     -- "<boss> has been defeated"
L["%s have been defeated"] = "%s wurden besiegt!"    -- "<bosses> have been defeated"
L["Bosses"] = "Bosse"
L["Options for bosses in %s."] = "Optionen für Bosse in %s." -- "Options for bosses in <zone>"
L["Options for %s (r%d)."] = "Optionen für %s (r%d)."     -- "Options for <boss> (<revision>)"
L["Plugins"] = "Plugins"
L["Plugins handle the core features of Big Wigs - like displaying messages, timer bars, and other essential features."] = "Plugins stellen die Grundfunktionen von Big Wigs zur Verfügung - wie das Anzeigen von Nachrichten, Timerleisten und anderen, essentiellen Funktionen."
L["Extras"] = "Extras"
L["Extras are 3rd party and bundled plugins that Big Wigs will function properly without."] = "Extras sind externe und eingebaute zusätzliche Plugins, ohne die Big Wigs auch korrekt funktioniert."
L["Active"] = "Aktivieren"
L["Activate or deactivate this module."] = "Aktiviert oder deaktiviert dieses Modul."
L["Reboot"] = "Neustarten"
L["Reboot this module."] = "Startet dieses Modul neu."
L["Options"] = "Optionen"
L["Minimap icon"] = "Minimap Symbol"
L["Toggle show/hide of the minimap icon."] = "Zeigt oder versteckt das Minimap Symbol."
L["Advanced"] = "Erweitert"
L["You shouldn't really need to touch these options, but if you want to tweak them then you're welcome to do so!"] = "Diese Optionen musst du nicht unbedingt verändern, aber du kannst es natürlich, wenn du willst!"

L["Toggles whether or not the boss module should warn about %s."] = "Wähle aus, ob das Bossmodul vor %s warnen soll oder nicht."
L.bosskill = "Boss besiegt"
L.bosskill_desc = "Warnt, wenn ein Boss besiegt wurde."
L.berserk = "Berserker"
L.berserk_desc = "Warnt, wenn ein Boss zum Berserker wird."

L["Load"] = "Laden"
L["Load All"] = "Alle laden"
L["Load all %s modules."] = "Alle %s Module laden."

-- L.already_registered = "|cffff0000WARNUNG:|r |cff00ff00%s|r (|cffffff00%d|r) existiert bereits als Boss Modul in Big Wigs, aber irgend etwas versucht es erneut anzumelden (als Revision |cffffff00%d|r). Dies bedeutet, dass du zwei Kopien des Moduls aufgrund eines Fehlers beim Aktualisieren in deinem Addon-Ordner hast. Es wird empfohlen, jegliche Big Wigs Ordner zu löschen und dann von Grund auf neu zu installieren."

-- Loader / Options.lua
L["|cff00ff00Module running|r"] = "|cff00ff00Modul aktiv|r"
L["|cffeda55fClick|r to reset all running modules. |cffeda55fAlt-Click|r to disable them."] = "|cffeda55fKlicken|r, um alle laufenden Module zurückzusetzen. |cffeda55fAlt+Klick|r, um alle laufenden Module zu beenden. |cffeda55fStrg-Alt+Klick|r, um Big Wigs komplett zu deaktivieren."
L["Active boss modules:"] = "Aktive Boss Module:"
L["All running modules have been reset."] = "Alle laufenden Module wurden zurückgesetzt."
L["Menu"] = "Menü"
L["Menu options."] = "Menü-Optionen"

L["Big Wigs is currently disabled."] = "Big Wigs ist momentan deaktiviert."
L["|cffeda55fClick|r to enable."] = "|cffeda55fKlicken|r, um Big Wigs zu aktivieren."
L["|cffeda55fClick|r to reset all running modules. |cffeda55fAlt-Click|r to disable them. |cffeda55fCtrl-Alt-Click|r to disable Big Wigs completely."] = "|cffeda55fKlicken|r, um alle laufenden Module zurückzusetzen. |cffeda55fAlt-Klicken|r, um alle laufenden Module zu beenden. |cffeda55fStrg-Alt-Klicken|r, um Big Wigs komplett zu deaktivieren."
L["All running modules have been disabled."] = "Alle laufenden Module wurden beendet."
