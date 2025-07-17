local module = {}

module.RetrieveRemote = function(remoteName)
    local repStor = game:GetService("ReplicatedStorage")
    local remotes = repStor:FindFirstChild("Remotes")
    local remote = remotes:FindFirstChild(remoteName)
    return remote
end

return module