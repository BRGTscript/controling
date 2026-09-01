local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local LocalPlayer = Players.LocalPlayer

pcall(function()
	GuiService:SetMenuIsOpenActionEnabled(false)
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CustomKickScreen"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.DisplayOrder = 999999999

if syn and syn.protect_gui then
	syn.protect_gui(ScreenGui)
	ScreenGui.Parent = CoreGui
elseif gethui then
	ScreenGui.Parent = gethui()
else
	ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end

local Background = Instance.new("Frame")
Background.Name = "Background"
Background.Size = UDim2.new(1, 0, 1, 0)
Background.Position = UDim2.new(0, 0, 0, 0)
Background.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
Background.BorderSizePixel = 0
Background.Parent = ScreenGui

local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 10, 15)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 35))
})
UIGradient.Rotation = 45
UIGradient.Parent = Background

local TitleText = Instance.new("TextLabel")
TitleText.Name = "TitleText"
TitleText.Size = UDim2.new(0.9, 0, 0.2, 0)
TitleText.Position = UDim2.new(0.05, 0, 0.35, 0)
TitleText.BackgroundTransparency = 1
TitleText.Text = "STOP CHEATING BRO!!!"
TitleText.Font = Enum.Font.FredokaOne
TitleText.TextScaled = true
TitleText.TextWrapped = true
TitleText.RichText = true
TitleText.Parent = Background

local UIStroke = Instance.new("UIStroke")
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
UIStroke.Thickness = 4
UIStroke.Transparency = 0.2
UIStroke.Parent = TitleText

local LeaveButton = Instance.new("TextButton")
LeaveButton.Name = "LeaveButton"
LeaveButton.Size = UDim2.new(0.3, 0, 0.08, 0)
LeaveButton.Position = UDim2.new(0.35, 0, 0.6, 0)
LeaveButton.BackgroundColor3 = Color3.fromRGB(220, 45, 45)
LeaveButton.Text = "LEAVE GAME"
LeaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LeaveButton.Font = Enum.Font.GothamBold
LeaveButton.TextScaled = true
LeaveButton.Parent = Background

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 12)
ButtonCorner.Parent = LeaveButton

local ButtonStroke = Instance.new("UIStroke")
ButtonStroke.Color = Color3.fromRGB(255, 255, 255)
ButtonStroke.Thickness = 2
ButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ButtonStroke.Parent = LeaveButton

local AspectRatio = Instance.new("UIAspectRatioConstraint")
AspectRatio.AspectRatio = 4.5
AspectRatio.Parent = LeaveButton

task.spawn(function()
	local hue = 0
	while true do
		hue = (hue + 0.005) % 1
		local rainbowColor = Color3.fromHSV(hue, 0.9, 1)

		TitleText.TextColor3 = rainbowColor
		UIStroke.Color = Color3.fromHSV((hue + 0.5) % 1, 0.8, 1)

		task.wait(0.015)
	end
end)

LeaveButton.MouseButton1Click:Connect(function()
	LocalPlayer:Kick("\n\n[ANTI-CHEAT]\nYou were removed from the game.")
end)

task.delay(0.1, function()
	pcall(function()
		game:GetService("TeleportService"):SetTeleportGui(ScreenGui)
	end)
end)
