local L = BigWigs:NewBossLocale("Jin'rokh the Breaker", "ruRU")
if not L then return end
if L then
	L.storm_duration = "������������ �����"
	L.storm_duration_desc = "��������� ������ �������������� ��� ������������ ������ �����."

	L.in_water = "�� � ����!"
end

L = BigWigs:NewBossLocale("Horridon", "ruRU")
if L then
	L.orb_message = "����� �������� �����!"

	L.chain_lightning_warning = "��� ����� ������ ������ ������!"
	L.chain_lightning_bar = "�����: ������ ������"

	L.fireball_warning = "��� ����� ������ �������� ���!"
	L.fireball_bar = "�����: �������� ���"

	L.venom_bolt_volley_desc = "|cFFFF0000WARNING: ������ ������������ ������ ��� ������ '������', ��� ��� ����������� ����� ������ ����� �������������� ������������.|r "..select(2, EJ_GetSectionInfo(7112))
	L.venom_bolt_volley_warning = "��� ����� ������ ����!"
	L.venom_bolt_volley_bar = "�����: ����"

	L.puncture_message = "������"
end

L = BigWigs:NewBossLocale("Council of Elders", "ruRU")
if L then
	L.full_power = "������ �������"

	L.assault_message = "�����"

	L.loa_kills = "����� ���: %s"
	L.loa_spirit = "��� ���"
	L.loa_spirits = "���� ���"
	L.loa_spirits_desc = "������������� � ���� ����� ����� ���."
end

L = BigWigs:NewBossLocale("Tortos", "ruRU")
if L then
	L.kick = "�����"
	L.kick_desc = "�����������, ������� ������� ����� �����."
	L.kickable_turtles = "����� ����� �������: %d"
end

L = BigWigs:NewBossLocale("Megaera", "ruRU")
if L then
	L.breaths = "�������"
	L.breaths_desc = "��������������, ��������� �� ����� ������ �������."
	L.rampage_over = "����������� ��������!"
end

L = BigWigs:NewBossLocale("Ji-Kun", "ruRU")
if L then
	L.flight_over = "�����"
	-- L.young_egg_hatching = "Young egg hatching"
	-- L.lower_hatch_trigger = "The eggs in one of the lower nests begin to hatch!"
	-- L.upper_hatch_trigger = "The eggs in one of the upper nests begin to hatch!"
	L.upper_nest = "|c00008000�������|r ������"
	L.lower_nest = "|c00FF0000������|r ������"
	-- L.food_call_trigger = "Hatchling calls for food!"
	L.nest = "������"
	L.nest_desc = "��������������, ��������� � ��������. |c00FF0000������� �������, ����� ��������� ��������������, ���� �� �� ��������� �� ������!|r"
end

L = BigWigs:NewBossLocale("Durumu the Forgotten", "ruRU")
if L then
	L.rays_spawn = "���������� ����"
	L.ray_controller = "�������� ����"
	-- L.ray_controller_desc = "Announce the ray direction controllers for the red and blue rays."
	-- L.red_ray_controller = "You are the |c000000FFBlue|r ray controller"
	-- L.blue_ray_controller = "You are the |c00FF0000Red|r ray controller"
	-- L.red_spawn_trigger = "The Infrared Light reveals a Crimson Fog!"
	-- L.blue_spawn_trigger = "The Blue Rays reveal an Azure Eye!"
	-- L.red_add = "|c00FF0000Red|r add"
	-- L.blue_add = "|c000000FFBlue|r add"
	L.clockwise = "�� ������� �������"
	L.counter_clockwise = "������ ������� �������"
end

L = BigWigs:NewBossLocale("Primordius", "ruRU")
if L then

end

L = BigWigs:NewBossLocale("Dark Animus", "ruRU")
if L then
	-- L.engage_trigger = "The orb explodes!"
	L.slam_message = "����"
end
L = BigWigs:NewBossLocale("Iron Qon", "ruRU")
if L then
	L.molten_energy = "�������� �������"

	L.overload_casting = "������ �������� ����������"
	L.overload_casting_desc = "������������� ��� ������ �������� ����������"
end
L = BigWigs:NewBossLocale("Twin Consorts", "ruRU")
if L then

end
L = BigWigs:NewBossLocale("Lei Shen", "ruRU")
if L then
	-- L.conduit_abilities = "Conduit Abilities"
	-- L.conduit_abilities_desc = "Approximate cooldown bars for the conduit specific abilities"
	-- L.conduit_ability_meassage = "Next conduit ability"
	L.intermission = "�������"
	L.overchargerd_message = "���������� AoE �������"
	L.static_shock_message = "��������� AoE ����"
	-- L.diffusion_add_message = "Diffusion adds"
	-- L.diffusion_chain_message = "Diffusion adds soon - SPREAD!"
end
L = BigWigs:NewBossLocale("Ra-den", "ruRU")
if L then

end

