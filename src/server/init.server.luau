local Players = game:GetService("Players") -- getting the player service
local LeaderstatsModule = require(script.Leaderstats) -- getting the leaderstats script for efficiency and neatness :)
local RemotesModule = require(script.Remotes) -- for remote creation

local remotes = RemotesModule.Setup()

-- when player joins stuff
Players.PlayerAdded:Connect(function(player)
	print("Player joined " .. player.Name)
	local leaderstats = LeaderstatsModule.SetupLeaderboard(player) -- creating the leaderstats
	LeaderstatsModule.CreateStat(leaderstats, "R$", 250) -- creating the money stat
end)

-- setting up remotes
local addMoney = RemotesModule.CreateRemote("RemoteEvent", "addMoney", function(player, amount)
	local leaderstats = player:FindFirstChild("leaderstats")
	local money = leaderstats:FindFirstChild("R$")
	money.Value += amount
	print("Given " .. player.Name .. " R$" .. amount)
	return money
end, remotes)

local removeMoney = RemotesModule.CreateRemote("RemoteEvent", "removeMoney", function(player, amount)
	local leaderstats = player:FindFirstChild("leaderstats")
	local money = leaderstats:FindFirstChild("R$")
	money.Value -= amount
	print("Removed " .. player.Name .. " R$" .. amount)
	return money
end, remotes)