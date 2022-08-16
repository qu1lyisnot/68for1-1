local lib = {}

local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local is = game:GetService("UserInputService")
local rs = game:GetService("RunService")

function lib:AddWindow(nameOfWindow)
    nameOfWindow = nameOfWindow or "scorpion"
    
    local Gui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Container = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local UIPadding = Instance.new("UIPadding")
    local TopBar = Instance.new("Frame")
    local Close = Instance.new("TextButton")
    local UICorner_3 = Instance.new("UICorner")
    local Minimize = Instance.new("TextButton")
    local UICorner_4 = Instance.new("UICorner")
    local Name = Instance.new("TextLabel")

    Gui.Name = game:GetService("HttpService"):GenerateGUID(true)
    Gui.Parent = game.CoreGui
    Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Gui.ResetOnSpawn = false

    MainFrame.Name = "UILIB"
    MainFrame.Parent = Gui
    MainFrame.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
    MainFrame.BackgroundTransparency = 0.150
    MainFrame.Position = UDim2.new(0.278698593, 0, 0.219619334, 0)
    MainFrame.Size = UDim2.new(0, 728, 0, 364)

    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = MainFrame

    Container.Name = "Container"
    Container.Parent = MainFrame
    Container.Active = true
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BorderSizePixel = 0
    Container.Position = UDim2.new(0, 0, 0.0247252751, 0)
    Container.Size = UDim2.new(0, 143, 0, 355)
    Container.CanvasPosition = Vector2.new(0, 2.05070424)
    Container.ScrollBarThickness = 5

    UIListLayout.Parent = Container
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)

    UIPadding.Parent = Container
    UIPadding.PaddingTop = UDim.new(0, 10)

    TopBar.Name = "Topbar"
    TopBar.Parent = Frame
    TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopBar.BorderSizePixel = 0
    TopBar.Position = UDim2.new(-0.000147551298, 0, -0.0882218033, 0)
    TopBar.Size = UDim2.new(0, 728, 0, 41)

    Close.Name = "Close"
    Close.Parent = TopBar
    Close.BackgroundColor3 = Color3.fromRGB(255, 90, 90)
    Close.Position = UDim2.new(0.953296721, 0, 0.268292695, 0)
    Close.Size = UDim2.new(0, 22, 0, 19)
    Close.Font = Enum.Font.SourceSans
    Close.Text = ""
    Close.TextColor3 = Color3.fromRGB(0, 0, 0)
    Close.TextSize = 14.000

    UICorner_3.CornerRadius = UDim.new(0, 15)
    UICorner_3.Parent = Close

    Minimize.Name = "Minimize"
    Minimize.Parent = TopBar
    Minimize.BackgroundColor3 = Color3.fromRGB(255, 220, 112)
    Minimize.Position = UDim2.new(0.901098907, 0, 0.268292695, 0)
    Minimize.Size = UDim2.new(0, 22, 0, 19)
    Minimize.Font = Enum.Font.SourceSans
    Minimize.Text = ""
    Minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
    Minimize.TextSize = 14.000

    UICorner_4.CornerRadius = UDim.new(0, 15)
    UICorner_4.Parent = Minimize

    Name.Name = "Name"
    Name.Parent = Topbar
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1.000
    Name.Position = UDim2.new(-0.000147551298, 0, 0.00203549862, 0)
    Name.Size = UDim2.new(0, 200, 0, 41)
    Name.Font = Enum.Font.SourceSansSemibold
    Name.Text = nameOfWindow
    Name.TextColor3 = Color3.fromRGB(0, 0, 0)
    Name.TextSize = 35.000

    local function YFGBZP_fake_script() -- Close.LocalScript 
        local script = Instance.new('LocalScript', Close)
    
        script.Parent.MouseButton1Click:Connect(function()
            script.Parent.Parent.Parent.Enabled = false
        end)
    end
    coroutine.wrap(YFGBZP_fake_script)()
    
    local function TPBUST_fake_script() -- Minimize.LocalScript 
        local script = Instance.new('LocalScript', Minimize)
    
        script.Parent.MouseButton1Click:Connect(function()
            if script.Parent.Parent.Parent.Frame.Visible == true then
                script.Parent.Parent.Parent.Frame.Visible = false
            else
                script.Parent.Parent.Parent.Frame.Visible = true
            end
        end)
    end
    coroutine.wrap(TPBUST_fake_script)()
    

    is.InputBegan:connect(function(input)
		if input.KeyCode == Enum.KeyCode.RightShift then
			Gui.Enabled= not Gui.Enabled
		end
	end)

	local s, event = pcall(function()
		return TopBar.MouseEnter
	end)

	if s then
		TopBar.Active = true;

		event:connect(function()
			local input = TopBar.InputBegan:connect(function(key)
				if key.UserInputType == Enum.UserInputType.MouseButton1 then
					local objectPosition = Vector2.new(mouse.X - MainFrame.AbsolutePosition.X, mouse.Y - MainFrame.AbsolutePosition.Y)
					while rs.RenderStepped:wait() and is:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						MainFrame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (MainFrame.Size.X.Offset * MainFrame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (MainFrame.Size.Y.Offset * MainFrame.AnchorPoint.Y)), 'Out', 'Quad', 0.05, true)
					end
				end
			end)

			local leave
			leave = TopBar.MouseLeave:connect(function()
				input:disconnect()
				leave:disconnect()
			end)
		end)
	end

end

function lib:AddTab(name, callback)
    name = name or "Button"
    callback = callback or function() end
    
    local TabButtonNew = Instance.new("TextButton")
    local UICorner_2 = Instance.new("UICorner")
    TabButtonNew.Parent = Container
    TabButtonNew.BackgroundColor3 = Color3.fromRGB(194, 194, 194)
    TabButtonNew.BorderSizePixel = 0
    TabButtonNew.Position = UDim2.new(0.0419580415, 0, -0.00733687403, 0)
    TabButtonNew.Size = UDim2.new(0, 127, 0, 50)
    TabButtonNew.Font = Enum.Font.SourceSansBold
    TabButtonNew.TextColor3 = Color3.fromRGB(0, 0, 0)
    TabButtonNew.TextSize = 25.000

    UICorner_2.CornerRadius = UDim.new(0, 10)
    UICorner_2.Parent = TextButton
end

return lib
