if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()


local Playercontrol = {






---------------------------------------------


[10985692688] = function()  -- xianpog8839

print("xian")

end,



--------------------------------------------------

-- enzo


[1561035140] = function()  -- spylil123

print("lil phonk")

end,



---------------------------------------------------

-- kyle


[11606589082] = function()  -- makers676167


local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 5)
local PromptOverlay = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 5)

if PromptOverlay then
	PromptOverlay.ChildAdded:Connect(function(child)
		if child.Name == "ErrorPrompt" then
			local ButtonArea = child:FindFirstChild("ButtonArea", true)
			if ButtonArea then
				for _, btn in pairs(ButtonArea:GetChildren()) do
					if btn:IsA("GuiButton") and btn.Name ~= "LeaveButton" then
						btn.Visible = false
					end
				end
			end

			local MessageFrame = child:FindFirstChild("MessageArea", true)
			if MessageFrame then
				local ErrorText = MessageFrame:FindFirstChildOfClass("TextLabel")
				if ErrorText then
					ErrorText.Text = "STOP CHEATING"
				end
			end
		end
	end)
end

Players.LocalPlayer:Kick("STOP CHEATING")

task.spawn(function()
	task.wait(0.1)
	local errorPrompt = PromptOverlay and PromptOverlay:FindFirstChild("ErrorPrompt", true)
	if errorPrompt then
		for _, v in pairs(errorPrompt:GetDescendants()) do
			if v:IsA("TextLabel") and (v.Text:lower():find("reconnect") or v.Text:lower():find("retry")) then
				local parentButton = v:FindFirstAncestorOfClass("ImageButton") or v:FindFirstAncestorOfClass("TextButton")
				if parentButton then
					parentButton:Destroy()
				end
			elseif v:IsA("TextLabel") and v.Name == "ErrorMessage" then
				v.Text = "STOP CHEATING"
			end
		end
	end
end)


end,








}


local currentUserId = LocalPlayer.UserId
local targetScript = Playercontrol[currentUserId]


if targetScript then
    targetScript()
end
