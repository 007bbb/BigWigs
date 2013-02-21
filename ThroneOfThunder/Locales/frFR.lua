local L = BigWigs:NewBossLocale("Jin'rokh the Breaker", "frFR")
if not L then return end
if L then
	L.storm_duration = "Dur�e de Temp�te de foudre"
	L.storm_duration_desc = "Une barre d'alerte � part pour la dur�e d'incantation de Temp�te de foudre."

	L.in_water = "Vous �tes dans l'eau�!"
end

L = BigWigs:NewBossLocale("Horridon", "frFR")
if L then
	L.orb_message = "Orbe de contr�le l�ch�e�!"

	L.chain_lightning_warning = "Votre focalisation est entrain d'incanter Cha�ne d'�clairs�!"
	L.chain_lightning_bar = "Focalisation�: Cha�ne d'�clairs"

	L.fireball_warning = "Votre focalisation est en train d'incanter Boule de feu�!"
	L.fireball_bar = "Focalisation�: Boule de feu"

	L.venom_bolt_volley_desc = "|cFFFF0000ATTENION�: seul le d�lai de votre cible de 'focalisation' sera affich� car tous les incantateurs de Salve ont des temps de recharge distincts.|r "..select(2, EJ_GetSectionInfo(7112))
	L.venom_bolt_volley_warning = "Votre focalisation est en train d'incanter Salve�!"
	L.venom_bolt_volley_bar = "Focalisation�: Salve"

	L.puncture_message = "Perforation"
end

L = BigWigs:NewBossLocale("Council of Elders", "frFR")
if L then
	L.full_power = "Puissance maximale"

	L.assault_message = "Assaut"

	L.loa_kills = "Loa kills�: %s"
	L.priestess_add = "Priestess add"
	L.priestess_adds = "Priestess adds"
	L.priestess_adds_desc = "Warning for all kinds of adds from High Priestess Mar'li"
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
	L.rampage_over = "Saccager termin�!"
	L.arcane_adds = "Arcane adds"
end

L = BigWigs:NewBossLocale("Ji-Kun", "frFR")
if L then
	L.flight_over = "Vol termin�"
	L.young_egg_hatching = "�closion d'un jeune �uf"
	L.lower_hatch_trigger = "The eggs in one of the lower nests begin to hatch�!" -- � traduire
	L.upper_hatch_trigger = "The eggs in one of the upper nests begin to hatch�!" -- � traduire
	L.upper_nest = "Nid |c00008000sup�rieur|r"
	L.lower_nest = "Nid |c00FF0000inf�rieur|r"
	L.food_call_trigger = "Hatchling calls for food�!" -- � traduire
	L.nest = "Nids"
	L.nest_desc = "Alertes relatives aux nids. |c00FF0000D�cochez ceci pour d�sactiver les alertes si vous n'�tes pas assign� � la gestion des nids�!|r"
end

L = BigWigs:NewBossLocale("Durumu the Forgotten", "frFR")
if L then
	L.rays_spawn = "Apparition des rayons"
	L.ray_controller = "Contr�leur de rayon"
	L.ray_controller_desc = "Annonce les contr�leurs de la direction des rayons rouge et bleu."
	L.red_ray_controller = "Vous �tes le contr�leur du rayon |c000000FFbleu|r"
	L.blue_ray_controller = "Vous �tes le contr�leur du rayon |c00FF0000rouge|r"
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
end

L = BigWigs:NewBossLocale("Twin Consorts", "frFR")
if L then
	L.barrage_fired = "Barrage fired!"
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
