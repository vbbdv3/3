while not game:IsLoaded() do
    wait()
end
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
local mod = main:Button("EGG REMOVE ANIM", function()
game.Players.LocalPlayer.PlayerScripts.eggOpeningAnim:Destroy()
end)
local mod = main:Button("Magnet Gamepasses", function()
game.Players.LocalPlayer.PlayerInfo.Gamepasses.OwnsMagnet.Value = true
end)
local mod = main:Button("INF GEM", function()
game.Players.LocalPlayer.PlayerInfo.Currencies.Gems.Value = 999999999999999999
end)
local mod = main:Button("EGG AUTO OPEN", function()
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
local mod = main:Button("Demon Hill EGG Auto TP", function()
    	getgenv().farmer = true
while wait(1) do
    if getgenv().farmer == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2608.256103515625, 15.490595817565918, 5049.0361328125)
    end
end
end)
local mod = main:Button("Pirate Sea EGG Auto TP", function()
    	getgenv().farmer = true
while wait(1) do
    if getgenv().farmer == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2282.095947265625, 29.06070327758789, -1202.070556640625)
    end
end
end)
local mod = main:Button("Hunter World EGG Auto TP", function()
    	getgenv().farmer = true
while wait(1) do
    if getgenv().farmer == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4716.5078125, 62.81047439575195, 1338.785400390625)
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
local mod = main:Button("Next Server", function()
    local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"
local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
  local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
  return Http:JSONDecode(Raw)
end
local Server, Next; repeat
  local Servers = ListServers(Next)
  Server = Servers.data[10]
  Next = Servers.nextPageCursor
until Server
TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end)
wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,304,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti Afk Kick Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,304,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,304,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by XxSwordmaster_2xX"
_b.TextColor3=Color3.new(1,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377379,0)
ab.Size=UDim2.new(0,304,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Script Started"
ab.TextColor3=Color3.new(1,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="You went idle and ROBLOX tried to kick you but we reflected it!"wait(2)ab.Text="Script Re-Enabled"end)

