---@class BetterBags: AceAddon
local BetterBags = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
assert(BetterBags, "BetterBags_Archaeology requires BetterBags")

---@class Categories: AceModule
local categories = BetterBags:GetModule("Categories")

---@class Localization: AceModule
local L = BetterBags:GetModule("Localization")

---@type string, AddonNS
local _, addon = ...
local database = addon.db

-- start fresh, delete all items in the category; does not delete the category itself
categories:WipeCategory(L:G(PROFESSIONS_ARCHAEOLOGY))

-- create a category and populate with itemIDs
for index in pairs(database) do
    categories:AddItemToCategory(index, L:G(PROFESSIONS_ARCHAEOLOGY))
end