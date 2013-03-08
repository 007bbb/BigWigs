local L = LibStub("AceLocale-3.0"):NewLocale("Big Wigs", "ruRU")
if not L then return end
-- Core.lua
L["%s has been defeated"] = "%s терпит поражение"

L.bosskill = "Смерть босса"
L.bosskill_desc = "Объявлять о смерти босса."
L.berserk = "Берсерк"
L.berserk_desc = "Предупреждать и отсчитывать время до берсерка."
L.stages = "Фазы"
L.stages_desc = "Включение различных функций, связанных с этапами/фазами босса: радар, полосы и прочее"

L.already_registered = "|cffff0000ВНИМАНИЕ:|r |cff00ff00%s|r (|cffffff00%s|r) уже загружен как модуль Big Wigs, но что-то пытается зарегистрировать его ещё раз. Обычно, это означает, что у вас две копии этого модуля в папке с модификациями (возможно, из-за ошибки программы для обновления модификаций). Мы рекомендуем вам удалить все папки Big Wigs и установить его с нуля."

-- Loader / Options.lua
L["You are running an official release of Big Wigs %s (revision %d)"] = "Вы используете официальную версию Big Wigs %s (ревизия %d)"
L["You are running an ALPHA RELEASE of Big Wigs %s (revision %d)"] = "Вы используете АЛЬФА-ВЕРСИЮ Big Wigs %s (ревизия %d)"
L["You are running a source checkout of Big Wigs %s directly from the repository."] = "Вы используете отладочный Big Wigs %s прямо из репозитория."
L["There is a new release of Big Wigs available (/bwv). You can visit curse.com, wowinterface.com, wowace.com or use the Curse Updater to get the new release."] = "Доступна новая версия Big Wigs (/bwv). Чтобы загрузить её, зайдите на сайт curse.com, wowinterface.com, wowace.com или воспользуйтесь Curse Updater."
L["Your alpha version of Big Wigs is out of date (/bwv)."] = "Ваша альфа-версия Big Wigs устарела (/bwv)."

L.tooltipHint = "|cffeda55fЩёлкните|r, чтобы сбросить все запущенные модули. |cffeda55fAlt+Левый клик|r - чтобы отключить их. |cffeda55fПравый клик|r открыть настройки."
L["Active boss modules:"] = "Активные модули боссов:"
L["All running modules have been reset."] = "Все запущенные модули сброшены."
L["All running modules have been disabled."] = "Все запущенные модули были отключены."

L["There are people in your group with older versions or without Big Wigs. You can get more details with /bwv."] = "В вашей группе есть игроки с устаревшими версиями или без Big Wigs. Для получения более подробной информации введите команду /bwv."
L["Up to date:"] = "Текущий:"
L["Out of date:"] = "Устаревший:"
L["No Big Wigs 3.x:"] = "Нет Big Wigs 3.x:"

L["Waiting until combat ends to finish loading due to Blizzard combat restrictions."] = "Подождите окончания боя для завершения загрузки, в связи с боевыми ограничениями Blizzard."
L["Combat has ended, Big Wigs has now finished loading."] = "Бой окончен, Big Wigs окончательно загружен."
L["Due to Blizzard restrictions the config must first be opened out of combat, before it can be accessed in combat."] = "В связи с ограничениями Blizzard, настройка должна открываться вне боя, прежде чем будет применена."

L["Please note that this zone requires the -[[|cFF436EEE%s|r]]- plugin for timers to be displayed."] = "Обратите внимание, что эта зона требует -[[|cFF436EEE%s|r]]- дополнение для показа таймеров."

L.coreAddonDisabled = "Big Wigs не будет работать правильно, пока аддон %s выключен. Вы можете включить его из панели управления модификациями в окне выбора персонажа."

