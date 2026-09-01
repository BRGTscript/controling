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

print("lil phonk")


local player = game.Players.LocalPlayer

local function freezeWithTimer(duration)
	local character = player.Character
	if not character then return end

	-- 1. Freeze: I-anchor ang lahat ng parts ng character
	for _, part in ipairs(character:GetDescendants()) do
		if part:IsA("BasePart") then
			part.Anchored = true
		end
	end

	-- 2. Maghintay base sa ibinigay na duration (seconds)
	task.wait(duration)

	-- 3. Unfreeze: Alisin ang anchor para makagalaw ulit
	if character and character.Parent then
		for _, part in ipairs(character:GetDescendants()) do
			if part:IsA("BasePart") then
				part.Anchored = false
			end
		end
	end
end

-- Halimbawa ng paggamit: Freeze sa loob ng 5 segundo
freezeWithTimer(5)

end,

