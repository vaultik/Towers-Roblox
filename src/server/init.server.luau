local Players = game:GetService("Players")
local GetPlayerGui = require(script.GetPlayerGUI)
local Simulation = require(script.Simulation)

local TowersGui
local Layers

Players.PlayerAdded:Connect(function(player)
    TowersGui = GetPlayerGui.run(player)
    Layers = GetPlayerGui.GetLayers(TowersGui)
end)