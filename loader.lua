repeat task.wait() until game:IsLoaded()

-- SERVICES
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local LocalPlayer = Players.LocalPlayer

-- CONFIG
local BASE_URL = "https://raw.githubusercontent.com/yieldf999demons/yield-hub/main/"
local VERSION_URL = BASE_URL .. "version.txt"
local KEYS_URL = BASE_URL .. "keys.txt"

-- BLUR
local Blur = Instance.new("BlurEffect")
Blur.Size = 0
Blur.Parent = Lighting
TweenService:Create(Blur, TweenInfo.new(0.4), {Size = 16}):Play()

-- UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "YieldKeyUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.fromScale(0.28, 0.23)
Frame.Position = UDim2.fromScale(0.36, 0.4)
Frame.BackgroundColor3 = Color3.fromRGB(15,15,15)
Frame.BorderSizePixel = 0
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0,14)

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1,0,0.25,0)
Title.BackgroundTransparency = 1
Title.Text = "Yield HUB | Key System"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.TextColor3 = Color3.new(1,1,1)

local Box = Instance.new("TextBox", Frame)
Box.PlaceholderText = "Enter key..."
Box.Size = UDim2.new(0.85,0,0.25,0)
Box.Position = UDim2.new(0.075,0,0.4,0)
Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
Box.TextColor3 = Color3.new(1,1,1)
Box.Font = Enum.Font.Gotham
Box.TextSize = 16
Box.ClearTextOnFocus = false
Instance.new("UICorner", Box)

local Button = Instance.new("TextButton", Frame)
Button.Text = "Verify Key"
Button.Size = UDim2.new(0.85,0,0.22,0)
Button.Position = UDim2.new(0.075,0,0.7,0)
Button.BackgroundColor3 = Color3.fromRGB(90,60,255)
Button.TextColor3 = Color3.new(1,1,1)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 16
Instance.new("UICorner", Button)

-- FUNCTIONS
local function getLatestVersion()
    local ok, res = pcall(function()
        return game:HttpGet(VERSION_URL)
    end)
    if not ok then return nil end
    return res:gsub("%s+", "")
end

local function isKeyValid(key)
    local ok, data = pcall(function()
        return game:HttpGet(KEYS_URL)
    end)
    if not ok then return false end

    for line in data:gmatch("[^\r\n]+") do
        if line == key then
            return true
        end
    end
    return false
end

-- BUTTON CLICK (KEY SYSTEM LIVES HERE)
Button.MouseButton1Click:Connect(function()
    local key = Box.Text
    if key == "" then
        Button.Text = "Enter a key"
        return
    end

    Button.Text = "Checking..."

    if not isKeyValid(key) then
        Button.Text = "Invalid Key"
        task.wait(1.5)
        Button.Text = "Verify Key"
        return
    end

    Button.Text = "Loading..."

    local version = getLatestVersion()
    if not version then
        Button.Text = "Load Failed"
        return
    end

    TweenService:Create(Blur, TweenInfo.new(0.3), {Size = 0}):Play()
    ScreenGui:Destroy()

    loadstring(game:HttpGet(BASE_URL .. version .. ".lua"))()
end)
