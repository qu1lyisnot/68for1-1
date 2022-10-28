local module = loadsting(game:HttpGet('https://raw.githubusercontent.com/qu1lyisnot/68for1-1/scripts/dataLibs.lua'))()
local whitelist = module.MissingHub

if table.find(module.MissingHub, game.Player.LocalPlayer.Name) then
	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
	local Window = Rayfield:CreateWindow({
	    Name = "Missing Hub",
	    LoadingTitle = "Missing Hub",
	    LoadingSubtitle = "by Qu1ly",
	    ConfigurationSaving = {
		Enabled = true,
		FileName = "missingHub",
	    },
	    KeySystem = true, -- Set this to true to use our key system
	    KeySettings = {
		Title = "Missing Hub",
		Subtitle = "Key System",
		Note = "gayyy",
		Key = "potatoUser666"
	    }
	})

	local Home = Window:CreateTab("Home")
	local Automation = Window:CreateTab("Automation")

	local NameHome = Home:CreateLabel("Hello, "..game.Players.LocalPlayer.Name.."!")
	local DestroyButton = Home:CreateButton({
		Name = "Destroy Script",
		Callback = function()
			Rayfield:Destroy()
		end,
	})

	local DarkMatteringToggle = Automation:CreateToggle({
		Name = "Dark Mattering",
		CurrentValue = false,
		Flag = "Dark_Mattering", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			v1 = Value

		if v1 then
		    while v1 do wait(1)
			local pets = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets
			local darkMatterPets = {}
			local filterId = "rbxassetid://7795324305"

			local function darkMatter(table)
			    local tablet = {[1] = table}

			    workspace.__THINGS.__REMOTES["convert to dark matter"]:InvokeServer(tablet)
			end

			for i, v in pairs(pets:GetChildren())do
			    if v:IsA("TextButton") then
				if v.PetIcon.Image == filterId then
				    if not table.find(darkMatterPets, v.Name) and #darkMatterPets < 6 or #darkMatterPets == 6 then
					table.insert(darkMatterPets, v.Name)
				    elseif #darkMatterPets > 6 then
					table.remove(darkMatterPets, 7)
				    end
				end
			    end
			end

			darkMatter(darkMatterPets)
		    end
		end
		end,
	})

	local FusingToggle = Automation:CreateToggle({
		Name = "Fusing",
		CurrentValue = false,
		Flag = "Fusing", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			v1 = Value

		if v1 then
		    while v1 do wait()
			local pets = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets
			local fusePets = {}
			local filterId = "rbxassetid://7795339363"

			local function Fuse(table)
			    local tablet = {[1] = table}

			    workspace.__THINGS.__REMOTES["fuse pets"]:InvokeServer(tablet)
			end

			for i, v in pairs(pets:GetChildren())do
			    if v:IsA("TextButton") then
				if v.PetIcon.Image == filterId then
				    if not table.find(fusePets, v.Name) and #fusePets < 12 or #fusePets == 12 and #fusePets > 3 then
					table.insert(fusePets, v.Name)
				    elseif #fusePets > 12 then
					table.remove(fusePets, 13)
				    end
				end
			    end
			end

			Fuse(fusePets)
		    end    
		end
		end,
	})

	local Autoegg = Automation:CreateToggle({
		Name = "Auto-egg",
		CurrentValue = false,
		Flag = "AUTOEGG", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			v1 = Value

		if v1 then
		    while v1 do wait(1)
			local ohTable1 = {
			    [1] = "Cursed Egg",
			    [2] = false
			    }
			workspace.__THINGS.__REMOTES["buy egg"]:InvokeServer(ohTable1)
		    end    
		end
		end,
	})

	Rayfield:LoadConfiguration()

end
