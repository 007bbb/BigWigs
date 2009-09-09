----------------------------------
--      Module Declaration      --
----------------------------------
local mod = BigWigs:NewBoss("Yogg-Saron", "Ulduar")
if not mod then return end
--Sara = 33134, Yogg brain = 33890
mod.enabletrigger = { 33288, 33134, 33890 }
mod.guid = 33288 --Yogg
mod.toggleOptions = {62979, "tentacle" , 63830, 63802, 64125, "portal", "weakened", 64059, 64465, "empowericon", 64163, 64189, "phase", 63050, 63120, "berserk", "bosskill"}
local CL = LibStub("AceLocale-3.0"):GetLocale("BigWigs:Common")
mod.optionHeaders = {
	[62979] = CL.phase:format(1),
	tentacle = CL.phase:format(2),
	[64465] = CL.phase:format(3),
	[64189] = "hard",
	phase = "general",
}

------------------------------
--      Are you local?      --
------------------------------

local guardianCount = 1
local crusherCount = 1
local pName = UnitName("player")
local guid = nil

local madnessWarningID = nil
local empowerscanner = nil

----------------------------
--      Localization      --
----------------------------

local L = LibStub("AceLocale-3.0"):NewLocale("Big Wigs: Yogg-Saron", "enUS", true)
if L then
	L["Crusher Tentacle"] = true
	L["The Observation Ring"] = true

	L.phase = "Phase"
	L.phase_desc = "Warn for phase changes."
	L.engage_warning = "Phase 1"
	L.engage_trigger = "^The time to"
	L.phase2_warning = "Phase 2"
	L.phase2_trigger = "^I am the lucid dream"
	L.phase3_warning = "Phase 3"
	L.phase3_trigger = "^Look upon the true face"

	L.portal = "Portal"
	L.portal_desc = "Warn for Portals."
	L.portal_trigger = "Portals open into %s's mind!"
	L.portal_message = "Portals open!"
	L.portal_bar = "Next portals"

	L.sanity_message = "You're going insane!"

	L.weakened = "Stunned"
	L.weakened_desc = "Warn when Yogg-saron becomes stunned."
	L.weakened_message = "%s is stunned!"
	L.weakened_trigger = "The illusion shatters and a path to the central chamber opens!"

	L.madness_warning = "Madness in 5sec!"
	L.malady_message = "Malady: %s"

	L.tentacle = "Crusher Tentacle"
	L.tentacle_desc = "Warn for Crusher Tentacle spawn."
	L.tentacle_message = "Crusher %d!"

	L.link_warning = "You are linked!"

	L.gaze_bar = "~Gaze Cooldown"
	L.empower_bar = "~Empower Cooldown"

	L.guardian_message = "Guardian %d!"

	L.empowericon = "Empower Icon"
	L.empowericon_desc = "Place a skull on the Immortal Guardian with Empowering Shadows."
	L.empowericon_message = "Empower Faded!"

	L.roar_warning = "Roar in 5sec!"
	L.roar_bar = "Next Roar"
end
L = LibStub("AceLocale-3.0"):GetLocale("Big Wigs: Yogg-Saron")

mod.locale = L

-- We need to add the player name to block those extremely stupid sanity loss
-- warnings blizz puts in the emote frame. The source for those messages USED
-- TO BE the boss, but Blizzard CHANGED IT to the player himself, for some
-- insanely crappy, unknown, stupid reason.
mod.blockEmotes = { "Brain of Yogg-Saron", "Sara", pName }


------------------------------
--      Initialization      --
------------------------------
function mod:OnBossEnable()
	self:AddCombatListener("SPELL_CAST_START", "Roar", 64189)
	self:AddCombatListener("SPELL_CAST_START", "Madness", 64059)
	self:AddCombatListener("SPELL_CAST_SUCCESS", "Empower", 64465)
	self:AddCombatListener("SPELL_AURA_APPLIED", "EmpowerIcon", 64465)
	self:AddCombatListener("SPELL_AURA_REMOVED", "RemoveEmpower", 64465)
	self:AddCombatListener("SPELL_CAST_SUCCESS", "Tentacle", 64144)
	--self:AddCombatListener("SPELL_AURA_APPLIED", "Fervor", 63138)
	self:AddCombatListener("SPELL_AURA_APPLIED", "Squeeze", 64125, 64126)
	self:AddCombatListener("SPELL_AURA_APPLIED", "Linked", 63802)
	self:AddCombatListener("SPELL_AURA_REMOVED", "Gaze", 64163)
	self:AddCombatListener("SPELL_AURA_APPLIED", "CastGaze", 64163)
	self:AddCombatListener("SPELL_AURA_APPLIED", "Malady", 63830, 63881)
	self:AddCombatListener("SPELL_AURA_REMOVED", "RemoveMalady", 63830, 63881)
	-- 63120 is the MC when you go insane in p2/3.
	self:AddCombatListener("SPELL_AURA_APPLIED", "Insane", 63120)
	self:AddCombatListener("SPELL_AURA_REMOVED_DOSE", "SanityDecrease", 63050)
	self:AddCombatListener("SPELL_AURA_APPLIED_DOSE", "SanityIncrease", 63050)
	self:AddCombatListener("SPELL_SUMMON", "Guardian", 62979)
	self:AddCombatListener("UNIT_DIED", "BossDeath")
	self:RegisterEvent("CHAT_MSG_RAID_BOSS_EMOTE")
	self:RegisterEvent("PLAYER_REGEN_ENABLED", "CheckForWipe")
	self:RegisterEvent("CHAT_MSG_MONSTER_YELL")
	guid = nil
end

