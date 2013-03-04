local L = BigWigs:NewBossLocale("Jin'rokh the Breaker", "frFR")
if not L then return end
if L then
	L.storm_duration = "Dur�e de Temp�te de foudre"
	L.storm_duration_desc = "Une barre d'alerte � part pour la dur�e d'incantation de Temp�te de foudre."

	L.in_water = "Vous �tes dans l'eau�!"
end

L = BigWigs:NewBossLocale("Horridon", "frFR")
if L then
	L.charge_trigger = "pose ses yeux" -- Horridon sets his eyes on PLAYERNAME and stamps his tail! -- � v�rifier

	L.chain_lightning_message = "Votre focalisation est entrain d'incanter Cha�ne d'�clairs�!"
	L.chain_lightning_bar = "Focalisation�: Cha�ne d'�clairs"

	L.fireball_message = "Votre focalisation est en train d'incanter Boule de feu�!"
	L.fireball_bar = "Focalisation�: Boule de feu"

	L.venom_bolt_volley_message = "Votre focalisation est en train d'incanter Salve�!"
	L.venom_bolt_volley_bar = "Focalisation�: Salve"

	L.adds = "Apparition des renforts"
	L.adds_desc = "Pr�vient quand les Farraki, les Gurubashi, les Drakkari, les Amani et le Dieu-guerrier Jalak apparaissent."

	L.orb_message = "Orbe de contr�le l�ch�e�!"

	L.door_opened = "Porte ouverte�!"
	L.door_bar = "Proch. porte (%d)"
	L.balcony_adds = "Adds du balcon"
	L.door_trigger = "pour" -- "<160.1 21:33:04> CHAT_MSG_RAID_BOSS_EMOTE#Farraki forces pour from the Farraki Tribal Door!#War-God Jalak#####0#0##0#1107#nil#0#false#false", -- [1]
end

L = BigWigs:NewBossLocale("Council of Elders", "frFR")
if L then
	L.priestess_adds = "Adds de la pr�tresse"
	L.priestess_adds_desc = "Pr�vient de l'arriv�e des diff�rents genres de renforts de la Grande pr�tresse Mar'li."
	L.priestess_adds_message = "Add de la pr�tresse"

	L.full_power = "Puissance maximale"
	L.assault_message = "Assaut"
	L.hp_to_go_power = "PV � faire�: %d%% - Puissance�: %d"
end

L = BigWigs:NewBossLocale("Tortos", "frFR")
if L then
	L.kick = "Coup de pied"
	L.kick_desc = "Effectue un suivi du nombre de tortues qui peuvent �tre bott�es."
	L.kickable_turtles = "Tortues � botter�: %d"

	L.crystal_shell_removed = "Carapace de cristal enlev�!"
	L.no_crystal_shell = "PAS de Carapace de cristal"
end

L = BigWigs:NewBossLocale("Megaera", "frFR")
if L then
	L.breaths = "Souffles"
	L.breaths_desc = "Alertes relatives aux diff�rents types de souffles."

	L.arcane_adds = "Wyrms du N�ant"
end

L = BigWigs:NewBossLocale("Ji-Kun", "frFR")
if L then
	L.flight_over = "Vol termin�"
	L.young_egg_hatching = "�closion d'un jeune �uf"
	L.lower_hatch_trigger = "The eggs in one of the lower nests begin to hatch�!" -- � traduire
	L.upper_hatch_trigger = "The eggs in one of the upper nests begin to hatch�!" -- � traduire
	L.upper_nest = "Nid |c00008000sup�rieur|r"
	L.lower_nest = "Nid |c00FF0000inf�rieur|r"
	L.lower_upper_nest = "Nid |c00FF0000inf�rieur|r + |c00008000sup�rieur|r"
	L.nest = "Nids"
	L.nest_desc = "Alertes relatives aux nids. |c00FF0000D�cochez ceci pour d�sactiver les alertes si vous n'�tes pas assign� � la gestion des nids�!|r"
	L.big_add = "Gros add au %s"
end

L = BigWigs:NewBossLocale("Durumu the Forgotten", "frFR")
if L then
	L.rays_spawn = "Apparition des rayons"
	L.red_spawn_trigger = "The Infrared Light reveals a Crimson Fog�!" -- � traduire
	L.blue_spawn_trigger = "The Blue Rays reveal an Azure Eye�!" -- � traduire
	L.red_add = "Add |c00FF0000rouge|r"
	L.blue_add = "Add |c000000FFbleu|r"
	L.clockwise = "Sens horaire"
	L.counter_clockwise = "Sens anti-horaire"
	L.death_beam = "Rayon mortel"
end

L = BigWigs:NewBossLocale("Primordius", "frFR")
if L then
	L.stream_of_blobs = "Flux de limons"
	L.mutations = "Mutations"
end

L = BigWigs:NewBossLocale("Dark Animus", "frFR")
if L then
	L.engage_trigger = "L'orbe explose�!" -- � v�rifier
	L.slam_message = "Heurt"
end

L = BigWigs:NewBossLocale("Iron Qon", "frFR")
if L then
	L.molten_energy = "�nergie magmatique"

	L.overload_casting = "Incantation de Surcharge de magma"
	L.overload_casting_desc = "Pr�vient quand Surcharge de magma est incant�."

	L.arcing_lightning_cleared = "Le raid est lib�r� de Foudre en arc" -- � traduire
end

L = BigWigs:NewBossLocale("Twin Consorts", "frFR")
if L then
	L.barrage_fired = "Barrage invoqu�!"
	L.last_phase_yell_trigger = "Just this once..." -- � traduire
end

L = BigWigs:NewBossLocale("Lei Shen", "frFR")
if L then
	L.conduit_abilities = "Techniques du conduit"
	L.conduit_abilities_desc = "Barres approximatives des temps de recharge des techniques sp�cifiques au conduit."
	L.conduit_ability_meassage = "Proch. tech. du conduit"

	L.intermission = "Entracte"
	L.overchargerd_message = "Stunning AoE pulse"
	L.static_shock_message = "Splitting AoE damege"
	L.diffusion_add_message = "Diffusion adds"
	L.diffusion_chain_message = "Diffusion adds soon - SPREAD�!"
end

L = BigWigs:NewBossLocale("Ra-den", "frFR")
if L then

end
