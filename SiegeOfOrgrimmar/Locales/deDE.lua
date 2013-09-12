local L = BigWigs:NewBossLocale("Immerseus", "deDE")
if not L then return end
if L then
	L.win_yell = "Ah, Ihr habt es geschafft!"
end

L = BigWigs:NewBossLocale("The Fallen Protectors", "deDE")
if L then
	L.defile = "Gesch�ndeter Boden"

	L.custom_off_bane_marks = "Schattenwort: Unheil markieren"
	L.custom_off_bane_marks_desc = "Um bei der Einteilung zum Bannen zu helfen, werden die anfangs von Schattenwort: Unheil betroffenen Spieler mit %s%s%s%s%s markiert (in dieser Reihenfolge)(vielleicht werden nicht alle Symbole genutzt), ben�tigt Leiter oder Assistent."

	L.no_meditative_field = "KEIN Meditationsfeld!"

	L.intermission = "Verzweifelte Ma�nahmen"
	L.intermission_desc = "Warnt, wenn Du Dich nahe bei einem Boss befindest, welcher Verzweifelte Ma�nahmen benutzt"
end

L = BigWigs:NewBossLocale("Norushen", "deDE")
if L then
	L.pre_pull = "Pre-Pull"
	L.pre_pull_desc = "Leiste f�r das Event, bevor der Boss angegriffen wird"
	L.pre_pull_trigger = "Nun gut, ich werde ein Feld erschaffen, das Eure Verderbnis eind�mmt."

	L.big_adds = "Gro�e Adds"
	L.big_adds_desc = "Warnungen f�r das Besiegen der gro�en Adds (Drinnen/Drau�en)"
	L.big_add = "Gro�es Add! (%d)"
	L.big_add_killed = "Gro�es Add get�tet! (%d)"
end

L = BigWigs:NewBossLocale("Sha of Pride", "deDE")
if L then
	L.custom_off_titan_mark = "Gabe der Titanen markieren"
	L.custom_off_titan_mark_desc = "Um andere Spieler mit Gabe der Titanen einfacher zu erkennen, werden Spieler mit Gabe der Titanen mit %s%s%s%s%s%s%s%s markiert (Spieler mit Aura des Stolzes werden nicht markiert), aber trotzdem im N�he-Fenster angezeigt (noch keine Entfernungsanzeige). Ben�tigt Leiter oder Assistent."

	L.projection_message = "Gehe zum |cFF00FF00GR�NEN|r Pfeil!"
	L.projection_explosion = "Projektion Explosion"

	L.big_add_bar = "Gro�es Add"
	L.big_add_spawning = "Gro�es Add ercsheint!"
	L.small_adds = "Kleine Adds"

	L.titan_pride = "Titanen+Stolz: %s"
end

L = BigWigs:NewBossLocale("Galakras", "deDE")
if L then
	L.demolisher = "Verw�ster"
	L.demolisher_desc = "Zeigt an, wann die Verw�ster der Kor'kron in den Kampf eintreten"
	L.towers = "T�rme"
	L.towers_desc = "Warnungen f�r das Durchbrechen der Tore zu den T�rmen"
	L.south_tower_trigger = "Das Tor zum S�dturm ist durchbrochen!"
	L.south_tower = "S�dlicher Turm"
	L.north_tower_trigger = "Das Tor zum Nordturm ist durchbrochen!"
	L.north_tower = "N�rdlicher Turm"
	L.tower_defender = "Turmverteidiger"

	L.custom_off_shaman_marker = "Schamanen markieren"
	L.custom_off_shaman_marker_desc = "Um bei der Einteilung zum Unterbrechen zu helfen, werden die Gezeitenschamanen des Drachenmals mit %s%s%s%s%s%s%s markiert (in dieser Reihenfolge)(vielleicht werden nicht alle Symbole genutzt), ben�tigt Leiter oder Assistent."
end

L = BigWigs:NewBossLocale("Iron Juggernaut", "deDE")
if L then
	L.custom_off_mine_marks = "Minen markieren"
	L.custom_off_mine_marks_desc = "Um bei der Einteilung zum Einstampfen zu helfen, werden die Kriecherminen mit %s%s%s%s%s markiert (in dieser Reihenfolge)(vielleicht werden nicht alle Symbole genutzt), ben�tigt Leiter oder Assistent."
end

L = BigWigs:NewBossLocale("Kor'kron Dark Shaman", "deDE")
if L then
	L.blobs = "Schleim"

	L.custom_off_mist_marks = "Toxischer Nebel"
	L.custom_off_mist_marks_desc = "Um bei der Einteilung zum Heilen zu helfen, werden Spieler mit Toxischem Nebel mit %s%s%s%s%s%s markiert (in dieser Reihenfolge)(vielleicht werden nicht alle Symbole genutzt)(Tanks werden nicht markiert), ben�tigt Leiter oder Assistent."
end

