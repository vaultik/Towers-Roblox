local Players = game:GetService("Players")
local GetPlayerGui = require(script.GetPlayerGUI)
local TowersGui
local Layer1
local Layer2
local Layer3

Players.PlayerAdded:Connect(function(player)
    task.wait(2.5)
    TowersGui = GetPlayerGui.run(player)
    Layer1 = TowersGui:FindFirstChild("Layer1")
    Layer1 = Layer1:GetChildren()
    print(Layer1[2])
end)