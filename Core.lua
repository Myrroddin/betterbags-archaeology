local BetterBags = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
assert(BetterBags, "BetterBags_Archaeology requires BetterBags")

local categories = BetterBags:GetModule("Categories")

local L = BetterBags:GetModule("Localization")

local _, addon = ...

-- create a category and populate with itemIDs
for index in pairs(addon.db) do
	categories:AddItemToCategory(index, L:G(PROFESSIONS_ARCHAEOLOGY))
end