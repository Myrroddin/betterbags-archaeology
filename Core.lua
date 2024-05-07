---@class BetterBags: AceAddon
local BetterBags = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
assert(BetterBags, "BetterBags_Archaeology requires BetterBags")

---@class Categories: AceModule
local categories = BetterBags:GetModule("Categories")

---@type string, AddonNS
local _, addon = ...
local database = addon.db

-- create a category and populate with itemIDs
for index in pairs(database) do
    categories:AddItemToCategory(index, PROFESSIONS_ARCHAEOLOGY)
end