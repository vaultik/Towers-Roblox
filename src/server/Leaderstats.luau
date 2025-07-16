local module = {}

module.SetupLeaderboard = function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	return leaderstats
end

module.CreateStat = function(leaderstats, statName, baseValue)
	local stat = Instance.new("IntValue")

	stat.Parent = leaderstats
	stat.Value = baseValue
	stat.Name = statName

	return stat
end

return module
