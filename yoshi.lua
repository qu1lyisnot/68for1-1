local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local gameTable = {
    ["YBA"] = 2809202155
}

function getGame()
    local gameName = ""

    for name, id in pairs(gameTable) do
        if id == game.PlaceId then
            gameName = name
        else
            gameName = "Unsupported"
        end

    end

    return gameName
end

local gameName = getGame()

local Window = Rayfield:CreateWindow({
	Name = "Yoshi",
	LoadingTitle = gameName,
	LoadingSubtitle = "made by qu1ly",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "yoshi", -- Create a custom folder for your hub/game
		FileName = "yoshiHub"
	},
        Discord = {
        	Enabled = true,
        	Invite = "kJSnDpVaR4", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Yoshi! Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/kJSnDpVaR4)",
		FileName = "yoshiKey",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "firstRelease"
	}
})

local Home = Window:CreateTab("Home", 4483362458)
local PlayerNameLabel = Home:CreateLabel("Hello, "..game.Players.LocalPlayer.Name.."!")
local GameNameLabel = Home:CreateLabel("You are playing: "..gameName)
local AreYouMember = Home:CreateLabel("Are you a member of our server?")
local DestroyScript = Home:CreateButton({
	Name = "Destroy Script",
	Callback = function()
		Rayfield:Destroy()
	end,
})

local Universal = Window:CreateTab("Universal", 4483362458)
local Game = Window:CreateTab(gameName, 4483362458)
if gameName == "YBA" then
    local BitchBoy = Game:CreateButton({
        Name = "Bitch Boy V3",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/zakater5/LuaRepo/main/YBA/v3.lua"))()
        end,
    })

    local WorthinessUpgrade = Game:CreateKeybind({
        Name = "Worthiness Upgrade (V)",
        CurrentKeybind = "M",
        HoldToInteract = false,
        Flag = "YBA_WorthinessUpgrade", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Keybind)
            v1 = Keybind

            local A_1 = "LearnSkill"
            local A_2 = 
            {
                ["Skill"] = "Worthiness V", 
                ["SkillTreeType"] = "Character"
            }
            local Event = game.Players.LocalPlayer.Character.RemoteFunction
            Event:InvokeServer(A_1, A_2)
        end,
    })
end

Rayfield:LoadConfiguration()
