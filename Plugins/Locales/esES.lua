local L = LibStub("AceLocale-3.0"):NewLocale("Big Wigs: Plugins", "esES")
if not L then return end
-----------------------------------------------------------------------
-- Bars.lua
--

L["Style"] = "Estilo"
L.bigWigsBarStyleName_Default = "Por defecto"
L.bigWigsBarStyleName_BeautyCase = "Beauty Case"

L["Clickable Bars"] = "Barras clicables"
L.clickableBarsDesc = "Las barras de Big Wigs bars son clicables por defecto. De esta forma puedes targetear objetos o lanzar hechizos AoE detr�s de ellos, cambia el �ngulo de la c�mara, y as� sucesivamente, mientras tu cursos est� encima de las barras. |cffff4411Si habilitas las barras clicables, esto dejar� de funcionar.|r Las barras interceptar�n cualquier clic de rat�n que hagas en ellas.\n"
L["Enables bars to receive mouse clicks."] = "Activa las barras para recivir clics de rat�n"
L["Modifier"] = "Modificador"
L["Hold down the selected modifier key to enable click actions on the timer bars."] = "Presiona la tecla de modificador elegido para activar acciones de clics en los tiempos de las barras."
L["Only with modifier key"] = "Solo con una tecla de modificador"
L["Allows bars to be click-through unless the specified modifier key is held down, at which point the mouse actions described below will be available."] = "Permite a las barras que sean clicables en el caso de que est� presionada la tecla modificadora, en este punto las acciones de rat�n describir�n justo debajo si estar�n disponibles."

L["Temporarily Super Emphasizes the bar and any messages associated with it for the duration."] = "Temporalmente Super Enfatiza la barra y los mensajes asociados para la duraci�n."
L["Report"] = "Reportar"
L["Reports the current bars status to the active group chat; either battleground, raid, party or guild, as appropriate."] = "Reporta el estado de las barras actuales al chat del grupo activo; bg, raid, grupo o hermandad, el m�s apropiado."
L["Remove"] = "Quitar"
L["Temporarily removes the bar and all associated messages."] = "Temporalmente quita la barra y los mensajes asociados"
L["Remove other"] = "Quitar otro"
L["Temporarily removes all other bars (except this one) and associated messages."] = "Temporalmente quita todas las barras (excepto esta) y los mensajes asociados."
L["Disable"] = "Desactivar"
L["Permanently disables the boss encounter ability option that spawned this bar."] = "Desactiva permanentemente la habilidad del encuentro para que no de opci�n a que reaparezca esta barra"

L["Scale"] = "Escala"
L["Grow upwards"] = "Crecer ascendente"
L["Toggle bars grow upwards/downwards from anchor."] = "Alterna entre crecer las barras ascendente/descendente desde el anclaje."
L["Texture"] = "Textura"
L["Emphasize"] = "Enfatizar"
L["Enable"] = "Permitir"
L["Move"] = "Mover"
L["Moves emphasized bars to the Emphasize anchor. If this option is off, emphasized bars will simply change scale and color, and maybe start flashing."] = "Mueve las barras enfatizadas al anclaje de Enfatizar. Si esta opcion esta apagada, las barras enfatizadas simplemente cambiar�n el color y la escala, y puede que empiecen a flashear."
L["Flash"] = "Flash"
L["Flashes the background of emphasized bars, which could make it easier for you to spot them."] = "Flashea el fondo de la barra enfatizada, haciendola m�s facil de ver"
L["Regular bars"] = "Barras regulares"
L["Emphasized bars"] = "Barras emfatizadas"
L["Align"] = "Alineaci�n"
L["Left"] = "Izquierda"
L["Center"] = "Centro"
L["Right"] = "Derecha"
L["Time"] = "Tiempo"
L["Whether to show or hide the time left on the bars."] = "Oculta o muestra el tiempo restante en las barras."
L["Icon"] = "Icono"
L["Shows or hides the bar icons."] = "Muestra u oculta los iconos de las barras."
L["Font"] = "Fuente"
L["Restart"] = "Reiniciar"
L["Restarts emphasized bars so they start from the beginning and count from 10."] = "Reinicia las barras enfatizadas para que empiecen desde el principio y el recuento desde 10."
L["Fill"] = "Llenar"
L["Fills the bars up instead of draining them."] = "Llena las barras o las drena."

L["Local"] = "Local"
L["%s: Timer [%s] finished."] = "%s: Contador [%s] terminado."
L["Invalid time (|cffff0000%q|r) or missing bar text in a custom bar started by |cffd9d919%s|r. <time> can be either a number in seconds, a M:S pair, or Mm. For example 5, 1:20 or 2m."] = "Tiempo incorrecto (|cffff0000%q|r) o fallo encontrado en el texto de la barra personalizada empezada por |cffd9d919%s|r. <time> puede ser un numero en segundos, una pareja M:S, o Mm. Por ejemplo 5, 1:20 o 2m."

