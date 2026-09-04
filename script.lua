local SCRIPTLINK = "https://raw.githubusercontent.com/BRGTscript/controling/refs/heads/main/originalscript.lua"

local function GAYS(url)
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

local content = GAYS(SCRIPTLINK)
if content and content:match("%S") then
    local success, loadedFunc = pcall(loadstring, content)
    if success and loadedFunc then
        pcall(loadedFunc)
    end
end