L = BigWigs:NewBossLocale("General Nazgrim", "deDE")
if L then
	L.custom_off_bonecracker_marks = "Knochenknacker"
	L.custom_off_bonecracker_marks_desc = "Um bei der Einteilung zum Heilen zu helfen, werden Spieler mit Knochenknacker mit %s%s%s%s%s%s markiert (in dieser Reihenfolge)(vielleicht werden nicht alle Symbole genutzt), ben�tigt Leiter oder Assistent."

	L.stance_bar = "%s(JETZT:%s)"
	L.battle = "Kampf"
	L.berserker = "Berserker"
	L.defensive = "Verteidigung"

	L.adds_trigger1 = "Verteidigt das Tor!"
	L.adds_trigger2 = "Truppen, sammelt euch!"
	L.adds_trigger3 = "N�chste Staffel, nach vorn!"
	L.adds_trigger4 = "Krieger, im Laufschritt!"
	L.adds_trigger5 = "Kor'kron, zu mir!"
	L.adds_trigger_extra_wave = "Alle Kor'kron... unter meinem Befehl... t�tet sie... JETZT"
	L.extra_adds = "Zus�tzliche Adds"

	L.chain_heal_message = "Dein Fokusziel wirkt Kettenheilung!"

	L.arcane_shock_message = "Dein Fokusziel wirkt Arkaner Schock!"

	L.focus_only = "|cffff0000Nur Meldungen f�r Fokusziele.|r "
end

L = BigWigs:NewBossLocale("Malkorok", "deDE")
if L then
	L.custom_off_energy_marks = "Verdr�ngte Energie markieren"
	L.custom_off_energy_marks_desc = "Um bei der Einteilung zum Bannen zu helfen, werden Spieler mit Verdr�ngter Energie mit %s%s%s%s%s%s%s markiert (in dieser Reihenfolge)(vielleicht werden nicht alle Symbole genutzt), ben�tigt Leiter oder Assistent."
end

L = BigWigs:NewBossLocale("Spoils of Pandaria", "deDE")
if L then
	L.enable_zone = "Artefaktlagerraum"
	L.matter_scramble_explosion = "Materiewirbel Explosion"

	L.custom_off_mark_brewmaster = "Braumeister markieren"
	L.custom_off_mark_brewmaster_desc = "Markiert den Geist eines alten Braumeisters mit %s"
end

L = BigWigs:NewBossLocale("Thok the Bloodthirsty", "deDE")
if L then
	L.tank_debuffs = "Tank Schw�chungszauber"
	L.tank_debuffs_desc = "Warnungen f�r die verschiedenen Typen von Schw�chungszaubern auf den Tanks in Verbindung mit F�rchterlichem Br�llen"

	L.cage_opened = "K�fig ge�ffnet"
end

L = BigWigs:NewBossLocale("Siegecrafter Blackfuse", "deDE")
if L then
	L.shredder_engage_trigger = "Ein Automatisierter Schredder n�hert sich!"
	L.laser_on_you = "Laser auf Dir PEW PEW!"
	L.laser_say = "Laser PEW PEW!"

	L.assembly_line_trigger = "Unfertige Waffen befinden sich auf dem Flie�band."
	L.assembly_line_message = "Unfertige Waffen (%d)"

	L.shockwave_missile_trigger = "Ich pr�sentiere... den wundersch�nen Ersch�tterungsraketenturm ST-03!"
end

L = BigWigs:NewBossLocale("Paragons of the Klaxxi", "deDE")
if L then
	L.one = "Iyyokuk w�hlt: Eins!"
	L.two = "Iyyokuk w�hlt: Zwei!"
	L.three = "Iyyokuk w�hlt: Drei!"
	L.four = "Iyyokuk w�hlt: Vier!"
	L.five = "Iyyokuk w�hlt: F�nf!"
	--------------------------------
	L.edge_message = "Brennendes Band auf Dir"
	L.custom_off_edge_marks = "Brennendes Band markieren"
	L.custom_off_edge_marks_desc = "Markiert die Spieler mit Brennendem Band, basierend auf den Kalkulationen, mit %s%s%s%s%s%s, ben�tigt Leiter oder Assistent."
	L.injection_over_soon = "Injektion bald vorbei (%s)!"
	L.custom_off_mutate_marks = "Mutation: Bernskorpion markieren"
	L.custom_off_mutate_marks_desc = "Markiert die Spieler mit Mutation: Bernskorpion mit %s%s%s um bei der Einteilung zum Heilen zu helfen, ben�tigt Leiter oder Assistent."
end

L = BigWigs:NewBossLocale("Garrosh Hellscream", "deDE")
if L then
	L.intermission = "Unterbrechung"
	L.mind_control = "Gedankenkontrolle"

	L.chain_heal_desc = "Heilt ein verb�ndetes Ziel um 40% ihrer maximalen Gesundheit. Springt auf nahe verb�ndete Ziele �ber."
	L.chain_heal_message = "Dein Fokusziel wirkt Kettenheilung!"
	L.chain_heal_bar = "Fokusziel: Kettenheilung"

	L.farseer_trigger = "Scharfseher, heilt unsere Wunden!"
	L.custom_off_shaman_marker = "Scharfseher markieren"
	L.custom_off_shaman_marker_desc = "Um bei der Einteilung zum Unterbrechen zu helfen, werden die Scharfseherwolfsreiter mit %s%s%s%s%s%s%s markiert (in dieser Reihenfolge)(vielleicht werden nicht alle Symbole genutzt), ben�tigt Leiter oder Assistent."

	L.focus_only = "|cffff0000Nur Meldungen f�r Fokusziele.|r "
end

L = BigWigs:NewBossLocale("Siege of Orgrimmar Trash", "deDE")
if L then

end