-----------------------------------------------------------------------
-- Colors.lua
--

L["Colors"] = "Colores"

L["Messages"] = "Mensajes"
L["Bars"] = "Barras"
L["Background"] = "Fondo"
L["Text"] = "Texto"
L["Flash and shake"] = "Flash y temblar"
L["Normal"] = "Normal"
L["Emphasized"] = "Enfatizado"

L["Reset"] = "Reiniciar"
L["Resets the above colors to their defaults."] = "Reinicia los colores por defecto"
L["Reset all"] = "Resetear todo"
L["If you've customized colors for any boss encounter settings, this button will reset ALL of them so the colors defined here will be used instead."] = "Si has personallizado los colores y los ajustes de algun encuentro de jefe, este bot�n seiniciar� TODO y se usar�n los colores por defecto."

L["Important"] = "Importante"
L["Personal"] = "Personal"
L["Urgent"] = "Urgente"
L["Attention"] = "Atenci�n"
L["Positive"] = "Positivo"

-----------------------------------------------------------------------
-- Messages.lua
--

L.sinkDescription = "Gu�a fuera de este addon siguiendo los mensajes mostrados de Big Wigs. Estos soportan iconos, colores y pueden mostrarse hasta 4 mensajes en la pantalla a la vez. Reci�n insertados los mensajes crecer�n en tama�o y encoger�n de nuevo r�pidamente para notificar al usuario."
L.emphasizedSinkDescription = "Gu�a fuera de este addon siguiendo los mensajes enfatizados mostrados de Big Wigs. Estos soportan texto y colores, y solo pueden mostrarse uno a la vez."

L["Messages"] = "Mensajes"
L["Normal messages"] = "Mensajes normales"
L["Emphasized messages"] = "Mensajes enfatizados"
L["Output"] = "Salida"

L["Use colors"] = "Usar colores"
L["Toggles white only messages ignoring coloring."] = "Mensajes de color blanco ignorando los colores."

L["Use icons"] = "Usar iconos"
L["Show icons next to messages, only works for Raid Warning."] = "Muestra los siguientes iconos para mensajes, solo funciona para alertas de raid."

L["Class colors"] = "Colores de clase"
L["Colors player names in messages by their class."] = "Colores el nombre del jugador en los mensajes con el color de su clase"

L["Chat frame"] = "Ventana de chat"
L["Outputs all BigWigs messages to the default chat frame in addition to the display setting."] = "Todos los mensajes de salida de Big Wigs a la ventana de chat por defecto en adici�n a los ajustes mostrados"

L["Font size"] = "Tama�o de fuente"
L["None"] = "Ninguno"
L["Thin"] = "Fino"
L["Thick"] = "Grueso"
L["Outline"] = "Contorno"
L["Monochrome"] = "Monocromo"
L["Toggles the monochrome flag on all messages, removing any smoothing of the font edges."] = "Cambia a monocromo el indicador en todos los mensajes, quitando cualquier suavizado de fuente."

-----------------------------------------------------------------------
-- RaidIcon.lua
--

L["Icons"] = "Iconos"

L.raidIconDescription = "Elementos de tipo 'bomba' y simirales en un jugador pueden ser de interes especial. Aqui puedes configurar como se deber�a marar con iconos algunos pjs.\n\nSi solo se usa un icono para un encuentro se usar� el primario, nunca se usar� el mismo icono para 2 habilidades distintas, para eso esta el icono secundario.\n\n|cffff4411Nota si un jugador ha sido marcado manualmente Big Wigs nunca cambiar� su icono.|r"
L["Primary"] = "Primario"
L["The first raid target icon that a encounter script should use."] = "El primer objetivo de la raid el cual deberia usar este icono"
L["Secondary"] = "Secundario"
L["The second raid target icon that a encounter script should use."] = "El secundario objetivo de la raid el cual deber�a usar este icono"

L["Star"] = "Estrella"
L["Circle"] = "C�rculo"
L["Diamond"] = "Diamante"
L["Triangle"] = "Tri�ngulo"
L["Moon"] = "Luna"
L["Square"] = "Cuadrado"
L["Cross"] = "Cruz"
L["Skull"] = "Calavera"
L["|cffff0000Disable|r"] = "|cffff0000Desactivar|r"

-----------------------------------------------------------------------
-- Sound.lua
--

