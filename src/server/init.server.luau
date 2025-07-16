local Players = game:GetService("Players") -- getting the player service
local LeaderstatsModule = require(script.Leaderstats) -- getting the leaderstats script for efficiency and neatness :)

Players.PlayerAdded:Connect(function(player) -- when the player joins
    print("Player joined " .. player.Name)
    local leaderstats = LeaderstatsModule.SetupLeaderboard(player) -- creating the leaderstats
    LeaderstatsModule.CreateStat(leaderstats, "R$", 250) -- creating the money stat
end)