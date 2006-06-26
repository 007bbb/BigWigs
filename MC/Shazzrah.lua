﻿local bboss = BabbleLib:GetInstance("Boss 1.2")

BigWigsShazzrah = AceAddon:new({
	name = "BigWigsShazzrah",
	cmd = AceChatCmd:new({}, {}),

	zonename = BabbleLib:GetInstance("Zone 1.2")("Molten Core"),
	enabletrigger = bboss("Shazzrah"),
	bossname = bboss("Shazzrah"),

	toggleoptions = GetLocale() == "koKR" and {
		notSelfBuff = "마법 약화 버프 경고",
		notBlink = "점멸 경고",
		notBosskill = "보스 사망",					
	} or {			
		notSelfBuff = "Warn for Self Buff",
		notBlink = "Warn for Blink",
		notBosskill = "Boss death",
	},
	optionorder = {"notSelfBuff", "notBlink", "notBosskill"},

	loc = GetLocale() == "koKR" and {
		bossname = "샤즈라",
		disabletrigger = "샤즈라|1이;가; 죽었습니다.",

		trigger1 = "샤즈라|1이;가; 샤즈라의 문|1을;를; 시전합니다.",
		trigger2 = "샤즈라|1이;가; 마법 약화 효과를 얻었습니다.",

		warn1 = "점멸 - 30초후 재점멸!",
		warn2 = "5초후 점멸!",
		warn3 = "마법 약화 버프 - 마법 무효화를 사용하세요!",

		bar1text = "점멸",
	}
		or GetLocale() == "zhCN" and
	{
		bossname = "沙斯拉尔",
		disabletrigger = "沙斯拉尔死亡了。",

		trigger1 = "沙斯拉尔获得了闪现术的效果",
		trigger2 = "沙斯拉尔获得了衰减魔法的效果",

		warn1 = "闪现术 - 30秒后再次发动",
		warn2 = "5秒后发动闪现术！",
		warn3 = "自我Buff - 驱散魔法！",

		bar1text = "闪现术",
	}
		or
	{
		bossname = "Shazzrah",
		disabletrigger = "Shazzrah dies.",

		trigger1 = "Shazzrah gains Blink",
		trigger2 = "Shazzrah gains Deaden Magic",

		warn1 = "Blink - 30 seconds to next!",
		warn2 = "5 seconds to Blink!",
		warn3 = "Self buff - Dispel Magic!",

		bar1text = "Blink",
	},
})

function BigWigsShazzrah:Initialize()
	self.disabled = true
	self:TriggerEvent("BIGWIGS_REGISTER_MODULE", self)
end

function BigWigsShazzrah:Enable()
	self.disabled = nil
	self:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS")
	self:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH")
end

function BigWigsShazzrah:Disable()
	self.disabled = true
	self:UnregisterAllEvents()
	self:TriggerEvent("BIGWIGS_BAR_CANCEL", self.loc.bar1text)
	self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_CANCEL", self.loc.warn2)
	self:TriggerEvent("BIGWIGS_BAR_DELAYEDSETCOLOR_CANCEL", self.loc.bar1text, 10)
	self:TriggerEvent("BIGWIGS_BAR_DELAYEDSETCOLOR_CANCEL", self.loc.bar1text, 20)
end

function BigWigsShazzrah:CHAT_MSG_COMBAT_HOSTILE_DEATH()
	if (arg1 == self.loc.disabletrigger) then
		if (not self:GetOpt("notBosskill")) then self:TriggerEvent("BIGWIGS_MESSAGE", self.loc.bosskill, "Green", nil, "Victory") end
		self:Disable()
	end
end

function BigWigsShazzrah:CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS()
	if (string.find(arg1, self.loc.trigger1) and not self:GetOpt("notBlink")) then
		self:TriggerEvent("BIGWIGS_MESSAGE", self.loc.warn1, "Red")
		self:TriggerEvent("BIGWIGS_DELAYEDMESSAGE_START", self.loc.warn2, 25, "Orange")
		self:TriggerEvent("BIGWIGS_BAR_START", self.loc.bar1text, 30, 1, "Yellow", "Interface\\Icons\\Spell_Arcane_Blink")
		self:TriggerEvent("BIGWIGS_BAR_DELAYEDSETCOLOR_START", self.loc.bar1text, 10, "Orange")
		self:TriggerEvent("BIGWIGS_BAR_DELAYEDSETCOLOR_START", self.loc.bar1text, 20, "Red")
	elseif (string.find(arg1, self.loc.trigger2) and not self:GetOpt("notSelfBuff")) then
		self:TriggerEvent("BIGWIGS_MESSAGE", self.loc.warn3, "Red")
	end
end
--------------------------------
--      Load this bitch!      --
--------------------------------
BigWigsShazzrah:RegisterForLoad()