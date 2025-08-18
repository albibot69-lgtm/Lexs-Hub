local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Lexs Hub | Script",
   Icon = 75123276914059, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Lexs Hub",
   LoadingSubtitle = "Coded By: Lexs",
   ShowText = "Lexs Hub", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Light", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = Lexs, -- Create a custom folder for your hub/game
      FileName = "Lexs Hub"
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Lexs Hub",
      Subtitle = "Lexs Hub Key System",
      Note = "Enter Key To Login", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = ture, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Budi"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Player", 4483362458) -- Title, Image
local MainSection = MainTab:CreateSection("Player")

local Button = MainTab:CreateButton({
   Name = "Anti Afk",
   Callback = function()
      local VirtualUser = game:GetService('VirtualUser')
 
game:GetService('Players').LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
 
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "AntiAFK loaded!",
    Text = "Coded By Lexs",
    Button1 = "Im Pro Coded Lexs😎",
    Duration = 5
})
   end,
})

local Button = MainTab:CreateButton({
   Name = "Fps Booster",
   Callback = function()
      repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
loadstring(game:HttpGet("https://pastefy.app/08huVciY/raw"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "No Clip",
   Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/ISwbW8SV/raw"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Fly",
   Callback = function()
      loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fly-universal-gui-43716"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Infinite-Yield-43437"))()
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(InfiniteJumpDisabled)
      local InfiniteJumpEnabled = true
      game:GetService("UserInputService").JumpRequest:connect(function()
          if InfiniteJumpEnabled then
              game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
          end
        end)    
     end,
})

local Slider = MainTab:CreateSlider({
   Name = "Walk Speed",
   Range = {16, 1000},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Jump Height",
   Range = {50, 1000},
   Increment = 10,
   Suffix = "JumpPower",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local GameTab = Window:CreateTab("Game Script", 4483362458) -- Title, Image
local Section = GameTab:CreateSection("Blox Fruit Script")

local Button = GameTab:CreateButton({
   Name = "Redz Hub",
   Callback = function()
      loadstring(game:HttpGet("https://rawscripts.net/raw/GRAVITY-Blox-Fruits-Actual-Redz-Hub-Script-Updated-40394"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Alchemy Hub",
   Callback = function()
      loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Than Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/thantzy/thanhub/refs/heads/main/thanv1"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Cokka Hub",
   Callback = function()
      loadstring(game:HttpGet("https://rawscripts.net/raw/Blox-Fruits-Cokka-Hub-12647"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Hoho Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
   end,
})

local Section = GameTab:CreateSection("Grow A Garden Script")

local Button = GameTab:CreateButton({
   Name = "Speed Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Than Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/thantzy/thanhub/refs/heads/main/thanv1"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Nat Hub",
   Callback = function()
      loadstring(game:HttpGet("https://get.nathub.xyz/loader"))();
   end,
})

local Button = GameTab:CreateButton({
   Name = "Limit Hub",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/FakeModz/LimitHub/refs/heads/main/LimitHub_Luarmor_E.lua')))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "No-Lag Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/Loader/Main.lua"))()
   end,
})

local Section = GameTab:CreateSection("99 Night In The Forest Script")

local Button = GameTab:CreateButton({
   Name = "No-Lag Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/Loader/Main.lua"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Speed Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Hoho Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "AV Hub",
   Callback = function()
      loadstring(game:HttpGet("https://get-avth-ontop.netlify.app/my-paste/script.lua"))()
   end,
})

local Section = GameTab:CreateSection("Steal A Brainrot Script")

local Button = GameTab:CreateButton({
   Name = "Kurd Hub",
   Callback = function()
      loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Kurd-Hub-29484"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Makal Hub Finder Secret And GOD Only",
   Callback = function()
      getgenv().Rarity = {
    ["Brainrot God"] = {enabled = true},
    ["Secret"] = {enabled = true},
    ["Mythic"] = {enabled = false},
    ["Legendary"] = {enabled = false},
    ["Epic"] = {enabled = false},
    ["Rare"] = {enabled = false},
    ["Common"] = {enabled = false},
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/DoliScriptz/loader/refs/heads/main/finder.txt"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "AV Hub",
   Callback = function()
      loadstring(game:HttpGet("https://get-avth-ontop.netlify.app/my-paste/script.lua"))()
   end,
})

local Button = GameTab:CreateButton({
   Name = "Hoho Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
   end,
})

Rayfield:Notify({
   Title = "Lexs Hub Loaded",
   Content = "All Script Loaded",
   Duration = 6.5,
   Image = "check",
})

-- Load Config
Rayfield:LoadConfiguration()
