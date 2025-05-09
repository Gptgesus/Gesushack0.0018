--!strict

local Players = game:GetService("Players") 
local LocalPlayer = Players.LocalPlayer 
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Clear any previous GUIs
pcall(function() PlayerGui:WaitForChild("GesusHack"):Destroy() end)

local ScreenGui = Instance.new("ScreenGui") 
ScreenGui.Name = "GesusHack" 
ScreenGui.Parent = PlayerGui

local Frame = Instance.new("Frame") 
Frame.Size = UDim2.new(0, 300, 0, 580) 
Frame.Position = UDim2.new(0, 20, 0.2, 0) 
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
Frame.BackgroundTransparency = 0.3 
Frame.Active = true 
Frame.Draggable = true 
Frame.Parent = ScreenGui

local Title = Instance.new("TextLabel") 
Title.Size = UDim2.new(1, 0, 0, 40) 
Title.Text = "GESUS HACK" 
Title.TextColor3 = Color3.fromRGB(0, 255, 0) 
Title.Font = Enum.Font.GothamBold 
Title.TextScaled = true 
Title.BackgroundTransparency = 1 
Title.Parent = Frame

local tabsFrame = Instance.new("Frame") 
tabsFrame.Size = UDim2.new(1, 0, 0, 40) 
tabsFrame.Position = UDim2.new(0, 0, 0, 40) 
tabsFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
tabsFrame.BackgroundTransparency = 0.5 
tabsFrame.Parent = Frame

local function createTabButton(name, pos, parent) 
    local btn = Instance.new("TextButton") 
    btn.Size = UDim2.new(0, 100, 1, 0) 
    btn.Position = UDim2.new(0, pos, 0, 0) 
    btn.Text = name 
    btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
    btn.TextColor3 = Color3.fromRGB(0, 255, 0) 
    btn.Font = Enum.Font.GothamBold 
    btn.TextScaled = true 
    btn.Parent = parent 
    return btn 
end

local commandTabBtn = createTabButton("Command", 0, tabsFrame) 
local visualTabBtn = createTabButton("Visual", 100, tabsFrame) 
local trollTabBtn = createTabButton("Troll & Fun", 200, tabsFrame)

local ScrollFrame = Instance.new("ScrollingFrame") 
ScrollFrame.Size = UDim2.new(1, 0, 1, -80) 
ScrollFrame.Position = UDim2.new(0, 0, 0, 80) 
ScrollFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
ScrollFrame.BackgroundTransparency = 0.5 
ScrollFrame.ScrollBarThickness = 10 
ScrollFrame.Parent = Frame

local UIListLayout = Instance.new("UIListLayout") 
UIListLayout.Padding = UDim.new(0, 15) 
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 
UIListLayout.Parent = ScrollFrame

local function createButton(name, callback) 
    local btn = Instance.new("TextButton") 
    btn.Size = UDim2.new(1, -20, 0, 40) 
    btn.Text = name 
    btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
    btn.BackgroundTransparency = 0.5 
    btn.TextColor3 = Color3.fromRGB(0, 255, 0) 
    btn.Font = Enum.Font.Gotham 
    btn.TextScaled = true 
    btn.Parent = ScrollFrame

    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        btn.TextColor3 = Color3.fromRGB(0, 0, 0)
    end)
    
    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        btn.TextColor3 = Color3.fromRGB(0, 255, 0)
    end)
    
    btn.MouseButton1Click:Connect(callback)
end

local function clearButtons() 
    for _, child in ipairs(ScrollFrame:GetChildren()) do 
        if child:IsA("TextButton") then 
            child:Destroy() 
        end 
    end 
end

commandTabBtn.MouseButton1Click:Connect(function() 
    clearButtons() 
    createButton("Nameless Admin", function() 
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Nameless-Admin-35212"))() 
    end) 
    createButton("Infinite Yield", function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() 
    end) 
    createButton("FE Bypass", function() 
        loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-FE-Bypass-Gui-12350"))() 
    end) 
    createButton("Tiger X", function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/balintTheDevX/Tiger-X-V3/main/Tiger%20X%20V3.5%20Fixed"))() 
    end) 
    createButton("System Broken", function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))() 
    end) 
end)

visualTabBtn.MouseButton1Click:Connect(function() 
    clearButtons() 
    createButton("ESP", function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/qwezxc123zz/FreeCheats/main/ESPBloodDebt.lua"))() 
    end) 
    createButton("Ghost Hub", function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub"))() 
    end) 
    createButton("Vfly (Vehicle Fly)", function() 
        loadstring(game:HttpGet("https://pastebin.com/raw/hX2s2DVY"))() 
    end) 
    createButton("Zero Gravity (Vehicle)", function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/refs/heads/main/zerogravity"))() 
    end) 
    createButton("Free Cam", function() 
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Freecam'))() 
    end) 
    createButton("Give Tool", function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/gametoolgiver.lua"))() 
    end) 
end)

trollTabBtn.MouseButton1Click:Connect(function() 
    clearButtons() 
    createButton("Epic Command FE", function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheqopThe/robax/refs/heads/main/jumpscare.lua"))() 
    end) 
    createButton("Don't Touch", function() 
        game:GetService("StarterGui"):SetCore("SendNotification", { Title = "WARNING", Text = "You touched the forbidden button!", Duration = 5 }) 
        local image = Instance.new("ImageLabel") 
        image.Size = UDim2.new(1, 0, 1, 0) 
        image.Image = "rbxassetid://IMAGE_ID" -- Replace with actual image 
        image.Parent = PlayerGui 
        wait(3) 
        image:Destroy() 
    end)
    createButton("Spawn Bomb", function() 
        local bomb = Instance.new("Part") 
        bomb.Size = Vector3.new(2, 2, 2) 
        bomb.Shape = Enum.PartType.Ball 
        bomb.BrickColor = BrickColor.new("Bright red") 
        bomb.Material = Enum.Material.Neon 
        bomb.Position = LocalPlayer.Character and LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0) or Vector3.new(0, 10, 0) 
        bomb.Anchored = false 
        bomb.Parent = workspace

        local explosion = Instance.new("Explosion")
        explosion.BlastRadius = 10
        explosion.Position = bomb.Position
        explosion.Parent = workspace

        bomb.Touched:Connect(function()
            explosion:Destroy()
            local newExplosion = explosion:Clone()
            newExplosion.Position = bomb.Position
            newExplosion.Parent = workspace
            bomb:Destroy()
        end)
    end)
end)

local toggleBtn = Instance.new("TextButton") 
toggleBtn.Size = UDim2.new(0, 30, 0, 30) 
toggleBtn.Position = UDim2.new(1, -40, 0, 50) 
toggleBtn.Text = "X" 
toggleBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0) 
toggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255) 
toggleBtn.Font = Enum.Font.GothamBold 
toggleBtn.TextScaled = true 
toggleBtn.Parent = Frame

toggleBtn.MouseButton1Click:Connect(function() 
    ScreenGui:Destroy() 
end)
