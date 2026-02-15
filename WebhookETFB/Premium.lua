local HttpService = game:GetService("HttpService")

local WEBHOOK = "https://discord.com/api/webhooks/1464548671097016485/bCnoCBLKlTA17Etcq7Vl4G2XVaUBacpcBJZvoxxtFuUoAMRg4vEzGF7Bl1DMgtkkfiG6"

-- ROLE MENTION
local ROLES = {
	"1421127844821602426",
}

-- VERSION DINAMIS
local VERSION_TEXT = "Premium"

-- BUILD MENTION
local mentions = {}
for _, id in ipairs(ROLES) do
	table.insert(mentions, "<@&"..id..">")
end

local data = {
	username = "Lexs Hub Update",
	avatar_url = "https://cdn.discordapp.com/attachments/1460885261616550015/1469958871488528530/LexsHub3Decal.png?ex=698c3061&is=698adee1&hm=f466d9bb7d3f85d6788c5ed77a2ff8860003121a92095768c142af3561e05b53&",

	content = table.concat(mentions, " "),

	allowed_mentions = {
		roles = ROLES
	},

	embeds = {{
		title = "Escape Tsunami For Brainrot",

		author = {
			name = "Version: "..VERSION_TEXT
		},

		color = 0x00c3ff,

		description =
			"```diff\n" ..
			"[ + ] Added Teleport Gap 10\n" ..
			"[ + ] Added Teleport Gap 11\n" ..
			"[ + ] Added Teleport Gap 12\n" ..
			"[ / ] Fix Auto Collect Cash\n" ..
			"```\n\n" ..
			"**Rejoin & Re-execute the script**",

		image = {
			url = "https://tr.rbxcdn.com/180DAY-754ef874827c6f7f38a3901d4558c4ed/768/432/Image/Webp/noFilter"
		},

		footer = {
			text = "Lexs Hub Update • Escape Tsunami For Brainrot"
		},

		timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
	}}
}

request({
	Url = WEBHOOK,
	Method = "POST",
	Headers = {
		["Content-Type"] = "application/json"
	},
	Body = HttpService:JSONEncode(data)
})
