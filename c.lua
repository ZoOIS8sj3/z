
--[[
local a=game:HttpGet("https://raw.githubusercontent.com/ZoOIS8sj3/z/main/id.lua")local b={1}local c=(function(a)a=tostring(a)return a:reverse():gsub("%d%d%d","%1,"):reverse():gsub("^,","")end)local function c()for c,c in pairs(game:GetService('Workspace').Players:GetChildren())do if c:FindFirstChild('UpperTorso')then if not c:FindFirstChild('UpperTorso'):FindFirstChild('OriginalSize')then local b=game:GetService('Players'):FindFirstChild(c.Name)if b then local b=game:GetService('Players'):FindFirstChild(c.Name).UserId;if string.find(a,b)then if c:FindFirstChildWhichIsA('Humanoid')then c:FindFirstChildWhichIsA('Humanoid').DisplayName=('[⭐]'..game.Players[c.Name].DisplayName)end else if c:FindFirstChildWhichIsA('Humanoid')then c:FindFirstChildWhichIsA('Humanoid').DisplayName=('[💻]'..game.Players[c.Name].DisplayName)end end end else local d=game.Players:FindFirstChild(c.Name)if d then local d=game.Players:FindFirstChild(c.Name).UserId;if table.find(b,d)then if c:FindFirstChildWhichIsA('Humanoid')then c:FindFirstChildWhichIsA('Humanoid').DisplayName=('[👑]'..game.Players[c.Name].DisplayName)end elseif string.find(a,d)then if c:FindFirstChildWhichIsA('Humanoid')then c:FindFirstChildWhichIsA('Humanoid').DisplayName=('[⭐]'..game.Players[c.Name].DisplayName)end end end end end end end;local a,a=pcall(c)
]]
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.4, 0)
frame.Position = UDim2.new(0.35, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.2, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
title.Text = "Key System"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBlack
title.TextSize = 24
title.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0.2, 0)
textBox.Position = UDim2.new(0.1, 0, 0.3, 0)
textBox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
textBox.Text = ""
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.Font = Enum.Font.GothamBlack
textBox.TextSize = 18
textBox.Parent = frame

local enterKeyButton = Instance.new("TextButton")
enterKeyButton.Size = UDim2.new(0.8, 0, 0.15, 0)
enterKeyButton.Position = UDim2.new(0.1, 0, 0.55, 0)
enterKeyButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
enterKeyButton.Text = "Enter Key"
enterKeyButton.TextColor3 = Color3.new(1, 1, 1)
enterKeyButton.Font = Enum.Font.GothamBlack
enterKeyButton.TextSize = 18
enterKeyButton.Parent = frame

local getKeyButton = Instance.new("TextButton")
getKeyButton.Size = UDim2.new(0.8, 0, 0.15, 0)
getKeyButton.Position = UDim2.new(0.1, 0, 0.75, 0)
getKeyButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
getKeyButton.Text = "Get Key"
getKeyButton.TextColor3 = Color3.new(1, 1, 1)
getKeyButton.Font = Enum.Font.GothamBlack
getKeyButton.TextSize = 18
getKeyButton.Parent = frame

local function setClipboardWithURL()
    setclipboard("https://link-hub.net/545435/keyzinchub")
end

getKeyButton.MouseButton1Click:Connect(setClipboardWithURL)

local function sendNotification(title, text, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = duration;
    })
end

local function enterKey()
    local userInputKey = textBox.Text
    local correctKey = "ZINChubOOP12300001"

    if userInputKey == correctKey then
    print("hi")
        if success then
            screenGui:Destroy()
        else
            sendNotification("Error", "Failed to load script. Check the console for details.", 10)
        end
    else
        sendNotification("Wrong Key", "You entered the wrong key!", 10)
    end
end

enterKeyButton.MouseButton1Click:Connect(enterKey)

local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging, dragStart, startPos = true, input.Position, frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)
