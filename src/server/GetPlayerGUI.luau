local module = {}

module.run = function(player)
    print("I hate AJ from beta squad")
    local pGUI = player:WaitForChild("PlayerGui")
    local TowersGUI = pGUI:WaitForChild("TowersGui")
    return TowersGUI
end

module.GetLayers = function(TowersGui)
    return {
        Layer1 = TowersGui:WaitForChild("Layer1"),
        Layer2 = TowersGui:WaitForChild("Layer2"),
        Layer3 =TowersGui:WaitForChild("Layer3")
    }
end

return module