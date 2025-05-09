local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Clear any previous GUIs
pcall(function()
    LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("GesusHack"):Destroy()
end)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "GesusHack"
ScreenGui.Parent = PlayerGui

-- Main Frame (background)
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 250, 0, 580)
Frame.Position = UDim2.new(0, 20, 0.2, 0)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.3
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "GESUS HACK"
Title.TextColor3 = Color3.fromRGB(0, 255, 0)
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true
Title.BackgroundTransparency = 1
Title.Parent = Frame

-- Scrolling Frame to allow scrolling
local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Size = UDim2.new(1, 0, 1, -40)
ScrollFrame.Position = UDim2.new(0, 0, 0, 40)
ScrollFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollFrame.BackgroundTransparency = 0.5
ScrollFrame.ScrollBarThickness = 10
ScrollFrame.Parent = Frame

-- UIListLayout for positioning buttons vertically with padding (distance between buttons)
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 15)  -- Adjust this value to control the space between buttons
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = ScrollFrame

-- Create button function
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

-- Send notification on run
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Gesus",
    Text = "Make by Thailand",
    Duration = 5
})

-- Button List (without categories)
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

createButton("ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/qwezxc123zz/FreeCheats/main/ESPBloodDebt.lua"))()
end)

createButton("Speed", function()
    LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

createButton("Fly Menu", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Universal-Fly-V3-16477"))()
end)

createButton("Noclip", function()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    game:GetService("RunService").Stepped:Connect(function()
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end)
end)

createButton("Teleport Forward", function()
    local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if root then
        root.CFrame = root.CFrame + root.CFrame.LookVector * 10
    end
end)

createButton("Invisible", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invisible-script-20557"))()
end)

createButton("Explode", function()
    Instance.new("Explosion", workspace).Position = LocalPlayer.Character.HumanoidRootPart.Position
end)

createButton("God Mode", function()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    if char and char:FindFirstChild("Humanoid") then
        local humanoid = char.Humanoid
        humanoid.Health = humanoid.MaxHealth
        humanoid.Died:Connect(function()
            humanoid.Health = humanoid.MaxHealth
        end)
    end
end)

createButton("TP to Player", function()
    local targetPlayer = nil
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            targetPlayer = player
            break
        end
    end
    if targetPlayer and targetPlayer.Character then
        LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
    end
end)

-- Epic Command FE Button (formerly Jumpscare)
createButton("Epic Command FE", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheqopThe/robax/refs/heads/main/jumpscare.lua"))()
end)

-- Ghost Hub Button
local ghostBtn = Instance.new("TextButton")
ghostBtn.Size = UDim2.new(1, -20, 0, 40)
ghostBtn.Text = "Ghost Hub"
ghostBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ghostBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ghostBtn.Font = Enum.Font.Gotham
ghostBtn.TextScaled = true
ghostBtn.Parent = ScrollFrame

task.spawn(function()
    while true do
        ghostBtn.Rotation = (ghostBtn.Rotation + 1) % 360
        task.wait()
    end
end)

ghostBtn.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub"))()
end)

-- AK-47 Button
createButton("AK-47", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/ak47", true))()
end)

-- Don't Touch Button
createButton("Don't Touch", function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "WARNING",
        Text = "You touched the forbidden button!",
        Duration = 5
    })
    -- You can add a fake screen change to scare the player
    local image = Instance.new("ImageLabel")
    image.Size = UDim2.new(1, 0, 1, 0)
    image.Image = "rbxassetid://IMAGE_ID" -- Replace with your image ID
    image.Parent = PlayerGui
    wait(3)
    image:Destroy()
end)

-- Exit Button (X)
local exitBtn = Instance.new("TextButton")
exitBtn.Size = UDim2.new(0, 30, 0, 30)
exitBtn.Position = UDim2.new(1, -40, 0, 10)
exitBtn.Text = "X"
exitBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
exitBtn.Font = Enum.Font.GothamBold
exitBtn.TextScaled = true
exitBtn.Parent = Frame

exitBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()  -- Close the GUI
end)
