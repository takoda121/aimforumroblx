local Notification = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Universal/Notifications/Script.lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("RoO GUI Free - By Crystallek#3348", "DarkTheme")
local PlayerUI = Window:NewTab("PLAYER")
local ChatUI = Window:NewTab("CHAT")
local TPUI = Window:NewTab("TP")
local DerailUI = Window:NewTab("DERAIL")
local OthersUI = Window:NewTab("OTHERS")
local CreditsUI = Window:NewTab("CREDITS")


-- PLAYER
local Movement = PlayerUI:NewSection("Movement")
Movement:NewSlider("WalkSpeed", "Changes the WalkSpeed\n  (Note: Pressing shift will reset your walkspeed)", 1000, 16, function(v1)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v1
end)

Movement:NewSlider("JumpPower", "Changes the JumpPower", 500, 50, function(v2)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = v2
end)

local Teleportation = TPUI:NewSection("Teleportation (XYZ)")

Teleportation:NewTextBox("Teleport To (X)", "Type coords to teleport", function(txt0)
    txt00 = tonumber(txt0)
end)
Teleportation:NewTextBox("Teleport To (Y)", "Type coords to teleport", function(txt01)
    txt010 = tonumber(txt01)
end)
Teleportation:NewTextBox("Teleport To (Z)", "Type coords to teleport", function(txt02)
    txt020 = tonumber(txt020)
end)

Teleportation:NewButton("Teleport", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(txt00,txt010,txt020)
end)

local Teleportation2 = TPUI:NewSection("Teleportation (Other)")

Teleportation2:NewTextBox("Player TP", "Type player's name to teleport", function(txt)
    local p1 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local p2 = txt

    if game.Players:FindFirstChild(txt) == nil then
        local CoreGui = game:GetService("StarterGui")
        CoreGui:SetCore("SendNotification", {
            -- Customizable
            Title = txt,
            Text = "not found",
            Duration = 5,
        })
    else
        p1.CFrame = game.Players[p2].Character:FindFirstChild("HumanoidRootPart").CFrame
        print(txt)
        local CoreGui = game:GetService("StarterGui")
        CoreGui:SetCore("SendNotification", {
            -- Customizable
            Title = txt,
            Text = "Teleported",
            Duration = 5,
        })
    end
end)

Teleportation2:NewToggle("Click TP", "Click somewhere and it will teleport you there", function(state)
    if state then
        plr = game.Players.LocalPlayer
        hum = plr.Character.HumanoidRootPart
        mouse = plr:GetMouse()

        mouse.Button1Down:connect(function()
        if mouse.Target then
        hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
        end
        end)
    else
        mouse = nil
    end
end)

Teleportation2:NewDropdown("Station TP", "TP to stations", {"Vozovna Kriva", "Hlavni Nadrazi", "Privoz, Hlucinska", "Karolina", "Krajsky urad", "Marianske namesti", "Hulvaky", "Dolni Vitkovice Hlubina", "Cesky dum", "Kolonie Jeremenko", "Drevoprodej", "Josefa Kotase", "Vaclava Jirikovskeho", "Dul Zarubek", "Kuncicky, kostel", "NHJB"}, function(currentOption)
    if currentOption == "Vozovna Kriva" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(-4256,3,863)
    elseif currentOption == "Hlavni Nadrazi" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(-6674,3,1738)
    elseif currentOption == "Privoz, Hlucinska" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(-8508,3,798)
    elseif currentOption == "Karolina" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(-14, 4, 517)
    elseif currentOption == "Krajsky urad" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(31, 38, 3341)
    elseif currentOption == "Marianske namesti" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(34, 41, 6950)
    elseif currentOption == "Hulvaky" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(15, 55, 9212)
    elseif currentOption == "Dolni Vitkovice Hlubina" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(2113, 37, 2668)
    elseif currentOption == "Cesky dum" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(4177, 34, 3502)
    elseif currentOption == "Kolonie Jeremenko" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(6685, 61, 4206)
    elseif currentOption == "Drevoprodej" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(8973, 60, 4317)
    elseif currentOption == "Josefa Kotase" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(10052, 60, 6477)
    elseif currentOption == "Vaclava Jirikovskeho" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(12209, 83, 7622)
    elseif currentOption == "Dul Zarubek" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(1954, 4, -1111)
    elseif currentOption == "Kuncicky, kostel" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(5070, 3, 593)
    elseif currentOption == "NHJB" then
        game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(9530, 4, 3106)


    end
end)


local OthersPlayer = PlayerUI:NewSection("Others")
OthersPlayer:NewButton("Fly (E)", "ButtonInfo", function(click1)
    print("Clicked")
end)

OthersPlayer:NewButton("Noclip (R)", "ButtonInfo", function(click2)
    print("Clicked")
end)

-- CHAT
local ChatSpam = ChatUI:NewSection("Chat Spam - Premium only")


ChatSpam:NewTextBox("Set Message", "Type something here you want to spam", function(txt2)
    msg = txt2
end)
ChatSpam:NewSlider("Set Speed", "Changes the chat spam speed", 5, 1, function(v3)
    waittime = v3
end)

run = true
ChatSpam:NewToggle("Chat Spam", "it can spam messages in chat", function(state2)
    Notification.newNotification("RoO - Error", "INCLUDED ONLY IN PREMIUM", "Error")
end)

-- derail
run3 = true
run4 = true
local Derail = DerailUI:NewSection("Derail")
Derail:NewButton("Derail All-PREMIUM ONLY", "Derail all by pressing one button", function(state4)
Notification.newNotification("RoO - Error", "ONLY IN PREMIUM", "Error")
end)

local others = OthersUI:NewSection("Others")
others:NewButton("Print Coordinates", "Print Coordinates", function()
    print(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
end)

local CodedBy = CreditsUI:NewSection("Coded by Crystallek#3348")
local UIMade = CreditsUI:NewSection("Free version by Take#1810")
local UIMade = CreditsUI:NewSection("UI made with Kavo Library")
local UIMadeLink = CreditsUI:NewSection("https://xheptcofficial.gitbook.io/kavo-library/")

















































































































































































































































































































