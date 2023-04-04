function smoothTeleport(part, endPoint, speed)
    speed = speed or 16

    session = session and session + 1 or 1
    local currentSession = session

    local bodyVelocity = Instance.new('BodyVelocity', part)
    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)

    local oldPoint = part.CFrame
    while session == currentSession do
        local endPoint = typeof(endPoint) == 'Vector3' and endPoint or endPoint.Position
        local time = task.wait()
        local look = CFrame.new(part.Position, endPoint).LookVector
        local newVector = time*look*speed
        oldPoint += newVector
        part.CFrame = oldPoint
        newVector = newVector+look
        if (part.CFrame.Position-endPoint).Magnitude < newVector.Magnitude then
            part.CFrame = CFrame.new(endPoint)
            bodyVelocity:Destroy()
            break
        end
    end
end

local libary = loadstring(game:HttpGet("https://pastebin.com/raw/RvJ0qewm", true))()
local main = libary:CreateWindow("Anime Lost")
local mod = main:Button("Attack", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then
local Event = game:GetService("ReplicatedStorage").Modules.LBConnection.Remotes.attackFunc
Event:FireServer()
    end
end
end)
local mod = main:Button("Skill", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then
local A_1 = "Slot1"
local Event = game:GetService("ReplicatedStorage").Remotes["Send Information"]
Event:FireServer(A_1)
    end
end
end)
local mod = main:Button("EGG", function()
	getgenv().farmer = true
while wait() do
    if getgenv().farmer == true then 
local A_1 = 16852
local A_2 = "Open_1"
local Event = game:GetService("ReplicatedStorage").Modules.LBConnection.Remotes["Egg_Spin"].Sent
Event:FireServer(A_1, A_2)
    end
end
end)
local mod = main:Button("DUNGEON", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-1174.4788818359375, 32.829742431640625, 243.27598571777344), 500)
end)
local mod = main:Button("Sarnek", function()
local A_1 = "Sarnek"
local Event = game:GetService("ReplicatedStorage").Remotes.portalTeleport
Event:FireServer(A_1)

end)
local mod = main:Button("Ninja Town", function()
local A_1 = "Ninja Town"
local Event = game:GetService("ReplicatedStorage").Remotes.portalTeleport
Event:FireServer(A_1)
end)
local mod = main:Button("Demon Hill", function()
local A_1 = "Demon Hill"
local Event = game:GetService("ReplicatedStorage").Remotes.portalTeleport
Event:FireServer(A_1)
end)
local mod = main:Button("Pirate Sea", function()
local A_1 = "Pirate Sea"
local Event = game:GetService("ReplicatedStorage").Remotes.portalTeleport
Event:FireServer(A_1)
end)
local mod = main:Button("Hunter World", function()
local A_1 = "Hunter World"
local Event = game:GetService("ReplicatedStorage").Remotes.portalTeleport
Event:FireServer(A_1)
end)
