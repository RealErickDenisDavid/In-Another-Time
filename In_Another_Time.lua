local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("In Another Time", "GrapeTheme")

-- Items

    local Items = Window:NewTab("Items")
    local ItemsSection = Items:NewSection("Give Arrow")

    ItemsSection:NewButton("Get Arrow", "Gives you a normal arrow from the shop", function()
        local Event = game:GetService("ReplicatedStorage").ItemGiver.GiveArrow
        Event:FireServer()
    end)

    -- Main (TP locations)

    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("TP locations")

    MainSection:NewButton("Next to shop", "Teleport to next to shop",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-677.057922, -5.10002708, 1510.17517, 0.942098975, 1.15333529e-08, 0.335335076, -5.88316018e-09, 1, -1.78652169e-08, -0.335335076, 1.485797e-08, 0.942098975)
    end)

    MainSection:NewButton("inside shop", "Teleport to inside shop", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-686.478821, -3.22996569, 1510.57935, 0.98889941, 2.06599839e-08, -0.148586676, -1.92457801e-08, 1, 1.09555529e-08, 0.148586676, -7.97427369e-09, 0.98889941)
    end)

    MainSection:NewButton("At rocks", "Teleport to at rocks", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-419.359131, -5.10004139, 1681.87634, 0.507609725, -1.22854743e-07, 0.861587107, 3.74974007e-08, 1, 1.20499365e-07, -0.861587107, -2.88593736e-08, 0.507609725)
    end)

    MainSection:NewButton("Arrow Shop", "Teleport to arrow shop", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-634.588196, -4.6000061, 1703.26404, -0.994130433, -4.80428959e-08, 0.10818705, -5.23901384e-08, 1, -3.73403353e-08, -0.10818705, -4.27891003e-08, -0.994130433)
    end)

    MainSection:NewButton("Mountain", "Teleport to mountain", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-904.078003, 31.5853634, 1437.31506, -0.931494713, -4.99696995e-08, 0.363754839, -5.96830887e-08, 1, -1.54631081e-08, -0.363754839, -3.61138142e-08, -0.931494713)
    end)

    MainSection:NewButton("Near Chair", "Teleport to near chair", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-610.969238, -5.10001755, 1826.43823, 0.999164641, -5.63880427e-08, -0.0408678912, 5.88935976e-08, 1, 6.01049166e-08, 0.0408678912, -6.24616021e-08, 0.999164641)
    end)

    MainSection:NewButton("Dummy test", "Teleport to dummy test", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-807.189697, -4.85914183, 1621.38416, 0.99414742, -1.26825057e-08, -0.108030282, 1.98882724e-08, 1, 6.56239152e-08, 0.108030282, -6.73883491e-08, 0.99414742)
end)

    MainSection:NewButton("1v1 Arena", "Teleport to 1v1 arena", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-474.922791, -4.71304703, 1376.32361, 0.148592025, 1.02405728e-08, 0.988898575, -1.21302918e-07, 1, 7.87145815e-09, -0.988898575, -1.21125922e-07, 0.148592025)
end)

-- Player

local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Changes the walkspeed", 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

PlayerSection:NewSlider("JumpPower", "Changes the jumppower", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

PlayerSection:NewButton("Reset", "Resets", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

-- Settings

local Settings = Window:NewTab("Settings")
local SettingsSelection = Settings:NewSection("Settings")

SettingsSelection:NewKeybind("KeybindText", "Change keybind", Enum.KeyCode.V, function()
    Library:ToggleUI()
end)

    -- Credits

    local Credits = Window:NewTab("Credits")
    CreditsSection = Credits:NewSection("Credits")

    CreditsSection:NewLabel("Made by Real_PainNonsense & PainExploit Team")
