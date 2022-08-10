

--░██████╗░█████╗░░█████╗░██████╗░██████╗░██╗░█████╗░███╗░░██╗
--██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║██╔══██╗████╗░██║
--╚█████╗░██║░░╚═╝██║░░██║██████╔╝██████╔╝██║██║░░██║██╔██╗██║
--░╚═══██╗██║░░██╗██║░░██║██╔══██╗██╔═══╝░██║██║░░██║██║╚████║
--██████╔╝╚█████╔╝╚█████╔╝██║░░██║██║░░░░░██║╚█████╔╝██║░╚███║
--╚═════╝░░╚════╝░░╚════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝░╚════╝░╚═╝░░╚══╝

local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local keyWindow = Lib:MakeWindow({Name = "Scorpion", HidePremium = false, SaveConfig = true, ConfigFolder = "sc$rpion", IntroEnabled = false})

local keyTab = keyWindow:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

if 

keyTab:AddTextbox({
	Name = "Key",
	Default = "write the key here",
	TextDisappear = false,
	Callback = function(key)
		
	end	  
})

rconsoleprint("scorpion was executed, please dont close this window, made by chumimin'#2506")

wait(3)

local Window = Lib:MakeWindow({Name = "Scorpion", HidePremium = false, SaveConfig = true, ConfigFolder = "sc$rpion", IntroEnabled = true, IntroText = "Scorpion is executed."})

repeat wait() until game:IsLoaded() wait()
  game:GetService("Players").LocalPlayer.Idled:connect(function()
  game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)

local function Invis()
   pcall(function()
   game:GetService('Players').LocalPlayer.Character.LowerTorso:Destroy()
end)
end

Lib:Init()