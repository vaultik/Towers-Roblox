local Players = game:GetService("Players")
local TowersClient = require(script.TowersClient)
local RemoteClient = require(script.ClientRemotes)
local player = Players.LocalPlayer

-- getting ui stuff
task.wait(2.5)
local layers, baseBet, playButton = TowersClient.GetTowersGUI(player)
print("TowersGUI loaded")

-- gambling stuff
local currentLevel = 1
local maxLevel = 5
local houseEdge = 0.95
local multiplier = 0 -- using later/defining later
local payout
local multFormula = (currentLevel / maxLevel) * houseEdge
local isPlaying = false
-- remote shit
local addMoney = RemoteClient.RetrieveRemote("addMoney")
local removeMoney = RemoteClient.RetrieveRemote("removeMoney")

-- menu stuff
playButton.MouseButton1Click:Connect(function()
	removeMoney:FireServer(baseBet)
	print("playing")
	multiplier = 0
	isPlaying = true
	TowersClient.EnableLayer(layers.Layer1:GetChildren())
	TowersClient.ResetLayers(layers)
end)

for index, button in ipairs(layers.Layer1:GetChildren()) do
	button.MouseButton1Click:Connect(function()
		if isPlaying then
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
				multiplier = 1
				multiplier += multFormula
				print(multiplier)
			else
				payout = baseBet * multiplier
				addMoney:FireServer(payout)
			end
		end
	end)
end

-- for layer 2
for index, button in ipairs(layers.Layer2:GetChildren()) do
	button.MouseButton1Click:Connect(function()
		if isPlaying then
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
				addMoney:FireServer(payout)
			end
		end
	end)
end

-- for layer 3
for index, button in ipairs(layers.Layer3:GetChildren()) do
	button.MouseButton1Click:Connect(function()
		if isPlaying then
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
				addMoney:FireServer(payout)
			end
		end
	end)
end

-- for layer 4
for index, button in ipairs(layers.Layer4:GetChildren()) do
	button.MouseButton1Click:Connect(function()
		if isPlaying then
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
				addMoney:FireServer(payout)
			end
		end
	end)
end

-- for layer 5
for index, button in ipairs(layers.Layer5:GetChildren()) do
	button.MouseButton1Click:Connect(function()
		if isPlaying then
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
			addMoney:FireServer(payout)
		end
	end)
end
