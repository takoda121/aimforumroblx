local Notification = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Universal/Notifications/Script.lua"))()
Notification.newNotification("Aimforum - Success", "Injected", "Success")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Aimforum.ml-MHD ÚNĚTICE A OKOLÍ SPECIAL", "BloodTheme")
local Tab = Window:NewTab("Main")--Main tab
local Section = Tab:NewSection("Fly") --Fly sec
Section:NewToggle("Fly", "makes you fly", function(state) --fly
    if state then
        loadstring(game:HttpGet(('https://pastebin.com/raw/WxmvCLLH'),true))()
        Notification.newNotification("Aimforum - Alert", "Read the shit bellow", "Alert")
    else
        function log() deadpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame end

game.Players.LocalPlayer.Character.Humanoid.Died:Connect(log)
game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid", 3).Died:Connect(log)
    char:WaitForChild("HumanoidRootPart", 3).CFrame = deadpos
    game.Players.LocalPlayer.Character.Head:Destroy()

end)
    end
end)
Section:NewLabel("disable fly? then click on it again and then reset character")

    
local Section = Tab:NewSection("Movement") --Movement sec
Section:NewSlider("WalkSpeed", "Makes you go brrrrr", 500, 20, function(s) -- 500 (MaxValue) | 0 (MinValue) --Walk
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewKeybind("Toggle ui", "you toggle ui with this", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
Section:NewSlider("JumpPower", "Makes you go high", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section:NewButton("Click To Tp", "simple Click To Tp", function() --Click tp
    local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"

tool.Activated:Connect(function()
local root = plr.Character.HumanoidRootPart
local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
local offset = pos-root.Position
root.CFrame = root.CFrame+offset
end)

tool.Parent = plr.Backpack
end)
local Tab = Window:NewTab("Únětice")--Main tab
local Section = Tab:NewSection("Únětice special")
local Section = Tab:NewSection("Teleports")
Section:NewButton("PČR TP", "teleports you to police/admin station", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2580.32,766.96,2906.5) --Coordinates.
end)
Section:NewButton("SPAWN TP", "teleports you to spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1562.99,816.1,1800.56) --Coordinates.
end)
Section:NewButton("1st GARAGE TP", "teleports you to 1st garage", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1320.45,816.01,2211.48) --Coordinates.
end)
Section:NewButton("2nd GARAGE TP", "teleports you to 2nd garage", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16737.49,264.59,-10227.79) --Coordinates.
end)
Section:NewButton("3rd GARAGE TP", "teleports you to 3rd garage", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3312.79,799.65,6447.01) --Coordinates.
end)
Section:NewButton("Lidl TP", "teleports you to lidl", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2666.8,800.39,5313.05) --Coordinates.
end)
Section:NewButton("Cars TP", "teleports you to cars", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1241.13,816.05,1903.12) --Coordinates.
end)
Section:NewButton("Tesco TP", "teleports you to Tesco", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7395.5,810.29,-846.93) --Coordinates.
end)
local Tab = Window:NewTab("Credits") --Credits
local Section = Tab:NewSection("Best people/sites")
Section:NewLabel("Take#1810 -Main developer/owner")
Section:NewLabel("v3rmillion.net -Few script from there")
Section:NewLabel("aimforum.ml - Take#1810´s website")


