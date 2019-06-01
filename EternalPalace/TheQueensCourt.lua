if not IsTestBuild() then return end

--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("The Queen's Court", 2164, 2359)
if not mod then return end
mod:RegisterEnableMob(152853, 152852) -- Silivaz the Zealous, Pashmar the Fanatical
mod.engageId = 2311
--mod.respawnTime = 31

--------------------------------------------------------------------------------
-- Locals
--

local formationCounter = 1

--------------------------------------------------------------------------------
-- Localization
--

-- local L = mod:GetLocale()
-- if L then
-- end

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		-- General
		300088, -- Desperate Measures
		296716, -- Separation of Power
		"berserk",
		298050, -- Form Rank
		301244, -- Repeat Performance
		{297656, "PROXIMITY"}, -- Stand Alone
		297566, -- Deferred Sentence
		297585, -- Obey and Suffer

		-- Silivaz the Zealous
		{299914, "ICON", "SAY", "SAY_COUNTDOWN", "FLASH"}, -- Frenetic Charge
		300545, -- Mighty Rupture
		301807, -- Zealous Eruption

		-- Pashmar the Fanatical
		{301830, "TANK"}, -- Pashmar's Touch
		{296851, "SAY", "SAY_COUNTDOWN", "FLASH"}, -- Fanatical Verdict
		297325, -- Violent Outburst
		301947, -- Potent Spark
	},{
		[300088] =  "general",
		[298050] = -20176, -- Decree
		[299914] = -20231, -- Silivaz the Zealous
		[301830] = -20235, -- Pashmar the Fanatical
	}
end

function mod:OnBossEnable()
	-- General
	self:Log("SPELL_CAST_START", "DesperateMeasures", 300088)
	self:Log("SPELL_AURA_APPLIED", "SeparationofPower", 296716)
	self:RegisterEvent("CHAT_MSG_RAID_BOSS_EMOTE") -- Decrees
	self:Log("SPELL_DAMAGE", "StandAlone", 297672) -- Stand Alone
	-- Deferred Sentence: Stack Warning XXX How to detect stacks atm? No log event.
	self:Log("SPELL_AURA_APPLIED", "ObeyandSuffer", 297586) -- Suffering

	-- Silivaz the Zealous
	self:Log("SPELL_CAST_START", "FreneticCharge", 299915)
	self:Log("SPELL_AURA_APPLIED", "FreneticChargeApplied", 299914)
	self:Log("SPELL_AURA_REMOVED", "FreneticChargeRemoved", 299914)
	self:Log("SPELL_CAST_START", "ZealousEruption", 301807)

	-- Pashmar the Fanatical
	self:Log("SPELL_AURA_APPLIED", "PashmarsTouch", 301830)
	self:Log("SPELL_AURA_APPLIED_DOSE", "PashmarsTouch", 301830)
	self:Log("SPELL_CAST_SUCCESS", "FanaticalVerdict", 296850)
	self:Log("SPELL_AURA_APPLIED", "FanaticalVerdictApplied", 296851)
	self:Log("SPELL_AURA_REMOVED", "FanaticalVerdictRemoved", 296851)
	self:Log("SPELL_CAST_START", "ViolentOutburst", 297325)
	self:Log("SPELL_CAST_START", "PotentSpark", 301947)

	self:Log("SPELL_AURA_APPLIED", "GroundDamage", 300545) -- Mighty Rupture
	self:Log("SPELL_PERIODIC_DAMAGE", "GroundDamage", 300545)
	self:Log("SPELL_PERIODIC_MISSED", "GroundDamage", 300545)
end

function mod:OnEngage()
	formationCounter = 1

	self:CDBar(301947, 20) -- Potent Spark
	self:Bar(298050, 30) -- Form Ranks
	self:Bar(299914, 30) -- Frenetic Charge
	self:Bar(296851, 34) -- Fanatical Verdict
	self:Bar(301807, 51) -- Zealous Eruption
	self:Bar(297325, 106) -- Violent Outburst

	if self:Mythic() then
		self:Berserk(420)
	end
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:DesperateMeasures(args)
	self:Message2(args.spellId, "cyan")
	self:PlaySound(args.spellId, "long")
	self:CastBar(args.spellId, 10)
end

do
	local prev = 0
	function mod:SeparationofPower(args)
		local t = GetTime()
		if t-prev > 1.5 then
			prev = t
			self:Message2(args.spellId, "red")
			self:PlaySound(args.spellId, "alert")
		end
	end
end

