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
	avatar_url = "https://cdn.discordapp.com/attachments/1427988930103476225/1463860113470259277/lexshubicon.png",

	content = table.concat(mentions, " "),

	allowed_mentions = {
		roles = ROLES
	},

	embeds = {{
		title = "Fish It",

		author = {
			name = "Version: "..VERSION_TEXT
		},

		color = 0x00c3ff,

		description =
			"```diff\n" ..
			"[ + ] Added Auto Sell Enchant Stone\n" ..
			"[ + ] Added Auto Quest Suited Up (Hazmat Suit)\n" ..
			"[ + ] Added Auto Buy Charm\n" ..
			"```\n\n" ..
			"**Rejoin & Re-execute the script**",

		image = {
			url = "https://tr.rbxcdn.com/180DAY-1a5a1325243c65c29f3e9ceea5666475/768/432/Image/Webp/noFilter"
		},

		footer = {
			text = "Lexs Hub Update • Fish It"
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
