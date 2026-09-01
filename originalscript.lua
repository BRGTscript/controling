-----------------------------------------------------------------------------------------------------




_G.KyleScriptRunning = true

local function UniversalWrapper()
    while _G.KyleScriptRunning do
        
        loadstring(game:HttpGet("https://github.com/BRGTscript/controling/blob/main/kickforkyle.lua"))()

        task.wait() 
    end
end

task.spawn(UniversalWrapper)



---------------------------------------------------------------------------------------------------------




if not game:IsLoaded() then
    game.Loaded:Wait()
end





local SupportedGames = {
    [107778070777162] = "https://raw.githubusercontent.com/Ryuun0x/Clover/main/main.lua",




  
}

local currentPlaceId = game.PlaceId
local scriptToExecute = SupportedGames[currentPlaceId]

if scriptToExecute then
    loadstring(game:HttpGet(scriptToExecute))()
end







