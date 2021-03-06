--
-- Proculas: Trinket Procs
-- Created by Vaelorus of Khaz'goroth [OCE]
--
-- Generated by Proc DB 3.0
--

local Proculas = LibStub("AceAddon-3.0"):GetAddon("Proculas")
local TrinketProcs = Proculas:NewModule("TrinketProcs")
if not Proculas.enabled then
	return nil
end

local PROCS = {
	[59520] = {spellIds={"92108"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="1"}, -- Proc #1: Unheeded Warning
	[59326] = {spellIds={"91007"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="2"}, -- Proc #2: Bell of Enraging Resonance
	[59224] = {spellIds={"91816"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="3"}, -- Proc #3: Heart of Rage
	[59441] = {spellIds={"92124"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="4"}, -- Proc #4: Prestor's Talisman of Machination
	[59506] = {spellIds={"91821"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="11"}, -- Proc #11: Crushing Weight
	[59473] = {spellIds={"92126"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="12"}, -- Proc #12: Essence of the Cyclone
	[59500] = {spellIds={"91184"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="13"}, -- Proc #13: Fall of Mortality
	[59519] = {spellIds={"91024"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="14"}, -- Proc #14: Theralion's Mirror
	[55266] = {spellIds={"92052"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="15"}, -- Proc #15: Grace of the Herald
	[55787] = {spellIds={"90885"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="16"}, -- Proc #16: Witching Hourglass
	[56295] = {spellIds={"92087"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="17",heroic=true}, -- Proc #17: Grace of the Herald
	[56320] = {spellIds={"90887"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="18",heroic=true}, -- Proc #18: Witching Hourglass
	[55995] = {spellIds={"91147"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="19"}, -- Proc #19: Blood of Isiset
	[56102] = {spellIds={"92096"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="20"}, -- Proc #20: Left Eye of Rajh
	[56100] = {spellIds={"91370"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="21"}, -- Proc #21: Right Eye of Rajh
	[55889] = {spellIds={"90989"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="22"}, -- Proc #22: Anhuur's Hymnal
	[56414] = {spellIds={"91149"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="23",heroic=true}, -- Proc #23: Blood of Isiset
	[56427] = {spellIds={"92094"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="24",heroic=true}, -- Proc #24: Left Eye of Rajh
	[56431] = {spellIds={"91368"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="25",heroic=true}, -- Proc #25: Right Eye of Rajh
	[56407] = {spellIds={"90992"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="26",heroic=true}, -- Proc #26: Anhuur's Hymnal
	[55868] = {spellIds={"91363"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="27"}, -- Proc #27: Heart of Solace
	[56393] = {spellIds={"91364"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="28",heroic=true}, -- Proc #28: Heart of Solace
	[55795] = {spellIds={"92069"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="29"}, -- Proc #29: Key to the Endless Chamber
	[55819] = {spellIds={"91138"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="30"}, -- Proc #30: Tear of Blood
	[55810] = {spellIds={"90896"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="31"}, -- Proc #31: Tendrils of Burrowing Dark
	[56328] = {spellIds={"92091"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="32",heroic=true}, -- Proc #32: Key to the Endless Chamber
	[56351] = {spellIds={"91139"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="33",heroic=true}, -- Proc #33: Tear of Blood
	[56339] = {spellIds={"90898"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="34",heroic=true}, -- Proc #34: Tendrils of Burrowing Dark
	[55237] = {spellIds={"92166"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="35"}, -- Proc #35: Porcelain Crab
	[56280] = {spellIds={"92174"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESH"},onSelfOnly=0,procId="36",heroic=true}, -- Proc #36: Porcelain Crab
	[61047] = {spellIds={"85022"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESHED"},onSelfOnly=0,procId="48"}, -- Proc #48: Vicious Gladiator's Insignia of Conquest
	[61045] = {spellIds={"85027"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESHED"},onSelfOnly=0,procId="49"}, -- Proc #49: Vicious Gladiator's Insignia of Dominance
	[61046] = {spellIds={"85032"},types={"SPELL_AURA_APPLIED","SPELL_AURA_REFRESHED"},onSelfOnly=0,procId="50"}, -- Proc #50: Vicious Gladiator's Insignia of Victory
}

function TrinketProcs:OnInitialize()
	Proculas:addProcList('ITEMS',PROCS)
end