function mod:VerifyEnable()
	local z = GetSubZoneText()
	if z and z == L["The Observation Ring"] then return false end
	return true
end

------------------------------
--      Event Handlers      --
------------------------------

function mod:Fervor(player, spellId)
	self:Whisper(player, "DEBUFF, watch out!", true)
end

do
	local warned = {}
	function mod:SanityIncrease(player, spellId, _, _, spellName)
		if not warned[player] then return end
		local _, _, _, stack = UnitDebuff(player, spellName)
		if stack and stack > 70 then warned[player] = nil end
	end
	function mod:SanityDecrease(player, spellId, _, _, spellName)
		if warned[player] then return end
		local _, _, _, stack = UnitDebuff(player, spellName)
		if not stack then return end
		if player == pName then
			if stack > 40 then return end
			self:IfMessage(L["sanity_message"], "Personal", spellId)
			warned[player] = true
		elseif stack < 31 then
			self:Whisper(player, L["sanity_message"], true)
			warned[player] = true
		end
	end
end

function mod:Guardian(_, spellId)
	self:IfMessage(L["guardian_message"]:format(guardianCount), "Positive", spellId)
	guardianCount = guardianCount + 1
end

function mod:Insane(player, spellId, _, _, spellName)
	self:TargetMessage(spellName, player, "Attention", spellId)
end

function mod:Tentacle(_, spellId, source, _, spellName)
	-- Crusher Tentacle (33966) 50 sec
	-- Corruptor Tentacle (33985) 25 sec
	-- Constrictor Tentacle (33983) 20 sec
	if source == L["Crusher Tentacle"] and self.db.profile.tentacle then
		self:IfMessage(L["tentacle_message"]:format(crusherCount), "Important", 64139)
		crusherCount = crusherCount + 1
		self:Bar(L["tentacle_message"]:format(crusherCount), 55, 64139)
	end
end

function mod:Roar(_, spellId, _, _, spellName)
	self:IfMessage(spellName, "Attention", spellId)
	self:Bar(L["roar_bar"], 60, spellId)
	self:DelayedMessage(55, L["roar_warning"], "Attention")
end

function mod:Malady(player)
	self:PrimaryIcon(player)
end

function mod:RemoveMalady(player)
	self:PrimaryIcon(false)
end

function mod:Squeeze(player, spellId, _, _, spellName)
	self:TargetMessage(spellName, player, "Positive", spellId)
end

function mod:Linked(player, spellId)
	if player == pName then
		self:LocalMessage(L["link_warning"], "Personal", spellId, "Alarm")
	end
end

function mod:Gaze(_, spellId, _, _, spellName)
	self:Bar(L["gaze_bar"], 9, spellId)
end

function mod:CastGaze(_, spellId, _, _, spellName)
	self:Bar(spellName, 4, spellId)
end

function mod:Madness(_, spellId, _, _, spellName)
	self:Bar(spellName, 60, 64059)
	madnessWarningID = self:DelayedMessage(55, L["madness_warning"], "Urgent")
end

function mod:Empower(_, spellId, _, _, spellName)
	self:IfMessage(spellName, "Important", spellId)
	self:Bar(L["empower_bar"], 46, spellId)
end

function mod:RemoveEmpower()
	if self.db.profile.empowericon then
		self:IfMessage(L["empowericon_message"], "Positive", 64465)
		self:SendMessage("BigWigs_RemoveRaidIcon")
	end
end

local function scanTarget()
	local unitId = mod:GetUnitIdByGUID(guid)
	if not unitId then return end
	SetRaidTarget(unitId, 8)
	mod:CancelTimer(empowerscanner)
end

function mod:EmpowerIcon(...)
	if not IsRaidLeader() and not IsRaidOfficer() then return end
	if not self.db.profile.empowericon then return end
	guid = tonumber(((select(9, ...))):sub(-12,-7), 16)
	empowerscanner = self:ScheduleRepeatingTimer(scanTarget, 0.1)
end

function mod:CHAT_MSG_RAID_BOSS_EMOTE(event, msg)
	if msg == L["portal_trigger"] and self.db.profile.portal then
		self:IfMessage(L["portal_message"], "Positive", 35717)
		self:Bar(L["portal_bar"], 90, 35717)
	elseif msg == L["weakened_trigger"] and self.db.profile.weakened then
		self:IfMessage(L["weakened_message"]:format(self.displayName), "Positive", 50661) --50661, looks like a weakened :)
	end
end

function mod:CHAT_MSG_MONSTER_YELL(event, msg)
	if msg:find(L["engage_trigger"]) then
		phase = 1
		guardianCount = 1
		if self.db.profile.phase then
			self:IfMessage(L["engage_warning"], "Attention")
		end
		if self.db.profile.berserk then
			self:Berserk(900, true)
		end
	elseif msg:find(L["phase2_trigger"]) then
		phase = 2
		crusherCount = 1
		if self.db.profile.phase then
			self:IfMessage(L["phase2_warning"], "Attention")
		end
		if self.db.profile.portal then
			self:Bar(L["portal_bar"], 78, 35717)
		end
	elseif msg:find(L["phase3_trigger"]) then
		phase = 3
		self:CancelScheduledEvent(madnessWarningID)

		local madness = GetSpellInfo(64059)
		self:SendMessage("BigWigs_StopBar", self, madness)
		self:SendMessage("BigWigs_StopBar", self, L["tentacle_message"]:format(crusherCount))
		self:SendMessage("BigWigs_StopBar", self, L["portal_bar"])

		if self.db.profile.phase then
			self:IfMessage(L["phase3_warning"], "Important", nil, "Alarm")
		end
		if self:GetOption(64465) then
			self:Bar(L["empower_bar"], 46, 64486)
		end
	end
end