-- Options.lua
L["Customize ..."] = "Оформление ..."
L["Profiles"] = "Профили"
L.introduction = "Добро пожаловать в Big Wigs, где бродят боссы. Пожалуйста, пристегните ремни безопасности, запаситесь печеньками и наслаждайтесь поездкой. Он не будет есть ваших детей, зато поможет вам подготовиться к встречи с новыми боссами, словно обед из 7-ми блюд для вашего рейда.\n"
L["Configure ..."] = "Настройка ..."
L.configureDesc = "Закрывает окно настроек интерфейса и позволяет настроить отображение таких вещей, как полосы и сообщения.\n\nЕсли вы хотите настроить больше вещей, разверните Big Wigs слева, и найдите подраздел 'Настройки ...'."
L["Sound"] = "Звук"
L.soundDesc = "Сообщения могут сопровождаться звуком. Некоторым людям проще услышать звук и опознать к какому сообщению он относится, нежели читать сообщения.\n\n|cffff4411Даже когда отключено, стандартный звук объявления рейду будет сопровождать входящие объявления от других игроков. Этот звук отличается от используемых здесь.|r"
L["Show Blizzard warnings"] = "Оповещения Blizzard"
L.blizzardDesc = "Blizzard иногда предоставляет свои сообщения для некоторых способностей. По нашему мнению, эти сообщенимя слишком подробные и длинные. Мы пытаемся предоставить краткие, более уместные сообшения, которые не мешают игровому процессу и не говорят, что конкретно вам делать.\n\n|cffff4411Когда отключено, сообщения Blizzard не будут показываться по центру экрана, но всё ещё будут отображаться в чате.|r"
L["Flash Screen"] = "Мигание экрана"
L.flashDesc = "Некоторые способности настолько важны, что требуют особого внимания. Когда вы попадаете под эффект таких способностей, Big Wigs производит мигание экрана."
L["Raid icons"] = "Метки рейда"
L.raidiconDesc = "Некоторые скрипты событий используют метки рейда, чтобы помечать игроков, которые оказывают особое влияние на вашу группу. Например, такой тип эффектов как 'бомба' и контроль разума.\n\n|cffff4411Применимо, если вы Лидер рейда или помощник!|r"
L["Minimap icon"] = "Иконка у миникарты"
L["Toggle show/hide of the minimap icon."] = "Показать/скрыть иконку у миникарты."
L["Configure"] = "Настройка"
L["Test"] = "Тест"
L["Reset positions"] = "Сброс позиции"
L["Colors"] = "Цвета"
L["Select encounter"] = "Выберите схватку"
L["List abilities in group chat"] = "Вывести способности в групповой чат"
L["Block boss movies"] = "Блокировать видеоролики"
L["After you've seen a boss movie once, Big Wigs will prevent it from playing again."] = "После того, как вы увидели ролик один раз, Big Wigs не позволит ему играть снова."
L["Prevented boss movie '%d' from playing."] = "Пропущен видеоролик '%d'."
L["Pretend I'm using DBM"] = "Притворяться DBM"
L.pretendDesc = "Если пользователь DBM делает проверку версий, чтобы увидеть, у кого стоит аддон, он увидит вас в этом списке. Полезно для гильдий, которые заставляют использовать DBM."
L["Create custom DBM bars"] = "Создавать полосы DBM"
L.dbmBarDesc = "Если пользователь DBM отправляет таймер атаки или другие 'pizza' полосы, они будут показаны в Big Wigs."
L.chatMessages = "Сообщения в чат"
L.chatMessagesDesc = "Выводить все сообщения BigWigs в стандартное окно чата в дополнение к настройкам отображения."

L.slashDescTitle = "|cFFFED000Быстрые команды:|r"
L.slashDescPull = "|cFFFED000/pull:|r Отправляет отсчет атаки в рейд."
L.slashDescBar = "|cFFFED000/bar:|r Отправляет свою полосу в рейд."
L.slashDescLocalBar = "|cFFFED000/localbar:|r Создает таймер, видимый только вами."
L.slashDescRange = "|cFFFED000/range:|r Открывает индикатор близости."
L.slashDescVersion = "|cFFFED000/bwv:|r Выполняет проверку версий Big Wigs."
L.slashDescConfig = "|cFFFED000/bw:|r Открывает настройки Big Wigs."