function mod:CHAT_MSG_RAID_BOSS_EMOTE(_, msg)
	-- Decree Order: Form Ranks -> Repeat Performance -> Stand Alone -> Deferred Sentence -> Obey and Suffer -> Form Ranks
	local spellId = nil
	local nextSpell = nil
	if msg:find("298050", nil, true) then -- Form Ranks
		formationCounter = 1
		spellId = 298050
		nextSpell = 301244
		self:CastBar(298050, 5, CL.count:format(self:SpellName(298050), formationCounter))
		self:ScheduleTimer("ScheduledFormRanksTimer", 10)
	elseif msg:find("301244", nil, true) then -- Repeat Performance
		spellId = 301244
		nextSpell = 297656
	elseif msg:find("297656", nil, true) then -- Stand Alone
		self:OpenProximity(297656, 3) -- Stand Alone XXX Need to confirm range
		spellId = 297656
		nextSpell = 297566
	elseif msg:find("297566", nil, true) then -- Deferred Sentence
		self:CloseProximity(297656) -- Stand Alone
		spellId = 297566
		nextSpell = 297585
	elseif msg:find("297585", nil, true) then -- Obey or Suffer
		spellId = 297585
		nextSpell = 298050
	end
	if spellId then
		self:Message2(spellId, "cyan")
		self:PlaySound(spellId, "info")
		self:Bar(nextSpell, self:Mythic() and 30 or 40) -- Decree
	end
end

function mod:ScheduledFormRanksTimer()
	local maxCount = self:Mythic() and 3 or 4
	formationCounter = formationCounter + 1
	self:Message2(298050, "yellow")
	self:PlaySound(298050, "alert")
	self:CastBar(298050, 5, CL.count:format(self:SpellName(298050), formationCounter))
	if formationCounter < maxCount then
		self:ScheduleTimer("ScheduledFormRanksTimer", 10)
	end
end

do
	local prev = 0
	function mod:StandAlone(args)
		local t = GetTime()
		if t-prev > 1.5 then
			prev = t
			self:PersonalMessage(297656)
			self:PlaySound(297656, "alarm")
		end
	end
end

function mod:ObeyandSuffer(args)
	if self:Me(args.destGUID) then
		self:PersonalMessage(297585)
		self:PlaySound(297585, "alarm")
	end
end

-- Silivaz the Zealous
function mod:FreneticCharge()
	self:CDBar(299914, self:Mythic() and 40 or 60)
end

function mod:FreneticChargeApplied(args)
	self:TargetMessage2(args.spellId, "yellow", args.destName)
	self:PrimaryIcon(args.spellId, args.destName)
	if self:Me(args.destGUID) then
		self:PlaySound(args.spellId, "warning")
		self:Say(args.spellId, 100) -- Charge
		self:SayCountdown(args.spellId, 6)
		self:Flash(args.spellId)
	end
end

function mod:FreneticChargeRemoved(args)
	if self:Me(args.destGUID) then
		self:CancelSayCountdown(args.spellId)
	end
	self:PrimaryIcon(args.spellId)
end

function mod:ZealousEruption(args)
	self:Message2(args.spellId, "red")
	self:PlaySound(args.spellId, "warning")
	self:Bar(args.spellId, 104.5)
	self:CastBar(args.spellId, 14) -- 4s Cast, 10s Channeling
end


-- Pashmar the Fanatical
function mod:PashmarsTouch(args)
	local amount = args.amount or 1
	if amount > 7 then
		self:StackMessage(args.spellId, args.destName, args.amount, "purple")
		self:PlaySound(args.spellId, "alarm", nil, args.destName)
	end
end

function mod:FanaticalVerdict()
	self:CDBar(296851, 26.5)
end

do
	local playerList = mod:NewTargetList()
	function mod:FanaticalVerdictApplied(args)
		playerList[#playerList+1] = args.destName
		self:TargetsMessage(args.spellId, "yellow", playerList)
		if self:Me(args.destGUID) then
			self:PlaySound(args.spellId, "alert")
			self:Say(args.spellId)
			self:SayCountdown(args.spellId, 8)
			self:Flash(args.spellId)
		end
	end
end

function mod:FanaticalVerdictRemoved(args)
	if self:Me(args.destGUID) then
		self:CancelSayCountdown(args.spellId)
	end
end

function mod:ViolentOutburst(args)
	self:Message2(args.spellId, "red")
	self:PlaySound(args.spellId, "warning")
	self:Bar(args.spellId, 105.7)
end

function mod:PotentSpark(args)
	self:Message2(args.spellId, "yellow")
	self:PlaySound(args.spellId, "long")
	self:CDBar(args.spellId, 92.5)
end

do
	local prev = 0
	function mod:GroundDamage(args)
		if self:Me(args.destGUID) then
			local t = args.time
			if t-prev > 2 then
				prev = t
				self:PlaySound(args.spellId, "alarm")
				self:PersonalMessage(args.spellId, "underyou")
			end
		end
	end
end
