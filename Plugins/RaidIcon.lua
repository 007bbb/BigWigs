----------------------------------
--      Module Declaration      --
----------------------------------

local plugin = BigWigs:NewPlugin("Raid Icons")
if not plugin then return end

------------------------------
--      Are you local?      --
------------------------------

local lastplayer = {}
local fmt = string.format
local SetIcon = SetRaidTarget

local L = LibStub("AceLocale-3.0"):GetLocale("Big Wigs: Plugins")
local icons = {
	L["Star"],
	L["Circle"],
	L["Diamond"],
	L["Triangle"],
	L["Moon"],
	L["Square"],
	L["Cross"],
	L["Skull"],
	"|cffff0000Disable|r",
}

--------------------------------------------------------------------------------
-- Options
--

plugin.defaultDB = {
	icon = 8,
	secondIcon = 7,
}

local function get(info)
	local key = info[#info]
	if not plugin.db.profile[key] then return 9
	else return plugin.db.profile[key] end
end
local function set(info, index)
	plugin.db.profile[info[#info]] = index > 8 and nil or index
end

plugin.pluginOptions = {
	type = "group",
	name = "Icons",
	desc = L["Configure which icon Big Wigs should use when placing raid target icons on players for important 'bomb'-type boss abilities."],
	get = get,
	set = set,
	args = {
		description = {
			type = "description",
			name = "Some encounters might include elements such as bomb-type abilities targetted on a specific player, a player being chased, or a specific player might be of interest in other ways. Here you can customize which raid icons should be used to mark these players.\n\nIf an encounter only has one ability that is worth marking for, only the first icon will be used. One icon will never be used for two different abilities on the same encounter, and any given ability will always use the same icon next time.\n\n|cffff4411Note that if a player has already been marked manually, Big Wigs will never change his icon.|r",
			order = 1,
			width = "full",
			fontSize = "medium",
		},
		icon = {
			type = "select",
			name = "Primary",
			desc = "The first raid target icon that a encounter script should use.",
			order = 2,
			values = icons,
			width = "full",
		},
		secondIcon = {
			type = "select",
			name = "Secondary",
			desc = "The second raid target icon that a encounter script should use.",
			order = 3,
			values = icons,
			width = "full",
		},
	},
}

------------------------------
--      Initialization      --
------------------------------

function plugin:OnPluginEnable()
	self:RegisterMessage("BigWigs_SetRaidIcon")
	self:RegisterMessage("BigWigs_RemoveRaidIcon")
end

function plugin:BigWigs_SetRaidIcon(message, player, icon)
	if not BigWigs.db.profile.raidicon then return end
	if not player then return end
	if not GetRaidTargetIndex(player) then
		local index = (not icon or icon == 1) and self.db.profile.icon or self.db.profile.secondIcon
		if not index then return end
		SetIcon(player, index)
		lastplayer[icon or 1] = player
	end
end

function plugin:BigWigs_RemoveRaidIcon(message, icon)
	if not BigWigs.db.profile.raidicon then return end
	if not lastplayer[icon or 1] then return end
	SetIcon(lastplayer[icon or 1], 0)
	lastplayer[icon or 1] = nil
end

