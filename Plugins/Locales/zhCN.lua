local L = LibStub("AceLocale-3.0"):NewLocale("Big Wigs: Plugins", "zhCN")

if not L then return end

-- Bars2.lua

L["Bars"] = "计时条"
L["Normal Bars"] = "一般计时条"
L["Emphasized Bars"] = "醒目计时条"
L["Options for the timer bars."] = "计时条选项。"
L["Toggle anchors"] = "切换锚点"
L["Show or hide the bar anchors for both normal and emphasized bars."] = "显示或隐藏计时条与醒目计时条锚点。"
L["Scale"] = "缩放"
L["Set the bar scale."] = "设置计时条缩放。"
L["Grow upwards"] = "向上成长"
L["Toggle bars grow upwards/downwards from anchor."] = "切换计时条在锚点向上或向下成长。"
L["Texture"] = "材质"
L["Set the texture for the timer bars."] = "设置计时条的材质。"
L["Test"] = "测试"
L["Close"] = "关闭"
L["Emphasize"] = "醒目"
L["Emphasize bars that are close to completion (<10sec). Also note that bars started at less than 15 seconds initially will be emphasized right away."] = "醒目计时条是当接近（小于10秒）。如果计时条开始时间小于15秒则会立刻醒目显示。"
L["Enable"] = "启用"
L["Enables emphasizing bars."] = "启用醒目计时条。"
L["Move"] = "移动"
L["Moves emphasized bars to the Emphasize anchor. If this option is off, emphasized bars will simply change scale and color, and maybe start flashing."] = "移动醒目计时条到醒目锚点。如果此选项关闭，醒目计时条将只改变缩放与颜色以及可能开始闪烁。"
L["Set the scale for emphasized bars."] = "设置醒目计时条缩放。"
L["Reset position"] = "重置位置"
L["Reset the anchor positions, moving them to their default positions."] = "重置锚点位置，移动它们到默认位置。"
L["Test"] = "测试"
L["Creates a new test bar."] = "新建测试计时条。"
L["Hide"] = "隐藏"
L["Hides the anchors."] = "隐藏锚点。"
L["Flash"] = "闪烁"
L["Flashes the background of emphasized bars, which could make it easier for you to spot them."] = "醒目计时条背景闪烁，方便你留意它。"
L["Regular bars"] = "常规计时条"
L["Emphasized bars"] = "醒目计时条"
L["Align"] = "对齐"
L["How to align the bar labels."] = "对齐计时条标签。"
L["Left"] = "左"
L["Center"] = "中"
L["Right"] = "右"
L["Time"] = "时间"
L["Whether to show or hide the time left on the bars."] = "在计时条上显示或隐藏时间。"
L["Icon"] = "图标"
L["Shows or hides the bar icons."] = "显示或隐藏计时条图标。"
L["Font"] = "字体"
L["Set the font for the timer bars."] = "设置计时条字体。"

L["Local"] = "本地"
L["%s: Timer [%s] finished."] = "%s：计时条[%s]到时间。"
L["Invalid time (|cffff0000%q|r) or missing bar text in a custom bar started by |cffd9d919%s|r. <time> can be either a number in seconds, a M:S pair, or Mm. For example 5, 1:20 or 2m."] = "无效记时条（|cffff0000%q|r）或 |cffd9d919%s|r 上的记时条文字错误，<time> 输入一个数字单位默认为秒，可以为 M:S 或者 Mm。例如 5, 1:20 或 2m。"

-- Colors.lua

L["Colors"] = "颜色"

L["Messages"] = "信息提示"
L["Bars"] = "计时条"
L["Short"] = "短"
L["Long"] = "长"
L["Short bars"] = "短时间计时条"
L["Long bars"] = "长时间计时条"
L["Color "] = "颜色 "
L["Number of colors"] = "显示颜色数量"
L["Background"] = "背景"
L["Text"] = "文本"
L["Reset"] = "重置"

L["Bar"] = "计时条"
L["Change the normal bar color."] = "改变一般计时条颜色。"
L["Emphasized bar"] = "醒目计时条"
L["Change the emphasized bar color."] = "改变醒目计时条颜色。"

L["Colors of messages and bars."] = "设置信息文字与计时条的颜色。"
L["Change the color for %q messages."] = "改变%q信息的颜色。"
L["Change the %s color."] = "改变%s颜色。"
L["Change the bar background color."] = "改变计时条背景颜色。"
L["Change the bar text color."] = "改变计时条文本颜色。"
L["Resets all colors to defaults."] = "重置所有颜色为默认。"

L["Important"] = "重要"
L["Personal"] = "个人"
L["Urgent"] = "紧急"
L["Attention"] = "注意"
L["Positive"] = "醒目"
L["Bosskill"] = "首领击杀"
L["Core"] = "核心"

L["color_upgrade"] = "信息与计时条颜色值已被重置以便升级到最新版本。如果想再次调整，右击 Big Wigs 图标选择插件 -> 颜色。"

-- Messages.lua

L["Messages"] = "信息"
L["Options for message display."] = "信息显示选项。"

L["BigWigs Anchor"] = "BigWigs 锚点"
L["Output Settings"] = "输出设置"

L["Show anchor"] = "显示锚点"
L["Show the message anchor frame.\n\nNote that the anchor is only usable if you select 'BigWigs' as Output."] = "显示信息锚点。\n\n只有输出为“BigWigs”时锚点可用。"

L["Use colors"] = "使用彩色信息"
L["Toggles white only messages ignoring coloring."] = "选择是否只发送单色信息。"

L["Scale"] = "缩放"
L["Set the message frame scale."] = "设定信息框体缩放。"

