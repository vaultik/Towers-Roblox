local module = {}

-- retrieving and returning 
module.GetTowersGUI = function(player)
    local Layers = {
        Layer1 = player.PlayerGui.TowersGui.Layer1,
        Layer2 = player.PlayerGui.TowersGui.Layer2,
        Layer3 = player.PlayerGui.TowersGui.Layer3,
        Layer4 = player.PlayerGui.TowersGui.Layer4,
        Layer5 = player.PlayerGui.TowersGui.Layer5
    }
    return Layers
end

-- determining if it's a bomb or not
module.Determine = function()
    local isBomb = math.random(0, 1)
    return isBomb
end

-- disable layer buttons
module.DisableLayer = function(layerChildren)
    for _, button in ipairs(layerChildren) do
        button.Interactable = false
    end
end

-- enable layer buttons
module.EnableLayer = function(layerChildren)
    for _, button in ipairs(layerChildren) do
        button.Interactable = true
    end
end

return module