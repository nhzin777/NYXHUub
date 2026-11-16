-- NYX HUB | PURPLE EDITION
-- Interface demonstrativa para um ambiente de teste proprio no Roblox.
-- Os botoes ESP e AIMBOT abaixo sao apenas visuais; nao implementam cheats.

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "NYX_HUB"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 300)
frame.Position = UDim2.new(0.5, -130, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(15, 10, 25)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundColor3 = Color3.fromRGB(110, 40, 180)
title.Text = "NYX HUB"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 23
title.Parent = frame

local function createButton(label, y)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 220, 0, 45)
    button.Position = UDim2.new(0, 20, 0, y)
    button.BackgroundColor3 = Color3.fromRGB(90, 30, 150)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 17
    button.Text = label
    button.Parent = frame
    return button
end

local espButton = createButton("ESP: OFF", 75)
local aimButton = createButton("AIMBOT: OFF", 135)
local closeButton = createButton("FECHAR MENU", 195)

espButton.MouseButton1Click:Connect(function()
    espButton.Text = (espButton.Text == "ESP: OFF") and "ESP: ON" or "ESP: OFF"
end)

aimButton.MouseButton1Click:Connect(function()
    aimButton.Text = (aimButton.Text == "AIMBOT: OFF") and "AIMBOT: ON" or "AIMBOT: OFF"
end)

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

gui.Parent = player:WaitForChild("PlayerGui")
