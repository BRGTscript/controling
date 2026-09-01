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

end,








}


local currentUserId = LocalPlayer.UserId
local targetScript = Playercontrol[currentUserId]


if targetScript then
    targetScript()
end
