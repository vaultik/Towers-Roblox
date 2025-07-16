local Players = game:GetService("Players")
local TowersClient = require(script.TowersClient)
local player = Players.LocalPlayer

-- getting ui stuff
task.wait(2.5)
local layers = TowersClient.GetTowersGUI(player)
print("TowersGUI retrieved")

-- gambling stuff
local baseBet = 100
local currentLevel = 1
local maxLevel = 5
local houseEdge = 0.95
local multiplier = 1 -- using later/defining later
local payout
local multFormula = (currentLevel / maxLevel) * houseEdge

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
		if isBomb ~= 1 then
			TowersClient.EnableLayer(layers.Layer2:GetChildren())
			multiplier += multFormula
			print(multiplier)
		else
			payout = baseBet * multiplier
			print(payout)
		end
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
		if isBomb ~= 1 then
			TowersClient.EnableLayer(layers.Layer3:GetChildren())
			multiplier += multFormula
			print(multiplier)
		else
			payout = baseBet * multiplier
			print(payout)
		end
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
		if isBomb ~= 1 then
			TowersClient.EnableLayer(layers.Layer4:GetChildren())
			multiplier += multFormula
		else
			payout = baseBet * multiplier
			print(payout)
		end
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
		if isBomb ~= 1 then
			TowersClient.EnableLayer(layers.Layer5:GetChildren())
			multiplier += multFormula
		else
			payout = baseBet * multiplier
			print(payout)
		end
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
		multiplier += multFormula
		payout = baseBet * multiplier
		print(payout)
	end)
end
