--
-- Proculas: Warrior Procs
-- Created by Vaelorus of Khaz'goroth [OCE]
--
-- Generated by Proc DB 3.0
--

if select(2, UnitClass("player")) ~= "WARRIOR" then return end

local Proculas = LibStub("AceAddon-3.0"):GetAddon("Proculas")
local WarriorProcs = Proculas:NewModule("WarriorProcs")
if not Proculas.enabled then
	return nil
end

local PROCS = {

}

function WarriorProcs:OnInitialize()
	Proculas:addProcList('WARRIOR',PROCS)
end