local oRA = LibStub("AceAddon-3.0"):GetAddon("oRA3")
local module = oRA:NewModule("Loot", "AceEvent-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("oRA3")

module.VERSION = tonumber(("$Revision: 180 $"):sub(12, -3))
local db
local defaults = {
	profile = {
		party = {
			method = "group", -- Group Loot
			threshold = "2", -- Green (should be blizzard default setting)
		},
		raid = {
			method = "master", -- master looter
			threshold = "2", -- Green (should be blizzard default setting)
		},
	}
}

function module:OnRegister()
	self.db = oRA.db:RegisterNamespace("Loot", defaults)
	db = self.db.profile
	
	oRA.RegisterCallback(self, "OnPromoted", "SetLoot")
	oRA.RegisterCallback(self, "OnStartup", "SetLoot")
end

local frame = CreateFrame("Frame", nil, UIParent)
frame:Hide()
frame:SetScript("OnUpdate", function(self, elapsed)
	self.elapsed = self.elapsed + elapsed
	if self.elapsed >= 3 then
		SetLootThreshold(self.threshold)
		self:Hide()
	end
end)

function module:SetLoot()
	if oRA:IsPromoted() and ( IsRaidLeader() or oRA.groupStatus == oRA.INPARTY ) then
		local method = db.raid.method
		local threshold = db.raid.threshold
		local master = db.raid.master
		if oRA.INPARTY then
			method = db.party.method
			threshold = db.party.threshold
			master = db.party.master
		end
		if not master then master = UnitName("player") end
		SetLootMethod(method, master, tonumber(threshold))
		if method == "master" or method == "group" then
			frame.threshold = tonumber(threshold)
			frame.elapsed = 0
			frame:Show()
		end
		-- SetLootMethod("method"[,"masterPlayer" or ,threshold])
		-- method  "group", "freeforall", "master", "neeedbeforegreed", "roundrobin".
		-- threshold  0 poor  1 common  2 uncommon  3 rare  4 epic  5 legendary  6 artifact    
	end
end

function module:GetOptions()
	local options = {
		type = "group",
		name = LOOT_METHOD,
		args = {
			raid = {
				order = 0,
				type = "group",
				name = RAID,
				inline = true,
				get = function( k ) return db.raid[k.arg] end,
				set = function( k, v ) db.raid[k.arg] = v end,
				args = {
					method = {
						type = "select", name = LOOT_METHOD,
						arg = "method",
						values = {
							needbeforegreed = LOOT_NEED_BEFORE_GREED,
							freeforall = LOOT_FREE_FOR_ALL,
							roundrobin = LOOT_ROUND_ROBIN,
							master = LOOT_MASTER_LOOTER,
							group = LOOT_GROUP_LOOT,
						}
					},
					threshold = {
						type = "select", name = LOOT_THRESHOLD,
						arg = "threshold",
						values = {
							["2"] = ITEM_QUALITY2_DESC,
							["3"] = ITEM_QUALITY3_DESC,
							["4"] = ITEM_QUALITY4_DESC,
							["5"] = ITEM_QUALITY5_DESC,
							["6"] = ITEM_QUALITY6_DESC,
						},
					},
					master = {
						type = "input", name = MASTER_LOOTER,
						arg = "master",
					},
				},
			},
			party = {
				order = 1,
				type = "group",
				name = PARTY,
				inline = true,
				get = function( k ) return db.party[k.arg] end,
				set = function( k, v ) db.party[k.arg] = v end,
				args = {
					method = {
						type = "select", name = LOOT_METHOD,
						arg = "method",
						values = {
							needbeforegreed = LOOT_NEED_BEFORE_GREED,
							freeforall = LOOT_FREE_FOR_ALL,
							roundrobin = LOOT_ROUND_ROBIN,
							master = LOOT_MASTER_LOOTER,
							group = LOOT_GROUP_LOOT,
						}
					},
					threshold = {
						type = "select", name = LOOT_THRESHOLD,
						arg = "threshold",
						values = {
							["2"] = ITEM_QUALITY2_DESC,
							["3"] = ITEM_QUALITY3_DESC,
							["4"] = ITEM_QUALITY4_DESC,
							["5"] = ITEM_QUALITY5_DESC,
							["6"] = ITEM_QUALITY6_DESC,
						}
					},
					master = {
						type = "input", name = MASTER_LOOTER,
						arg = "master",
					},
				},
			},
		},
	}
	return options
end