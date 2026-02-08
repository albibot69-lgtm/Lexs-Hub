-- =========================
-- CONFIG DARI ATAS (WAJIB)
-- =========================
_G.Game = _G.Game or "Fish It"      -- Nama game
_G.Version = _G.Version or "Free"   -- Free / Premium

-- =========================
-- SERVICES
-- =========================
local StarterGui = game:GetService("StarterGui")

local HUB_NAME = "STREE HUB"
local HUB_ICON = "rbxassetid://122683047852451"

-- =========================
-- DATABASE SCRIPT (NAMA GAME)
-- =========================
local gameScripts = {
	["Break A Lucky Block"] = {
		free = "https://raw.githubusercontent.com/create-stree/STREE-HUB/refs/heads/main/BALB/Main.lua",
		premium = "https://raw.githubusercontent.com/create-stree/STREE-HUB/refs/heads/main/BALB/Premium.lua"
	},

	["Escape Tsunami For Brainrot"] = {
		free = "https://raw.githubusercontent.com/create-stree/STREE-HUB/refs/heads/main/ETFB/Main.lua",
		premium = "https://raw.githubusercontent.com/create-stree/STREE-HUB/refs/heads/main/ETFB/Premium.lua"
	},

	["Fish It"] = {
		free = "https://raw.githubusercontent.com/create-stree/STREE-HUB/refs/heads/main/Fish_It/Main.lua",
		premium = "https://raw.githubusercontent.com/create-stree/STREE-HUB/refs/heads/main/Fish_It/Premium.lua"
	},
}

-- =========================
-- NOTIFY
-- =========================
local function notify(msg, t)
	StarterGui:SetCore("SendNotification", {
		Title = HUB_NAME,
		Text = msg,
		Icon = HUB_ICON,
		Duration = t or 3
	})
end

-- =========================
-- EXECUTOR
-- =========================
local gameData = gameScripts[_G.Game]

notify("Game: " .. tostring(_G.Game))
notify("Mode: " .. _G.Version)

task.wait(1)

if not gameData then
	notify("Game not supported!", 4)
	return
end

local url =
	(_G.Version:lower() == "premium" and gameData.premium)
	or gameData.free

notify("Executing script...", 3)

local ok, err = pcall(function()
	loadstring(game:HttpGet(url))()
end)

if not ok then
	warn("[STREE HUB ERROR]", err)
	notify("Script failed to load!", 4)
end
