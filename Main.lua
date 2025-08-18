local than = game:HttpGet("https://github.com/albibot69-lgtm/Lexs.git")
        local Fluent = loadstring(null)()

        local Window = Fluent:CreateWindow({
            Title = "Lexs Hub [ Free Version ]",
            Icon = "rbxassetid://131711698212719",
            Author = "null",
            Folder = "LEXS hub",
            Size = UDim2.fromOffset(560, 400),
            Transparent = true,
            Theme = "Dark",
            SideBarWidth = 170,
            HasOutline = true
        })

local MAINTabs = {}

do
    Tabs.Misc        = Window:Tab({ Title = "Misc", Icon = "gamepad-2" })
end


Window:SelectTab(1)
Window:EditOpenButton({
    Enabled = false
})
Window:SetToggleKey(Enum.KeyCode.RightControl)