L["Use icons"] = "使用图标"
L["Show icons next to messages, only works for Raid Warning."] = "显示图标，只能使用在团队警告频道。"

L["Class colors"] = "职业颜色"
L["Colors player names in messages by their class."] = "使用职业颜色来染色信息内玩家颜色。"

L["|cffff0000Co|cffff00fflo|cff00ff00r|r"] = "|cffff0000颜|cffff00ff色|r"
L["White"] = "白色"

L["Outputs all BigWigs messages to the default chat frame in addition to the display setting."] = "除了增加显示设置之外，将所有 BigWigs 信息输出到默认聊天框。"

L["Chat frame"] = "聊天框体"

L["Test"] = "测试"
L["Close"] = "关闭"

L["Reset position"] = "重置位置"
L["Reset the anchor position, moving it to the center of your screen."] = "重置锚点位置，移动到屏幕的中间。"

L["Spawns a new test warning."] = "生成一个新的报警测试。"
L["Hide"] = "隐藏"
L["Hides the anchors."] = "隐藏锚点。"


-- RaidIcon.lua

L["Raid Icons"] = "团队标记"
L["Configure which icon Big Wigs should use when placing raid target icons on players for important 'bomb'-type boss abilities."] = "为 BigWigs 配置一个团队标记，以便为中了'炸弹'级别的玩家打上标记，以示提醒。"

L["RaidIcon"] = "团队标记"

L["Place"] = "设置"
L["Place Raid Icons"] = "允许团队标记"
L["Toggle placing of Raid Icons on players."] = "选择是否在玩家身上显示团队图标标记。"

L["Icon"] = "图标"
L["Set Icon"] = "设置标记"
L["Set which icon to place on players."] = "设置玩家身上团队标记。"

L["Use the %q icon when automatically placing raid icons for boss abilities."] = "使用%q标记首领的需要注意的技能目标。"

L["Star"] = "星形"
L["Circle"] = "圆形"
L["Diamond"] = "棱形"
L["Triangle"] = "三角"
L["Moon"] = "月亮"
L["Square"] = "方形"
L["Cross"] = "十字"
L["Skull"] = "骷髅"

-- RaidWarn.lua
L["RaidWarning"] = "团队通知"

L["Whisper"] = "密语"
L["Toggle whispering warnings to players."] = "通过密语向玩家发送信息。"

L["raidwarning_desc"] = "设置除本地输出之外的，BigWigs 发送的首领预警信息。"

-- Sound.lua

L["Sounds"] = "声音"
L["Options for sounds."] = "声音设置。"

L["Alarm"] = "警报"
L["Info"] = "信息"
L["Alert"] = "报警"
L["Long"] = "长计时"
L["Victory"] = "胜利"

L["Set the sound to use for %q.\n\nCtrl-Click a sound to preview."] = "设置使用%q声音（Ctrl-点击可以预览效果）。"
L["Use sounds"] = "使用声音"
L["Toggle all sounds on or off."] = "选择声音的开或关。"
L["Default only"] = "预设"
L["Use only the default sound."] = "只选用预设声音。"

-- Proximity.lua

L["Proximity"] = "近距离"
L["Close Players"] = "近距离玩家"
L["Options for the Proximity Display."] = "近距离显示选项。"
L["|cff777777Nobody|r"] = "|cff777777没有玩家|r"
L["Sound"] = "声效"
L["Play sound on proximity."] = "近距离时声效提示。"
L["Disabled"] = "禁用"
L["Disable the proximity display for all modules that use it."] = "禁止所有首领模块使用近距离。"
L["The proximity display will show next time. To disable it completely for this encounter, you need to toggle it off in the encounter options."] = "近距离将在下次显示。要完全禁用此功能，需要关闭此功能选项。"
L["The proximity display has been locked, you need to right click the Big Wigs icon, go to Extras -> Proximity -> Display and toggle the Lock option if you want to move it or access the other options."] = "近距离显示已被锁定，需要移动或其他选项，右击 Big Wigs 图标，附加功能 -> 近距离 -> 显示可以切换锁定选项。"

L.proximity = "近距离显示"
L.proximity_desc = "显示近距离窗口，列出距离你很近的玩家。"

L.proximityfont = "Fonts\\ZYKai_T.TTF"

L["Close"] = "关闭"
L["Closes the proximity display.\n\nTo disable it completely for any encounter, you have to go into the options for the relevant boss module and toggle the 'Proximity' option off."] = "关闭近距离显示。\n\n要完全禁用此任一功能，需进入相对应首领模块选项关闭“近距离”功能。"
L["Test"] = "测试"
L["Perform a Proximity test."] = "距离报警测试。"
L["Display"] = "显示"
L["Options for the Proximity display window."] = "近距离显示窗口选项。"
L["Lock"] = "锁定"
L["Locks the display in place, preventing moving and resizing."] = "锁定显示窗口，防止被移动和缩放。"
L["Title"] = "标题"
L["Shows or hides the title."] = "显示或隐藏标题。"
L["Background"] = "背景"
L["Shows or hides the background."] = "显示或隐藏背景。"
L["Toggle sound"] = "切换声效"
L["Toggle whether or not the proximity window should beep when you're too close to another player."] = "当近距离窗口有其他过近玩家时切换任一或关闭声效。"
L["Sound button"] = "音效按钮"
L["Shows or hides the sound button."] = "显示或隐藏音效按钮。"
L["Close button"] = "关闭按钮"
L["Shows or hides the close button."] = "显示或隐藏关闭按钮。"
L["Show/hide"] = "显示/隐藏"