L.soundDefaultDescription = "Con esa opci�n puesta, Big Wigs solo usar� el sonido por defecto de Blizzard para las alertas de raid y para mensajes que llegan con una alerta de sonido. Nota que solo algunos mensajes de los scripts de encuentros usar�n un gatillo como alerta de sonido."

L["Sounds"] = "Sonidos"

L["Alarm"] = "Alarma"
L["Info"] = "Info"
L["Alert"] = "Alerta"
L["Long"] = "Largo"
L["Victory"] = "Victoria"

L["Set the sound to use for %q.\n\nCtrl-Click a sound to preview."] = "Ajusta el sonido a usar para %q.\n\nCtrl-Clic un sonido a vista previa."
L["Default only"] = "Solo por defecto"

-----------------------------------------------------------------------
-- Proximity.lua
--

L["|T%s:20:20:-5|tAbility name"] = "|T%s:20:20:-5|tNombre de la habilidad"
L["Custom range indicator"] = "Indicador de rango personalizado"
L["%d yards"] = "%d yrd/mtr"
L["Proximity"] = "Proximidad"
L["Sound"] = "Sonido"
L["Disabled"] = "Desactivado"
L["Disable the proximity display for all modules that use it."] = "Desactiva la ventana de proximidad pra todos los m�dulos que la usen."
L["The proximity display will show next time. To disable it completely for this encounter, you need to toggle it off in the encounter options."] = "La ventana de proximidad se mostrar� la pr�xima vez. Para desativarla completamente de este encuentro, necesitas apagarla de las opciones de encuentros."
L["Let the Proximity monitor display a graphical representation of people who might be too close to you instead of just a list of names. This only works for zones where Big Wigs has access to actual size information; for other zones it will fall back to the list of names."] = "Deja en el monitor de proximidad una representaci�n gr�fica de la gente que podr�a estar cerca de ti en lugar de solo listar los nombres. Esto s�lo funciona para zonas donde Big Wigs tiene acceso a la informaci�n del tama�o real; para otras zonas volver�a a listar los nombres."
L["Graphical display"] = "Visualizaci�n gr�fica"
L["Sound delay"] = "Retardo de sonido"
L["Specify how long Big Wigs should wait between repeating the specified sound when someone is too close to you."] = "Especifica el tiempo que Big Wigs deber�a esperar entre cada repetici�n de sonido cuando alguien est� demasiado cerca de ti."

L.proximity = "Visualizar proximidad"
L.proximity_desc = "Muestra la ventana de proximidad cuando sea apropidada para este encuentro, lista los jugadores que est�n demasiado cerca tuya."

L["Close"] = "Cerrar"
L["Closes the proximity display.\n\nTo disable it completely for any encounter, you have to go into the options for the relevant boss module and toggle the 'Proximity' option off."] = "Cierra la ventana de proximidad.\n\nPara desactivarla completamente para un encuentro, tienes que ir a las opciones para ese encuentro y desactivar la opci�n de 'Proximidad'."
L["Lock"] = "Bloquear"
L["Locks the display in place, preventing moving and resizing."] = "Bloquea la ventana en el lugar, previniendo que se mueva y redimensione"
L["Title"] = "T�tulo"
L["Shows or hides the title."] = "Muestra/oculta el t�tulo"
L["Background"] = "Fondo"
L["Shows or hides the background."] = "Muestra/oculta el fondo"
L["Toggle sound"] = "Cambiar sonido"
L["Toggle whether or not the proximity window should beep when you're too close to another player."] = "Activada o no la ventana de proximidad deber�a emitir un beep si est�s cerca de otro jugador."
L["Sound button"] = "Bot�n de sonido"
L["Shows or hides the sound button."] = "Muestra/oculta el bot�n de sonido"
L["Close button"] = "Boton cerrar"
L["Shows or hides the close button."] = "Muestra/oculta el bot�n de cerrar"
L["Show/hide"] = "Mostrar/ocultar"
L["Ability name"] = "Nombre de habilidad"
L["Shows or hides the ability name above the window."] = "Muestra/oculta el nombre de la habilidad encima de la ventana"
L["Tooltip"] = "Tooltip"
L["Shows or hides a spell tooltip if the Proximity display is currently tied directly to a boss encounter ability."] = "Muestra/oculta el tooltip del hechizo si la ventana de proximidad esta empatada con una habilidad del boss."

-----------------------------------------------------------------------
-- Tips.lua
--

