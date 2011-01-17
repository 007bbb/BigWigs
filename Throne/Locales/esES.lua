local L = BigWigs:NewBossLocale("Al'Akir", "esES")
if L then
	-- L.phase3_yell = "Enough! I will no longer be contained!"
	
	L.phase = "Cambio de fase"
	L.phase_desc = "Anuncia los cambios de fase."
	
	L.cloud_message = "�Franklin estar�a orgulloso!"
	L.feedback_message = "%dx rebote"
end

local L = BigWigs:NewBossLocale("Conclave of Wind", "esES")
if L then
	L.gather_strength = "%s est� reuniendo fuerza"

	L.storm_shield = stormShield
	L.storm_shield_desc = "Escudo de absorci�n"
	
	L.full_power = "Lleno de poder"
	L.full_power_desc = "Avisa cuando los jefes est�n llenos de poder y empiezan a lanzar las abilidades especiales."
	L.gather_strength_emote = "�%s empieza a extraer fuerza de los se�ores del viento que quedan!"
	
	L.wind_chill = "%sx Viento escalofriante en TI!"
end
