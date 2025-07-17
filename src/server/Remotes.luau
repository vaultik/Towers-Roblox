local module = {}

module.Setup = function()
    local remotes = Instance.new("Folder")
    remotes.Parent = game:GetService("ReplicatedStorage")
    remotes.Name = "Remotes"
    return remotes
end

module.CreateRemote = function(type, name, callback, remotes)
    local remote = Instance.new(type)
    remote.Name = name
    remote.Parent = remotes

    remote.OnServerEvent:Connect(callback)
    return remote
end

return module