L["|cff%s%s|r says:"] = "|cff%s%s|r dice:"
L["Cool!"] = "Guay!"
L["Tips"] = "Consejos"
L["Tip of the Raid"] = "Consejo de la raid"
L["Tip of the raid will show by default when you zone in to a raid instance, you are not in combat, and your raid group has more than 9 players in it. Only one tip will be shown per session, typically.\n\nHere you can tweak how to display that tip, either using the pimped out window (default), or outputting it to chat. If you play with officers who overuse the |cffff4411/sendtip command|r, you might want to show them in chat frame instead!"] = "Los consejos de la raid se mostrar�n por defecto cuando entres en una zona dentro de una estancia de raid, si no estas en combate, y tu grupo de raid tiene m�s de 9 jugadores en el. Solo un consejo se mostrar� por sesi�n, normalmente.\n\nAqu� puedes descubrir como visualizar estos consejos, o usar la ventana chula (por defecto), o visualizarlos en el chat. Si juegas con oficiales quienes usando el |cffff4411comando /sendtip |r, puedes ver lo que quieren mostrarnos en el chat �en lugar de la ventana!."
L["If you don't want to see any tips, ever, you can toggle them off here. Tips sent by your raid officers will also be blocked by this, so be careful."] = "Si no quieres ver alg�n consejo, siempre, pueedes cambiarlo a apagado aqu�. Los consejos enviados por tus oficiales de raid tambi�n son bloqueados por esto, se cuidadoso."
L["Automatic tips"] = "Consejos autom�ticos"
L["If you don't want to see the awesome tips we have, contributed by some of the best PvE players in the world, pop up when you zone in to a raid instance, you can disable this option."] = "Si no quieres ver los formidables consejos que tenemos, contribuidos por algunos de los mejores jugadores PvE del mundo, con una ventanita cuando entres en una zona de raid, puedes desactivar esta opci�n."
L["Manual tips"] = "Consejos manuales"
L["Raid officers have the ability to show manual tips with the /sendtip command. If you have an officer who spams these things, or for some other reason you just don't want to see them, you can disable it with this option."] = "Los oficiales de raid tienen la habilidad de mostrar manualmente consejos con el comando /sendtip. Si tienes un oficial que spamea esto, o por otras razones solo no quieres verlos, puedes desactivar esto con esta opci�n."
L["Output to chat frame"] = "Salida al marco de chat"
L["By default the tips will be shown in their own, awesome window in the middle of your screen. If you toggle this, however, the tips will ONLY be shown in your chat frame as pure text, and the window will never bother you again."] = "Por defecto los consejos se mostrar�n para cada uno, en una formidable ventanita en el medio de la pantalla. Si quieres cambiar esto, sin embargo, los consejos SOLO ser�n mostrados en tu chat como texto puro, y la ventana nunca se mostrar� de nuevo."
L["Usage: /sendtip <index|\"Custom tip\">"] = "Uso: /sendtip <index|\"Consejo personalizado personalizado\">"
L["You must be an officer in the raid to broadcast a tip."] = "Debes ser un oficial en la raid para difundir un tip"
L["Tip index out of bounds, accepted indexes range from 1 to %d."] = "�ndice de consejos fuera de l�mite, aceptados rangos de �ndices desde 1 a %d."

-----------------------------------------------------------------------
-- Emphasize.lua
--

L["Super Emphasize"] = "Super Enfatizar"
L.superEmphasizeDesc = "Da a los mensajes o barras relacionados con una habilidad de un encuentro.\n\nAqu� configuras exactamente que deber�a ocurrir cuando cambias a activado en la opci�n de Super Enfatizar en la secci�n avanzada para una habilidad de un encuentro de un jefe.\n\n|cffff4411Nota que Super Enfatizar est� apagado por defecto para todas las habilidades.|r\n"
L["UPPERCASE"] = "MAYUSCULAS"
L["Uppercases all messages related to a super emphasized option."] = "May�sculas en todos los mensajes relacionados con una opci�n super enfatizada."
L["Double size"] = "Tama�o doble"
L["Doubles the size of super emphasized bars and messages."] = "Dobla el tama�o de las barras super enfatizadas y los mensajes"
L["Countdown"] = "Cuenta atr�s"
L["If a related timer is longer than 5 seconds, a vocal and visual countdown will be added for the last 5 seconds. Imagine someone counting down \"5... 4... 3... 2... 1... COUNTDOWN!\" and big numbers in the middle of your screen."] = "Si un contador es relativamente mayor de 5 segundos, una cuenta vocal y visual ser� a�adida para los �ltimos 5 segundos. Imagina alguna cuenta atr�s \"5... 4... 3... 2... 1... �CUENTA ATR�S!\" y grandes n�meros en el medio de la pantalla."
L["Flash"] = "Flash"
L["Flashes the screen red during the last 3 seconds of any related timer."] = "Flashea la pantalla en rojo durante los 3 �ltimos segundos o de algun contador relacionado."

