local L = LibStub("AceLocale-3.0"):NewLocale("BigWigs", "ruRU")

if not L then return end

-- Core.lua
L["%s has been defeated"] = "%s побеждён"     -- "<boss> has been defeated"
L["%s have been defeated"] = "%s побеждены"    -- "<bosses> have been defeated"

L["Bosses"] = "Боссы"
L["Options for bosses in %s."] = "Опции для боссов в %s." -- "Options for bosses in <zone>"
L["Options for %s (r%d)."] = "Опции для %s (r%d)."     -- "Options for <boss> (<revision>)"
L["Plugins"] = "Плагины"
L["Plugins handle the core features of Big Wigs - like displaying messages, timer bars, and other essential features."] = "Плагины - это основная особенность Big Wigs,они показывают сообщения, время в полосках и другие важные моменты при битве с боссами."
L["Extras"] = "Дополнения"
L["Extras are 3rd party and bundled plugins that Big Wigs will function properly without."] = "Дополнительные настройки для рейдов без которых Big Wigs не будет должным образом работать"
L["Active"] = "Активен"
L["Activate or deactivate this module."] = "Активация или деактивация модуля"
L["Reboot"] = "Перезагрузка"
L["Reboot this module."] = "Перезагрузка данного модуля"
L["Options"] = "Опции"
L["Minimap icon"] = "Иконка у мини-карты"
L["Toggle show/hide of the minimap icon."] = "Показать/скрыть иконку у мини-карты."
L["Advanced"] = "Расширенные настройки"
L["You shouldn't really need to touch these options, but if you want to tweak them then you're welcome to do so!"] = "Вам не нужно трогать данную опцию, но если вы хотите подстроить, тогда вперёд!"

L["Toggles whether or not the boss module should warn about %s."] = "Включение/отключение вывода оповещений об %s."
L.bosskill = "Смерть босса"
L.bosskill_desc = "Объявлять о смерти босса."
L.enrage = "Исступление"
L.enrage_desc = "Предупреждать, когда босс входит в состояние исступления."
L.berserk = "Берсерк"
L.berserk_desc = "Предупреждать, когда босс входит в состояние берсерк."

L["Load"] = "Загрузить"
L["Load All"] = "Загрузить все"
L["Load all %s modules."] = "Загрузить все модули %s."

-- L.already_registered = "|cffff0000Внимание:|r |cff00ff00%s|r (|cffffff00%d|r) уже существует как модуль Big Wigs,но чтото снова пытается его зарегистрировать (ревизия |cffffff00%d|r). Это обычно означает, что у вас две копии этого модуля в папке модификации, возможно из-за ошибки обновления программой обновления модификаций. Мы рекомендуем вам удалить все папки Big Wigs , а затем установить его заново с нуля."


-- Options.lua
L["|cff00ff00Module running|r"] = "|cff00ff00Модуль запущен|r"
L["|cffeda55fClick|r to reset all running modules. |cffeda55fAlt-Click|r to disable them."] = "|cffeda55fЩёлкните|r, чтобы сбросить все запущенные модули. |cffeda55fAlt+Левый Клик|r - чтобы отключить их."
L["Active boss modules:"] = "Активные модули боссов:"
L["All running modules have been reset."] = "Все запущенные модули сброшены."
L["Menu"] = "Меню"
L["Menu options."] = "Меню опций."

L["Big Wigs is currently disabled."] = "В данный момент Big Wigs отключен."
L["|cffeda55fClick|r to enable."] = "|cffeda55fЩёлкните|r чтобы включить."
L["|cffeda55fClick|r to reset all running modules. |cffeda55fAlt-Click|r to disable them. |cffeda55fCtrl-Alt-Click|r to disable Big Wigs completely."] = "|cffeda55fЩёлкните|r, чтобы сбросить все запущенные модули. |cffeda55fAlt-Клик|r - чтобы отключить их. |cffeda55fCtrl-Alt-Клик|r - чтобы отключить Big Wigs полностью."
L["All running modules have been disabled."] = "Все запущенные модули были отключены."


