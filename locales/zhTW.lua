local L = LibStub("AceLocale-3.0"):NewLocale("oRA3", "zhTW")
if not L then return end

-- Generic
L["Name"] = "oRA3"
L["Checks"] = "狀態檢查"
L["Disband Group"] = "解散團隊"
L["Options"] = "選項"
L["<oRA3> Disbanding group."] = "<oRA3>正在解散團隊"
L["Click to open/close oRA3"] = "打開/關閉 oRA3"
L["Unknown"] = "未知"

L["WARLOCK"] = "術士"
L["WARRIOR"] = "戰士"
L["HUNTER"] = "獵人"
L["MAGE"] = "法師"
L["PRIEST"] = "牧師"
L["DRUID"] = "德魯伊"
L["PALADIN"] = "聖騎士"
L["SHAMAN"] = "薩滿"
L["ROGUE"] = "盜賊"
L["DEATHKNIGHT"] = "死亡騎士"

-- Ready check module
L["The following players are not ready: %s"] = "下列隊員未準備好:%s"
L["Ready check over in %d seconds"] = "就位確認還有%d秒結束"
L["Ready"] = "準備好"
L["Not Ready"] = "未準備好"
L["No Response"] = "未確認"
L["Offline"] = "離線"

-- Durability module
L["Durability"] = "耐久度"
L["Average"] = "平均"
L["Broken"] = "損壞"
L["Minimum"] = "最少"

-- Resistances module
L["Resistances"] = "抗性"
L["Frost"] = "冰霜"
L["Fire"] = "火焰"
L["Shadow"] = "暗影"
L["Nature"] = "自然"
L["Arcane"] = "秘法"

-- Resurrection module
L["%s is ressing %s."] = "%s正在復活%s"

-- Invite module
L["Invite"] = "組隊邀請"
L["All max level characters will be invited to raid in 10 seconds. Please leave your groups."] = "公告：公會中所有滿級玩家會被在10秒內被邀請，請保持沒有隊伍！"
L["All characters in %s will be invited to raid in 10 seconds. Please leave your groups."] = "公告：公會中所有在%s的玩家會被在10秒內被邀請，請保持沒有隊伍！"
L["All characters of rank %s or higher will be invited to raid in 10 seconds. Please leave your groups."] = "公告：公會中所有階級在%s以上的玩家會被在10秒內被邀請，請保持沒有隊伍！"  
L["<oRA3> Sorry, the group is full."] = "抱歉，隊伍已滿。"
L["Invite all guild members of rank %s or higher."] = "邀請公會中所有階級在%s以上的玩家"
L["Keyword"] = "組隊關鍵字"
L["When people whisper you the keywords below, they will automatically be invited to your group. If you're in a party and it's full, you will convert to a raid group. The keywords will only stop working when you have a full raid of 40 people. Setting a keyword to nothing will disable it."] = "當玩家密語你關鍵字,將會自動邀請到隊伍.如果你在隊伍並且滿了,將會轉成團隊.當組滿40人關鍵字將會失效.沒設定關鍵字是禁用"
L["Anyone who whispers you this keyword will automatically and immediately be invited to your group."] = "當玩家密語你關鍵字,將會自動邀請到隊伍."
L["Guild Keyword"] = "公會關鍵字"
L["Any guild member who whispers you this keyword will automatically and immediately be invited to your group."] = "任何公會成員密語你關鍵字將會自動邀請到團隊."
L["Invite guild"] = "公會邀請"
L["Invite everyone in your guild at the maximum level."] = "邀請公會中滿級的玩家"
L["Invite zone"] = "區域邀請"
L["Invite everyone in your guild who are in the same zone as you."] = "邀請在相同區域的公會成員."
L["Guild rank invites"] = "階級邀請"
L["Clicking any of the buttons below will invite anyone of the selected rank AND HIGHER to your group. So clicking the 3rd button will invite anyone of rank 1, 2 or 3, for example. It will first post a message in either guild or officer chat and give your guild members 10 seconds to leave their groups before doing the actual invites."] = "自動邀請階級高於等於所選等級的公會成員，按下該按鈕會自動在公會和官員頻道發送要求10秒內離隊待組的消息，10秒後自動開始組人"

-- Promote module
L["Promote"] = "自動提升"
L["Mass promotion"] = "批量提升"
L["Everyone"] = "所有人"
L["Promote everyone automatically."] = "自動提升所有人"
L["Guild"] = "公會"
L["Promote all guild members automatically."] = "自動提升團隊中的公會玩家"
L["By guild rank"] = "根據階級"
L["Individual promotions"] = "單獨提升"
L["Note that names are case sensitive. To add a player, enter a player name in the box below and hit Enter or click the button that pops up. To remove a player from being promoted automatically, just click his name in the dropdown below."] = "注意，玩家名字區分大小寫。要新增玩家,在輸入框輸入玩家名稱按下Enter或是點擊彈出的按鈕。在下拉列表中選中一個玩家就可以刪除該玩家的自動提升。"
L["Add"] = "增加"
L["Remove"] = "刪除"

-- Cooldowns module
L["Cooldowns"] = "冷卻監視"
L["Monitor settings"] = "監視器設定"
L["Show monitor"] = "顯示"
L["Lock monitor"] = "鎖定"
L["Show or hide the cooldown bar display in the game world."] = "是否顯示冷卻監視器"
L["Note that locking the cooldown monitor will hide the title and the drag handle and make it impossible to move it, resize it or open the display options for the bars."] = "鎖定後將隱藏監視器的標題並將無法拖曳, 設定大小, 打開設定."
L["Only show my own spells"] = "只顯示我的法術冷卻"
L["Toggle whether the cooldown display should only show the cooldown for spells cast by you, basically functioning as a normal cooldown display addon."] = "是否只顯示你自己釋放的法術的冷卻, 這將是一個普通的法術冷卻插件."
L["Cooldown settings"] = "冷卻選項"
L["Select which cooldowns to display using the dropdown and checkboxes below. Each class has a small set of spells available that you can view using the bar display. Select a class from the dropdown and then configure the spells for that class according to your own needs."] = "通過下拉列表選擇你想要監視的技能冷卻。每個職業都有一套可用的監視的技能冷卻列表，根據需要取捨。"
L["Select class"] = "選擇職業"
-- monitor
L["Bar Settings"] = "計時條設定"
L["Spawn test bar"] = "顯示測試計時條"
L["Use class color"] = "使用職業顏色"
L["Bar height"] = "計時條高度"
L["Icon"] = "圖示"
L["Show"] = "顯示"
L["Duration"] = "耐久度"
L["Unit name"] = "名字"
L["Spell name"] = "技能"
L["Short Spell name"] = "技能縮寫"

-- Zone module
L["Zone"] = "區域"

-- Version module
L["Version"] = "版本"