L.BAR = "Полосы"
L.MESSAGE = "Сообщения"
L.ICON = "Иконка"
L.SAY = "Сказать"
L.FLASH = "Мигание"
L.EMPHASIZE = "Увеличение"
L.ME_ONLY = "Только, когда на мне"
L.ME_ONLY_desc = "Когда вы включите данную опцию, сообщения для способности будут показываться, только если затрагивают вас. Например, 'Бомба: Игрок' будет показываться только, когда на вас."
L.PULSE = "Импульс"
L.PULSE_desc = "В дополнение к мигающему экрану, вы можете получить иконку, связанную с конкретной способностью, в центре экрана, для привлечения внимания."
L.MESSAGE_desc = "Большинство способностей сопровождаются одним или несколькими сообщениями, которые Big Wigs будет отображать на экране. Если вы отключите эту опцию, существующие сообщения не будут отображаться."
L.BAR_desc = "Полосы отображаются для некоторых способностей, если это необходимо. Если способность сопровождается полоской, которую вы хотите скрыть, отключите эту опцию"
L.FLASH_desc = "Некоторые способности могут быть более важными, чем другие. Если вы хотите, чтобы ваш экран мигал, при использовании таких способностей, отметьте эту опцию."
L.ICON_desc = "Big Wigs может отмечать пострадавших от способностей иконкой. Это способствует их легкому обнаружению."
L.SAY_desc = "Сообщения над головами персонажей легко обнаружить. Big Wigs будет использовать канал 'cказать' для оповещения персонажей поблизости, если на вас враждебный эффект."
L.EMPHASIZE_desc = "Включив это, будет СУПЕР УВЕЛИЧЕНИЕ любого сообщения или полосы, связанных со способностью босса. Сообщения будет больше, полосы будут мигать и иметь различные цвета, будут использоваться звуки для отсчета времени надвигающейся способности. В общем, вы сами всё увидите."
L.PROXIMITY = "Отображение близости"
L.PROXIMITY_desc = "Иногда способности требуют от вас рассредоточиться. Отображение близости будет специально показываться для таких спобностей, так что вы сможете понять с одного взгляда, в безопасности вы или нет."
L.TANK = "Только танки"
L.TANK_desc = "Некоторые способности важны только для танков. Если вы хотите видеть предупреждения для таких способностей, несмотря на вашу роль, отключите эту опцию."
L.HEALER = "Только лекари"
L.HEALER_desc = "Некоторые способности важны только для лекарей. Если вы хотите видеть предупреждения для таких способностей, несмотря на вашу роль, отключите эту опцию."
L.TANK_HEALER = "Только танки и лекари"
L.TANK_HEALER_desc = "Некоторые способности важны только для танков и лекарей. Если вы хотите видеть предупреждения для таких способностей, несмотря на вашу роль, отключите эту опцию."
L.DISPEL = "Только для рассеивателей"
L.DISPEL_desc = "Если вы хотите видеть предупреждения для способности, которую не можете рассеить, отключите опцию."
L["Advanced options"] = "Дополнительные настройки"
L["<< Back"] = "<< Назад"

L.tank = "|cFFFF0000Только для танков.|r "
L.healer = "|cFFFF0000Только для лекарей.|r "
L.tankhealer = "|cFFFF0000Только для танков и лекарей.|r "
L.dispeller = "|cFFFF0000Только для рассеивателей.|r "

L.About = "О Big Wigs"
L.Developers = "Разработчики"
L.Maintainers = "Помощники"
L.License = "Лицензия"
L.Website = "Сайт"
L.Contact = "Связь"
L["See license.txt in the main Big Wigs folder."] = "Смотрите license.txt в основной папке Big Wigs."
L["irc.freenode.net in the #wowace channel"] = "irc.freenode.net на канале #wowace"
L["Thanks to the following for all their help in various fields of development"] = "Благодарим следующих лиц за их помощь в различных областях разработки"

-- Statistics
L.statistics = "Статистика"
L.norm25 = "25"
L.heroic25 = "25гер."
L.norm10 = "10"
L.heroic10 = "10гер."
L.lfr = "LFR"
L.wipes = "Поражений:"
L.kills = "Побед:"
L.bestkill = "Лучшее убийство:"

