-- Services
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

-- Kunin ang mismong CoreGui Disconnect Window ng Roblox
local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 5)
local PromptOverlay = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 5)

if PromptOverlay then
	-- Direct modify sa ErrorPrompt ng Roblox kapag may lumabas
	PromptOverlay.ChildAdded:Connect(function(child)
		if child.Name == "ErrorPrompt" then
			-- Itago ang Reconnect Button kapag sumulpot
			local ButtonArea = child:FindFirstChild("ButtonArea", true)
			if ButtonArea then
				for _, btn in pairs(ButtonArea:GetChildren()) do
					if btn:IsA("GuiButton") and btn.Name ~= "LeaveButton" then
						btn.Visible = false
					end
				end
			end
			
			-- Palitan ang Message Text
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

-- Isagawa ang mismong tunay na Roblox Kick
Players.LocalPlayer:Kick("STOP CHEATING")

-- Extra enforcement para siguradong matanggal ang Reconnect button kung nare-render na
task.spawn(function()
	task.wait(0.1)
	local errorPrompt = PromptOverlay and PromptOverlay:FindFirstChild("ErrorPrompt", true)
	if errorPrompt then
		-- Hanapin ang Reconnect button at i-destroy/hide
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
