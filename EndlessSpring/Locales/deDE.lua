
local L = BigWigs:NewBossLocale("Protectors of the Endless", "deDE")
if not L then return end
if L then
	L.under = "%s unter %s!"
	L.heal = "%s Heilung"
end

L = BigWigs:NewBossLocale("Tsulong", "deDE")
if L then
	L.engage_yell = "Ihr geh�rt hier nicht hin! Die Wasser m�ssen besch�tzt werden... Ich werde euch verteiben oder abschlachten!"
	L.kill_yell = "Ich danke euch Fremde, ihr habt mich befreit."

	L.phases = "Phasen"
	L.phases_desc = "Warnung f�r Phasenwechsel"
	L.sunbeam_spawn = "Neuer Sonnestrahl!"
end

L = BigWigs:NewBossLocale("Lei Shi", "deDE")
if L then
	L.hp_to_go = "Noch %d%%"

	L.special = "N�chste Spezialf�higkeit"
	L.special_desc = "Warnung f�r n�chste Spezialf�higkeit"
end

L = BigWigs:NewBossLocale("Sha of Fear", "deDE")
if L then
	fading_soon = "%s l�uft bald ab"

	L.swing = "Hauen"
	L.swing_desc = "Z�hlt den den Schw�ngen vorangehenden Thrash."

	L.throw = "Wurf!"
	L.ball_dropped = "Ball abgeworfen!"
	L.ball_you = "Du hast den Ball!"
	L.ball = "Ball"

	L.cooldown_reset = "Deine Abklingzeiten wurden zur�ckgesetzt!"

	L.ability_cd = "F�higkeiten-Abklingzeit"
	L.ability_cd_desc = "Versuche der Reihenfolge der F�higkeiten nach dem Auftauchen zu erraten"
	
	L.huddle_or_spout = "Kauern oder Font�ne"
	L.huddle_or_strike = "Kauern oder Sto�"
	L.strike_or_spout = "Sto� oder Font�ne"
	L.huddle_or_spout_or_strike = "Kauern oder Font�ne der Sto�"
end

