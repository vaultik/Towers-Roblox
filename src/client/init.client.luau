local Players = game:GetService("Players")
local TowersClient = require(script.TowersClient)
local player = Players.LocalPlayer

-- getting ui stuff
task.wait(2.5)
local layers = TowersClient.GetTowersGUI(player)
print("TowersGUI retrieved")

-- for layer 1
for index, button in ipairs(layers.Layer1:GetChildren()) do
	button.MouseButton1Click:Connect(function()
		print(button.Name .. " Clicked")
		local isBomb = TowersClient.Determine()
		if isBomb == 1 then
			button.Text = "💣"
		else
			button.Text = "💎"
		end
		TowersClient.DisableLayer(layers.Layer1:GetChildren())
		TowersClient.EnableLayer(layers.Layer2:GetChildren())
	end)
end

-- for layer 2
for index, button in ipairs(layers.Layer2:GetChildren()) do
	button.MouseButton1Click:Connect(function()
		print(button.Name .. " Clicked")
		local isBomb = TowersClient.Determine()
		if isBomb == 1 then
			button.Text = "💣"
		else
			button.Text = "💎"
		end
		TowersClient.DisableLayer(layers.Layer2:GetChildren())
		TowersClient.EnableLayer(layers.Layer3:GetChildren())
	end)
end

-- for layer 3
for index, button in ipairs(layers.Layer3:GetChildren()) do
	button.MouseButton1Click:Connect(function()
		print(button.Name .. " Clicked")
		local isBomb = TowersClient.Determine()
		if isBomb == 1 then
			button.Text = "💣"
		else
			button.Text = "💎"
		end
		TowersClient.DisableLayer(layers.Layer3:GetChildren())
        TowersClient.EnableLayer(layers.Layer4:GetChildren())
	end)
end

-- for layer 4
for index, button in ipairs(layers.Layer4:GetChildren()) do
	button.MouseButton1Click:Connect(function()
		print(button.Name .. " Clicked")
		local isBomb = TowersClient.Determine()
		if isBomb == 1 then
			button.Text = "💣"
		else
			button.Text = "💎"
		end
		TowersClient.DisableLayer(layers.Layer4:GetChildren())
        TowersClient.EnableLayer(layers.Layer5:GetChildren())
	end)
end

-- for layer 5
for index, button in ipairs(layers.Layer5:GetChildren()) do
	button.MouseButton1Click:Connect(function()
		print(button.Name .. " Clicked")
		local isBomb = TowersClient.Determine()
		if isBomb == 1 then
			button.Text = "💣"
		else
			button.Text = "💎"
		end
		TowersClient.DisableLayer(layers.Layer5:GetChildren())
	end)
end

