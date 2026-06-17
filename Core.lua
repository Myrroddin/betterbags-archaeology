local BetterBags = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
assert(BetterBags, "BetterBags_Archaeology requires BetterBags")

local categories = BetterBags:GetModule("Categories")
local BL = BetterBags:GetModule("Localization")
local context = BetterBags:GetModule("Context")
local ctx = context:New("BetterBags_Archaeology")

local _, addon = ...

-- create a category and populate with itemIDs
for index in pairs(addon.db) do
	categories:AddItemToCategory(ctx, index, BL:G("PROFESSIONS_ARCHAEOLOGY"))
end