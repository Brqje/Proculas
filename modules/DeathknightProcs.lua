--
-- Proculas: DeathKnight Procs
-- Created by Vaelorus of Khaz'goroth [OCE]
--
-- Generated by Proc DB 3.0
--

if select(2, UnitClass("player")) ~= "DEATHKNIGHT" then return end

local Proculas = LibStub("AceAddon-3.0"):GetAddon("Proculas")
local DeathKnightProcs = Proculas:NewModule("DeathKnightProcs")
if not Proculas.enabled then
	return nil
end

local PROCS = {

}

function DeathKnightProcs:OnInitialize()
	Proculas:addProcList('DEATHKNIGHT',PROCS)
end
