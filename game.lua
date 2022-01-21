local GameTable = {
    ["2788229376"] = "dh",
    ["1962086868"] = "toh"
}

function SendRequest(url)
    local response = http_request(
    {
        Url = url,  -- This website helps debug HTTP requests
        Method = "GET"
    }
    )
    return response
end

local GameFound = false
local ScriptData = nil



local success, response = pcall(function()
    for key, value in pairs(GameTable) do
        if game.PlaceId == tonumber(key) then
            GameFound = true
            ScriptData = SendRequest("https://raw.githubusercontent.com/DisguisedFox/CodeHub/"..value..".lua")
        end
    end
    if ScriptData and ScriptData.Body then
        loadstring(ScriptData.Body)()
    else
        game.Players.LocalPlayer:Kick("\nSomething isnt right")
        wait(2)
        while true do end
    end

end)
