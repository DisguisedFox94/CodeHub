if game.PlaceId == 1962086868 then -- toh
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DisguisedFox94/CodeHub/main/toh.lua"))();
elseif game.PlaceId == 2788229376 then
   loadstring(game:HttpGet("https://raw.githubusercontent.com/DisguisedFox94/CodeHub/main/dahood.lua"))();
elseif game.PlaceId == 7993293100 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DisguisedFox94/CodeHub/main/tsunami.lua"))();
elseif game.PlaceId == 8580546164 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DisguisedFox94/CodeHub/main/moyai.lua"))();
else
    game.Players.LocalPlayer:Kick('Unsupported game.')
end
