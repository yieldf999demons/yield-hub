repeat task.wait() until game:IsLoaded()

--// =========================
--// GROUP MOD NOTIFIER MERGED
--// =========================

task.spawn(function()
    local TARGET_GROUP_ID = 128056089
    local tracked = {}

    local Players = game:GetService("Players")
    local StarterGui = game:GetService("StarterGui")
    local SoundService = game:GetService("SoundService")

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://112543434718839"
    sound.Volume = 10
    sound.Parent = SoundService

    local function notify(t, msg, playSound)
        pcall(function()
            StarterGui:SetCore("SendNotification", {
                Title = t,
                Text = msg,
                Duration = 8
            })

            if playSound then
                sound:Play()
            end
        end)
    end

    local function inGroup(p)
        local ok, res = pcall(function()
            return p:IsInGroup(TARGET_GROUP_ID)
        end)
        return ok and res
    end

    for _, p in ipairs(Players:GetPlayers()) do
        if inGroup(p) then
            tracked[p.UserId] = true
            notify("Group Alert", p.Name .. " joined", true)
        end
    end

    Players.PlayerAdded:Connect(function(p)
        p.CharacterAdded:Wait()
        if inGroup(p) then
            tracked[p.UserId] = true
            notify("Group Alert", p.Name .. " joined", true)
        end
    end)

    Players.PlayerRemoving:Connect(function(p)
        if tracked[p.UserId] then
            notify("Group Left", p.Name .. " left")
            tracked[p.UserId] = nil
        end
    end)
end)


--// =========================
--// ORIGINAL yieldHUB SCRIPT
--// (UNCHANGED BELOW)
--// =========================


repeat
    task.wait()
until game:IsLoaded()
local v1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureLibrary"))()
local vu2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModdedESP"))()
local vu3 = game:GetService("RunService")
local vu4 = game:GetService("UserInputService")
local vu5 = game:GetService("Workspace")
local vu6 = game:GetService("Players")
local vu7 = game:GetService("Lighting")
local vu8 = game:GetService("ReplicatedStorage")
local vu9 = game:GetService("StarterGui")
local vu10 = game:GetService("Stats")
local vu11 = game:GetService("CoreGui")
local vu12 = game:GetService("SoundService")
local v13 = game:GetService("HttpService")
local vu14 = {
    3798662628,
    7209840434,
    2329820056,
    5850287987,
    1922835848,
    4073688032,
    4073704573,
    4073715015,
    4073727321,
    4073734409,
    4073739444,
    1903227174,
    4285504744
}
local vu15 = nil
local vu16 = nil
local vu17 = vu6.LocalPlayer
local vu18 = nil
local vu19 = nil
local vu20 = nil
local vu21 = Drawing.new("Circle")
vu21.Filled = true
vu21.Radius = 5
local vu22 = Drawing.new("Line")
vu22.Thickness = 2
local vu23 = Instance.new("Highlight")
local v24 = Instance.new("ScreenGui", vu11)
v24.Name = "RobloxGui"
v24.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local vu25 = Instance.new("Frame", v24)
vu25.Name = "Actyrn"
vu25.BorderSizePixel = 0
vu25.Size = UDim2.new(0, 360, 0, 70)
vu25.AnchorPoint = Vector2.new(0.5, 0)
local vu26 = Instance.new("Frame", vu25)
vu26.Name = "Actyrn"
vu26.BorderSizePixel = 0
vu26.Position = UDim2.new(0, 0, - 0.1, 0)
vu26.Size = UDim2.new(0, 360, 0, 7.5)
local vu27 = Instance.new("TextLabel", vu25)
vu27.Name = "Actyrn"
vu27.BackgroundTransparency = 1
vu27.Position = UDim2.new(0.22, 0, 0.07, 0)
vu27.Size = UDim2.new(0, 270, 0, 20)
vu27.Font = Enum.Font.Code
vu27.TextScaled = true
vu27.TextSize = 15
vu27.TextStrokeTransparency = 0
vu27.TextWrapped = true
local vu28 = Instance.new("ImageLabel", vu25)
vu28.Name = "Actyrn"
vu28.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
vu28.BorderSizePixel = 0
vu28.Position = UDim2.new(0.03, 0, 0.07, 0)
vu28.Size = UDim2.new(0, 60, 0, 60)
vu28.Transparency = 1
vu28.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
local vu29 = Instance.new("Frame", vu25)
vu29.Name = "Actyrn"
vu29.BorderSizePixel = 0
vu29.Position = UDim2.new(0.215, 0, 0.35, 0)
vu29.Size = UDim2.new(0, 270, 0, 20)
vu29.Transparency = 1
local vu30 = Instance.new("Frame", vu29)
vu30.Name = "Actyrn"
vu30.BorderSizePixel = 0
vu30.Position = UDim2.new(- 0.0034, 0, 0.165, 0)
vu30.Size = UDim2.new(0, 130, 0, 20)
local v31 = Instance.new("UIGradient", vu26)
v31.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(230, 230, 230)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(155, 155, 155))
})
v31.Rotation = 90
local v32 = Instance.new("UIGradient", vu25)
v32.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 50)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
v32.Rotation = 90
local v33 = Instance.new("UIGradient", vu29)
v33.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 60)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30))
})
v33.Rotation = 90
local v34 = Instance.new("UIGradient", vu30)
v34.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(230, 230, 230)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(155, 155, 155))
})
v34.Rotation = 90
local vu35 = Drawing.new("Circle")
vu35.Thickness = 1.5
local vu36 = Drawing.new("Circle")
vu36.Filled = true
vu36.Radius = 5
local vu37 = Drawing.new("Line")
vu37.Thickness = 2
local vu38 = Instance.new("Highlight")
local v39 = Instance.new("ScreenGui", vu11)
v39.Name = "RobloxGui"
v39.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local vu40 = Instance.new("Frame", v39)
vu40.Name = "Actyrn"
vu40.BorderSizePixel = 0
vu40.Size = UDim2.new(0, 360, 0, 70)
vu40.AnchorPoint = Vector2.new(0.5, 0)
local vu41 = Instance.new("Frame", vu40)
vu41.Name = "Actyrn"
vu41.BorderSizePixel = 0
vu41.Position = UDim2.new(0, 0, - 0.1, 0)
vu41.Size = UDim2.new(0, 360, 0, 7.5)
local vu42 = Instance.new("TextLabel", vu40)
vu42.Name = "Actyrn"
vu42.BackgroundTransparency = 1
vu42.Position = UDim2.new(0.22, 0, 0.07, 0)
vu42.Size = UDim2.new(0, 270, 0, 20)
vu42.Font = Enum.Font.Code
vu42.TextScaled = true
vu42.TextSize = 15
vu42.TextStrokeTransparency = 0
vu42.TextWrapped = true
local vu43 = Instance.new("ImageLabel", vu40)
vu43.Name = "Actyrn"
vu43.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
vu43.BorderSizePixel = 0
vu43.Position = UDim2.new(0.03, 0, 0.07, 0)
vu43.Size = UDim2.new(0, 60, 0, 60)
vu43.Transparency = 1
vu43.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
local vu44 = Instance.new("Frame", vu40)
vu44.Name = "Actyrn"
vu44.BorderSizePixel = 0
vu44.Position = UDim2.new(0.215, 0, 0.35, 0)
vu44.Size = UDim2.new(0, 270, 0, 20)
vu44.Transparency = 1
local vu45 = Instance.new("Frame", vu44)
vu45.Name = "Actyrn"
vu45.BorderSizePixel = 0
vu45.Position = UDim2.new(- 0.0034, 0, 0.165, 0)
vu45.Size = UDim2.new(0, 130, 0, 20)
local v46 = Instance.new("UIGradient", vu41)
v46.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(230, 230, 230)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(155, 155, 155))
})
v46.Rotation = 90
local v47 = Instance.new("UIGradient", vu40)
v47.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(50, 50, 50)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
})
v47.Rotation = 90
local v48 = Instance.new("UIGradient", vu44)
v48.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 60, 60)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30))
})
v48.Rotation = 90
local v49 = Instance.new("UIGradient", vu45)
v49.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(230, 230, 230)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(155, 155, 155))
})
v49.Rotation = 90
local vu50 = Drawing.new("Circle")
vu50.Thickness = 1.5
local vu51 = Drawing.new("Circle")
vu51.Filled = true
vu51.Thickness = 1
vu51.Radius = 5
local vu52 = Drawing.new("Line")
vu52.Thickness = 2
local vu53 = Instance.new("Part")
vu53.Name = "Actyrn"
vu53.Transparency = 1
vu53.CanCollide = false
vu53.CanTouch = false
vu53.Anchored = true
local vu54 = vu7:FindFirstChildOfClass("ColorCorrectionEffect") or Instance.new("ColorCorrectionEffect", vu7)
local vu55 = Drawing.new("Line")
local vu56 = Drawing.new("Line")
local vu57 = Drawing.new("Text")
vu57.Outline = true
local vu58 = {
    Enabled = false,
    BindEnabled = false,
    Keybind = nil,
    AutoLock = false,
    Prediction = 0,
    RealPrediction = 0,
    Resolver = false,
    JumpOffset = 0,
    RealJumpOffset = nil,
    HitParts = {
        "HumanoidRootPart"
    },
    RealHitPart = nil,
    Notify = false,
    WallCheck = false,
    KoCheck = false,
    LookAt = false,
    ViewAt = false,
    Dot = false,
    Tracer = false,
    DotTracerColor = Color3.fromRGB(210, 210, 210),
    Highlight = false,
    HighlightColor = Color3.fromRGB(210, 210, 210),
    Stats = false,
    StatsColor = Color3.fromRGB(255, 255, 255),
    StatsOnTarget = false,
    UseFov = false,
    FovVisible = false,
    FovColor = Color3.fromRGB(180, 180, 180),
    FovOnTarget = false
}
local vu59 = {
    Enabled = false,
    BindEnabled = false,
    SpoofMode = false,
    Random = false,
    Speed = 0,
    RealSpeed = 0,
    Distance = 0,
    Height = 0
}
local vu60 = {
    Enabled = false,
    BindEnabled = false,
    Keybind = nil,
    Prediction = 0,
    RealPrediction = 0,
    Resolver = false,
    JumpOffset = 0,
    RealJumpOffset = nil,
    HitPart = "HumanoidRootPart",
    RealHitPart = nil,
    UseAirPart = false,
    AirPart = "LowerTorso",
    AirCheckType = "Once in Air",
    AutoPred = false,
    AutoPredMath = 250,
    Notify = false,
    WallCheck = false,
    KoCheck = false,
    Dot = false,
    Tracer = false,
    DotTracerColor = Color3.fromRGB(210, 210, 210),
    Highlight = false,
    HighlightColor = Color3.fromRGB(210, 210, 210),
    Stats = false,
    StatsColor = Color3.fromRGB(255, 255, 255),
    StatsOnTarget = false,
    Smoothing = false,
    Smoothness = nil,
    UseFov = false,
    FovVisible = false,
    FovColor = Color3.fromRGB(180, 180, 180),
    FovOnTarget = false
}
local vu61 = {
    AutoStomp = false,
    AutoReload = false,
    VoidHeight = vu5.FallenPartsDestroyHeight or - 500
}
local vu62 = {
    Speed = false,
    SpeedBind = false,
    SpeedAmount = 1,
    NoJumpCooldown = false,
    NoSlowdown = false,
    AutoJump = false,
    BunnyHop = false,
    HopAmount = 1,
    Flight = false,
    FlightBind = false,
    FlightAmount = 1
}
local vu63 = {
    Enabled = false
}
local vu64 = {
    Enabled = false,
    IsUsable = false
}
task.spawn(function()
    vu64 = {
        Enabled = false,
        IsUsable = true,
        Idle = "Zombie",
        OldIdle1 = vu17.Character.Animate.idle.Animation1.AnimationId,
        OldIdle2 = vu17.Character.Animate.idle.Animation2.AnimationId,
        Walk = "Zombie",
        OldWalk = vu17.Character.Animate.walk.WalkAnim.AnimationId,
        Run = "Zombie",
        OldRun = vu17.Character.Animate.run.RunAnim.AnimationId,
        Jump = "Zombie",
        OldJump = vu17.Character.Animate.jump.JumpAnim.AnimationId,
        Fall = "Zombie",
        OldFall = vu17.Character.Animate.fall.FallAnim.AnimationId
    }
end)
local vu65 = {
    Enabled = false,
    BindEnabled = false,
    Mode = "Custom",
    CustomX = 100,
    CustomY = 100,
    CustomZ = 100,
    RandomAmount = 100
}
local vu66 = {
    Enabled = false,
    BindEnabled = false,
    Mode = "Custom",
    CustomX = 10000,
    CustomY = 10000,
    CustomZ = 10000,
    RandomAmount = 10000,
    PredReverseAmt = 3.5,
    LookVecAmt = 10000,
    PredChangeAmt = 5,
    DesyncVel = "Up",
    DesyncAngles = 0.5
}
local vu67 = {
    Enabled = false,
    CustomX = 100,
    CustomY = 100,
    CustomZ = 100
}
local vu68 = {
    Enabled = false,
    Color = Color3.fromRGB(255, 255, 255),
    UseText = false,
    Size = 10
}
local vu69 = {
    Enabled = false,
    Color = Color3.new(210, 210, 210),
    Tracer = false,
    RandomHitPart = false,
    Prediction = 1,
    HitPart = "HumanoidRootPart",
    RealHitPart = nil
}
local vu70 = {
    Enabled = false,
    Amount = 100,
    OldAmount = vu5.CurrentCamera.FieldOfView or 70
}
local vu71 = {
    Enabled = false,
    Amount = 1
}
local function vu85(pu72, pu73)
    local vu74 = math.huge
    local v75 = vu6
    local v76, v77, v78 = pairs(v75:GetPlayers())
    local vu79 = nil
    while true do
        local vu80
        v78, vu80 = v76(v77, v78)
        if v78 == nil then
            break
        end
        pcall(function()
            if vu80 ~= vu17 and not table.find(vu14, vu80.UserId) then
                local v81, v82 = vu5.CurrentCamera:WorldToViewportPoint(vu80.Character[pu72.RealHitPart].Position)
                local v83 = vu4
                local v84 = (Vector2.new(v81.X, v81.Y) - v83:GetMouseLocation()).Magnitude
                if pu72.WallCheck then
                    if pu72.UseFov then
                        if v84 < vu74 and v84 < pu73.Radius and (vu5:FindPartOnRayWithIgnoreList(Ray.new(vu5.CurrentCamera.CFrame.Position, vu80.Character[pu72.RealHitPart].Position - vu5.CurrentCamera.CFrame.Position), {
                            vu5.CurrentCamera,
                            vu17.Character,
                            vu80.Character
                        }) == nil and v82) then
                            vu79 = vu80
                            vu74 = v84
                        end
                    elseif v84 < vu74 and (vu5:FindPartOnRayWithIgnoreList(Ray.new(vu5.CurrentCamera.CFrame.Position, vu80.Character[pu72.RealHitPart].Position - vu5.CurrentCamera.CFrame.Position), {
                        vu5.CurrentCamera,
                        vu17.Character,
                        vu80.Character
                    }) == nil and v82) then
                        vu79 = vu80
                        vu74 = v84
                    end
                elseif pu72.UseFov then
                    if v84 < vu74 and (v84 < pu73.Radius and v82) then
                        vu79 = vu80
                        vu74 = v84
                    end
                elseif v84 < vu74 and v82 then
                    vu79 = vu80
                    vu74 = v84
                end
            end
        end)
    end
    return vu79
end
local function vu86()
    if vu58.Enabled and vu58.BindEnabled then
        if vu8:FindFirstChild("MainEvent") and game.PlaceId == 2788229376 or (game.PlaceId == 7213786345 or (game.PlaceId == 16033173781 or game.PlaceId == 17723797487)) then
            if vu58.Resolver then
                vu8.MainEvent:FireServer("UpdateMousePosI", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction)
            else
                vu8.MainEvent:FireServer("UpdateMousePosI", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction)
            end
        elseif vu8:FindFirstChild("MainEvent") and game.PlaceId == 9825515356 then
            if vu58.Resolver then
                vu8.MainEvent:FireServer("MousePosUpdate", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction)
            else
                vu8.MainEvent:FireServer("MousePosUpdate", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction)
            end
        elseif vu8:FindFirstChild("Bullets") and game.PlaceId == 5602055394 or game.PlaceId == 7951883376 then
            if vu58.Resolver then
                vu8.Bullets:FireServer("MousePos", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction)
            else
                vu8.Bullets:FireServer("MousePos", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction)
            end
        elseif vu8:FindFirstChild("MainEvent") and game.PlaceId == 15781289939 or (game.PlaceId == 18892166956 or game.PlaceId == 18128019573) then
            if vu58.Resolver then
                vu8.MainEvent:FireServer("UpdateMousePos", {
                    Camera = vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction,
                    MousePos = vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction
                })
            else
                vu8.MainEvent:FireServer("UpdateMousePos", {
                    Camera = vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction,
                    MousePos = vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction
                })
            end
        elseif vu8:FindFirstChild("MainEvent") and game.PlaceId == 18461536252 then
            if vu58.Resolver then
                vu8.MainEvent:FireServer("ba193db25", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction)
            else
                vu8.MainEvent:FireServer("ba193db25", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction)
            end
        elseif vu8:FindFirstChild("Remote") and game.PlaceId == 18597599264 then
            if vu58.Resolver then
                vu8.Remote:FireServer("UpdateAimingAt", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction)
            else
                vu8.Remote:FireServer("UpdateAimingAt", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction)
            end
        elseif vu8:FindFirstChild("MAINEVENT") and game.PlaceId == 15186202290 or (game.PlaceId == 122094140167766 or (game.PlaceId == 125825216602676 or (game.PlaceId == 138831788033519 or game.PlaceId == 130633951564639))) then
            if vu58.Resolver then
                vu8.MAINEVENT:FireServer("MOUSE", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction)
            else
                vu8.MAINEVENT:FireServer("MOUSE", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction)
            end
        elseif vu8:FindFirstChild(".gg/flamehood") and game.PlaceId == 15644861772 then
            if vu58.Resolver then
                vu8[".gg/flamehood"]:FireServer("UpdateMousePos", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction)
            else
                vu8[".gg/flamehood"]:FireServer("UpdateMousePos", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction)
            end
        elseif vu8:FindFirstChild("MainEvent") and game.PlaceId == 139604762943805 or game.PlaceId == 18923120551 then
            if vu58.Resolver then
                vu8.MainEvent:FireServer("UpdateMousePos", {
                    MousePos = vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction,
                    Camera = vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction
                })
            else
                vu8.MainEvent:FireServer("UpdateMousePos", {
                    MousePos = vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction,
                    Camera = vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction
                })
            end
        elseif vu8:FindFirstChild("assets") and (vu8.assets:FindFirstChild("dh") and (vu8.assets.dh:FindFirstChild("MainEvent") and game.PlaceId == 16871610060)) then
            if vu58.Resolver then
                vu8.assets.dh.MainEvent:FireServer("UpdateMousePos", {
                    vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction,
                    vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction
                })
            else
                vu8.assets.dh.MainEvent:FireServer("UpdateMousePos", {
                    vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction,
                    vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction
                })
            end
        elseif vu8:FindFirstChild("MainEvent") then
            if vu58.Resolver then
                vu8.MainEvent:FireServer("UpdateMousePos", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction)
            else
                vu8.MainEvent:FireServer("UpdateMousePos", vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction)
            end
        end
    end
end
local v87 = v1:CreateWindow("yield HUB| DD + WATER | discord.gg/outfilled", Vector2.new(475, 550), Enum.KeyCode.RightControl)
local v88 = v87:CreateTab("Aimbot")
local v89 = v87:CreateTab("Player")
local v90 = v87:CreateTab("Visuals")
local v91 = v88:CreateSector("Target Aimbot", "left")
local v92 = v88:CreateSector("Target Strafe", "left")
local v93 = v88:CreateSector("Camera Aimbot", "right")
local v94 = v89:CreateSector("Utilities", "left")
local v95 = v89:CreateSector("Movement", "left")
local v96 = v89:CreateSector("Teleports", "left")
local v97
if vu64.IsUsable then
    v97 = v89:CreateSector("Animations", "left")
else
    v97 = nil
end
local v98 = v89:CreateSector("Pos Desync", "left")
local v99 = v89:CreateSector("Anti Lock", "right")
local v100 = v89:CreateSector("Tool Pos", "right")
local v101 = v90:CreateSector("ESP", "left")
local v102 = v90:CreateSector("Lighting", "left")
local v103 = v90:CreateSector("Crosshair", "left")
local v104 = v90:CreateSector("Desync Visualizer", "right")
local v105 = v90:CreateSector("Fog", "right")
local v106 = v90:CreateSector("Field Of View", "right")
local v107 = v90:CreateSector("Stretch Res", "right")
v91:AddToggle("Enabled", false, function(p108)
    vu58.Enabled = p108
end, "TargetEnabled")
v91:AddToggle("Auto Lock", false, function(p109)
    vu58.AutoLock = p109
    if not p109 then
        vu58.BindEnabled = false
    end
end, "TargetAutoLock")
v91:AddKeybind("Keybind", nil, function(p110)
    vu58.Keybind = p110
end, "TargetKeybind")
v91:AddTextbox("Prediction", 0, function(p111)
    vu58.Prediction = p111
    vu58.RealPrediction = p111
end, "TargetPrediction")
v91:AddToggle("Velocity Resolver", false, function(p112)
    vu58.Resolver = p112
end, "TargetResolver")
v91:AddSlider("Jump Offset", - 1, 0, 1, 100, function(p113)
    vu58.JumpOffset = p113
    vu58.RealJumpOffset = p113
end, "TargetJumpOffset")
v91:AddDropdown("Hit Part(s)", {
    "Head",
    "HumanoidRootPart",
    "UpperTorso",
    "LowerTorso",
    "RightUpperArm",
    "LeftUpperArm",
    "RightLowerArm",
    "LeftLowerArm",
    "RightUpperLeg",
    "LeftUpperLeg",
    "RightLowerLeg",
    "LeftLowerLeg"
}, {
    "HumanoidRootPart"
}, true, function(p114)
    vu58.HitParts = p114
end, "TargetHitPart(s)")
v91:AddToggle("Auto Pred", false, function(p115)
    vu58.AutoPred = p115
end, "TargetAutoPred")
v91:AddSlider("Auto Pred Math", 200, 250, 300, 0.2, function(p116)
    vu58.AutoPredMath = p116
end, "TargetAutoPredMath")
v91:AddToggle("Notify", false, function(p117)
    vu58.Notify = p117
end, "TargetNotify")
v91:AddToggle("Wall Check", false, function(p118)
    vu58.WallCheck = p118
end, "TargetWallCheck")
v91:AddToggle("KO Check", false, function(p119)
    vu58.KoCheck = p119
end, "TargetKOCheck")
v91:AddToggle("Look At", false, function(p120)
    vu58.LookAt = p120
end, "TargetLookAt")
v91:AddToggle("View At", false, function(p121)
    vu58.ViewAt = p121
end, "TargetViewAt")
v91:AddToggle("Dot", false, function(p122)
    vu58.Dot = p122
end, "TargetDot"):AddColorpicker(Color3.fromRGB(210, 210, 210), function(p123)
    vu58.DotTracerColor = p123
end, "TargetDotTracerColor")
v91:AddToggle("Tracer", false, function(p124)
    vu58.Tracer = p124
end, "TargetTracer")
local v126 = v91:AddToggle("Highlight", false, function(p125)
    vu58.Highlight = p125
end, "TargetHighlight")
v126:AddColorpicker(Color3.fromRGB(210, 210, 210), function(p127)
    vu58.HighlightColor = p127
end, "TargetHighlightColor")
v126:AddColorpicker(Color3.fromRGB(25, 25, 25), function(p128)
    vu23.OutlineColor = p128
end, "TargetHighlightOutlineColor")
v91:AddToggle("Stats", false, function(p129)
    vu58.Stats = p129
end, "TargetStats"):AddColorpicker(Color3.fromRGB(255, 255, 255), function(p130)
    vu58.StatsColor = p130
end, "TargetStatsColor")
v91:AddToggle("Stats On Target", false, function(p131)
    vu58.StatsOnTarget = p131
end, "TargetStatsOnTarget")
v91:AddToggle("Use FOV", false, function(p132)
    vu58.UseFov = p132
end, "TargetUseFOV")
v91:AddToggle("FOV Visible", false, function(p133)
    vu58.FovVisible = p133
end, "TargetFOVVisible"):AddColorpicker(Color3.fromRGB(180, 180, 180), function(p134)
    vu58.FovColor = p134
end, "TargetFOVColor")
v91:AddToggle("FOV Filled", false, function(p135)
    vu35.Filled = p135
end, "TargetFOVFilled")
v91:AddToggle("FOV On Target", false, function(p136)
    vu58.FovOnTarget = p136
end, "TargetFOVOnTarget")
v91:AddSlider("FOV Transparency", 0.1, 0.75, 1, 100, function(p137)
    vu35.Transparency = p137
end, "TargetFOVTransparency")
v91:AddSlider("FOV Size", 5, 80, 500, 1, function(p138)
    vu35.Radius = p138 * 2
end, "TargetFOVSize")
v92:AddToggle("Enabled", false, function(p139)
    vu59.Enabled = p139
    vu59.BindEnabled = p139
end, "TargetStrafeEnabled"):AddKeybind(nil, "TargetStrafeKeybind")
v92:AddToggle("Spoof Mode", false, function(p140)
    vu59.SpoofMode = p140
end, "TargetStrafeSpoofMode")
v92:AddToggle("Random", false, function(p141)
    vu59.Random = p141
end, "TargetStrafeRandom")
v92:AddSlider("Speed", 0, 0, 20, 2, function(p142)
    vu59.Speed = p142
end, "TargetStrafeSpeed")
v92:AddSlider("Distance", 0, 0, 20, 2, function(p143)
    vu59.Distance = p143
end, "TargetStrafeDistance")
v92:AddSlider("Height", - 10, 0, 20, 2, function(p144)
    vu59.Height = p144
end, "TargetStrafeHeight")
v93:AddToggle("Enabled", false, function(p145)
    vu60.Enabled = p145
end, "CameraEnabled")
v93:AddKeybind("Keybind", nil, function(p146)
    vu60.Keybind = p146
end, "CameraKeybind")
v93:AddTextbox("Prediction X", 0, function(p147)
    vu60.Prediction = p147
    vu60.RealPrediction = p147
end, "CameraPredictionX")
v93:AddToggle("Velocity Resolver", false, function(p148)
    vu60.Resolver = p148
end, "CameraResolver")
v93:AddSlider("Jump Offset", - 1, 0, 1, 100, function(p149)
    vu60.JumpOffset = p149
    vu60.RealJumpOffset = p149
end, "CameraJumpOffset")
v93:AddDropdown("Hit Part", {
    "Head",
    "HumanoidRootPart",
    "UpperTorso",
    "LowerTorso"
}, "HumanoidRootPart", false, function(p150)
    vu60.HitPart = p150
    vu60.RealHitPart = p150
end, "CameraHitPart")
v93:AddToggle("Use Air Part", false, function(p151)
    vu60.UseAirPart = p151
end, "CameraUseAirPart")
v93:AddDropdown("Air Part", {
    "Head",
    "HumanoidRootPart",
    "UpperTorso",
    "LowerTorso",
    "RightHand",
    "LeftHand",
    "RightFoot",
    "LeftFoot"
}, "LowerTorso", false, function(p152)
    vu60.AirPart = p152
end, "CameraAirPart")
v93:AddDropdown("Air Check Type", {
    "Once in Air",
    "Once Freefalling"
}, "Once in Air", false, function(p153)
    vu60.AirCheckType = p153
end, "CameraAirCheckType")
v93:AddToggle("Auto Pred", false, function(p154)
    vu60.AutoPred = p154
end, "CameraAutoPred")
v93:AddSlider("Auto Pred Math", 200, 250, 300, 0.2, function(p155)
    vu60.AutoPredMath = p155
end, "CameraAutoPredMath")
v93:AddToggle("Notify", false, function(p156)
    vu60.Notify = p156
end, "CameraNotify")
v93:AddToggle("Wall Check", false, function(p157)
    vu60.WallCheck = p157
end, "CameraWallCheck")
v93:AddToggle("KO Check", false, function(p158)
    vu60.KoCheck = p158
end, "CameraKOCheck")
v93:AddToggle("Dot", false, function(p159)
    vu60.Dot = p159
end, "CameraDot"):AddColorpicker(Color3.fromRGB(210, 210, 210), function(p160)
    vu60.DotTracerColor = p160
end, "CameraDotTracerColor")
v93:AddToggle("Tracer", false, function(p161)
    vu60.Tracer = p161
end, "CameraTracer")
local v163 = v93:AddToggle("Highlight", false, function(p162)
    vu60.Highlight = p162
end, "CameraHighlight")
v163:AddColorpicker(Color3.fromRGB(210, 210, 210), function(p164)
    vu60.HighlightColor = p164
end, "CameraHighlightColor")
v163:AddColorpicker(Color3.fromRGB(25, 25, 25), function(p165)
    vu38.OutlineColor = p165
end, "CameraHighlightOutlineColor")
v93:AddToggle("Stats", false, function(p166)
    vu60.Stats = p166
end, "CameraStats"):AddColorpicker(Color3.fromRGB(255, 255, 255), function(p167)
    vu60.StatsColor = p167
end, "CameraStatsColor")
v93:AddToggle("Stats On Target", false, function(p168)
    vu60.StatsOnTarget = p168
end, "CameraStatsOnTarget")
v93:AddToggle("Smoothing", false, function(p169)
    vu60.Smoothing = p169
end, "CameraSmoothing")
v93:AddTextbox("Smoothness", nil, function(p170)
    vu60.Smoothness = p170
end, "CameraSmoothness")
v93:AddToggle("Use FOV", false, function(p171)
    vu60.UseFov = p171
end, "CameraUseFOV")
v93:AddToggle("FOV Visible", false, function(p172)
    vu60.FovVisible = p172
end, "CameraFOVVisible"):AddColorpicker(Color3.fromRGB(180, 180, 180), function(p173)
    vu60.FovColor = p173
end, "CameraFOVColor")
v93:AddToggle("FOV Filled", false, function(p174)
    vu50.Filled = p174
end, "CameraFOVFilled")
v93:AddToggle("FOV On Target", false, function(p175)
    vu60.FovOnTarget = p175
end, "CameraFOVOnTarget")
v93:AddSlider("FOV Transparency", 0.1, 0.75, 1, 100, function(p176)
    vu50.Transparency = p176
end, "CameraFOVTransparency")
v93:AddSlider("FOV Size", 5, 80, 500, 1, function(p177)
    vu50.Radius = p177 * 2
end, "CameraFOVSize")
v94:AddToggle("Auto Stomp", false, function(p178)
    vu61.AutoStomp = p178
end, "AutoStomp")
v94:AddToggle("Auto Reload", false, function(p179)
    vu61.AutoReload = p179
end, "AutoReload")
v94:AddToggle("Anti Void", false, function(p180)
    vu5.FallenPartsDestroyHeight = p180 and - math.huge or vu61.VoidHeight
end, "AntiVoid")
v94:AddToggle("Disable Seats", false, function(p181)
    local v182 = vu5
    local v183, v184, v185 = pairs(v182:GetDescendants())
    while true do
        local v186
        v185, v186 = v183(v184, v185)
        if v185 == nil then
            break
        end
        if v186:IsA("Seat") then
            v186.Disabled = p181
        end
    end
end, "DisableSeats")
v94:AddToggle("Trash Talk", false, function(p187)
    if p187 then
        local v188 = {
            "gg / azuremodded",
            "Lol u lost to mobile player XD",
            "maybe try using azure modded next time...",
            "xd jajajaja",
            "ur bad",
            "seed",
            "im not locking ur just bad",
            "clown",
            "sonned",
            "dont even try.. ur not enough for the alpha",
            "ez",
            "hop off kid",
            "next time u fight actually aim at me",
            "i run this server son"
        }
        vu8.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v188[math.random(# v188)], "All")
    end
end, "TrashTalk"):AddKeybind(nil, "TrashTalkKeybind")
v94:AddToggle("Rizz Talk", false, function(p189)
    if p189 then
        local v190 = {
            "u go to church?cuz u gna be on ur knees tonight",
            "r you a transformer? cuz ur optimus fine",
            "r you a bus? cuz i wanna fill u with kids",
            "r u skibidi? because id like to be ur toilet",
            "r you a cow? cuz i wanna milk u",
            "are u a rev? because id give you 6 shots"
        }
        vu8.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v190[math.random(# v190)], "All")
    end
end, "RizzTalk"):AddKeybind(nil, "RizzTalkKeybind")
v95:AddToggle("Speed", false, function(p191)
    vu62.Speed = p191
    vu62.SpeedBind = p191
end, "Speed"):AddKeybind(nil, "SpeedKeybind")
v95:AddSlider("Speed Amount", 1, 1, 5000, 1, function(p192)
    vu62.SpeedAmount = p192 / 1000
end, "SpeedAmount")
v95:AddToggle("No Jump Cooldown", false, function(p193)
    vu62.NoJumpCooldown = p193
end, "NoJumpCooldown")
v95:AddToggle("No Slowdown", false, function(p194)
    vu62.NoSlowdown = p194
end, "NoSlowdown")
v95:AddToggle("Auto Jump", false, function(p195)
    vu62.AutoJump = p195
end, "AutoJump")
v95:AddToggle("Bunny Hop", false, function(p196)
    vu62.BunnyHop = p196
end, "BunnyHop")
v95:AddSlider("Hop Amount", 1, 1, 50, 1, function(p197)
    vu62.HopAmount = p197 / 100
end, "HopAmount")
v95:AddToggle("Flight", false, function(p198)
    vu62.Flight = p198
    vu62.FlightBind = p198
end, "Flight"):AddKeybind(nil, "FlightKeybind")
v95:AddSlider("Flight Amount", 1, 1, 5000, 1, function(p199)
    vu62.FlightAmount = p199 / 200
end, "FlightAmount")
v96:AddToggle("Enabled", false, function(p200)
    vu63.Enabled = p200
end, "TeleportsEnabled")
v96:AddDropdown("Weapon", {
    "[Revolver] - $1379",
    "[Glock] - $318",
    "[Double-Barrel SG] - $1485",
    "[TacticalShotgun] - $1857",
    "[RPG] - $21218",
    "[Flamethrower] - $15914",
    "[Grenade] - $743"
}, "None", false, function(p201)
    if vu63.Enabled then
        vu17.Character:MoveTo(vu5.Ignored.Shop[p201].Head.Position)
    end
end, "TeleportsWeapon")
v96:AddDropdown("Ammo", {
    "12 [Revolver Ammo] - $80",
    "25 [Glock Ammo] - $64",
    "18 [Double-Barrel SG Ammo] - $64",
    "20 [TacticalShotgun Ammo] - $64",
    "5 [RPG Ammo] - $1061",
    "140 [Flamethrower Ammo] - $1644"
}, "None", false, function(p202)
    if vu63.Enabled then
        vu17.Character:MoveTo(vu5.Ignored.Shop[p202].Head.Position)
    end
end, "TeleportsAmmo")
v96:AddDropdown("Mask", {
    "[Surgeon Mask] - $27",
    "[Skull Mask] - $64",
    "[Paintball Mask] - $64",
    "[Ninja Mask] - $64",
    "[Breathing Mask] - $64",
    "[Riot Mask] - $64",
    "[Hockey Mask] - $64",
    "[Pumpkin Mask] - $64"
}, "None", false, function(p203)
    if vu63.Enabled then
        vu17.Character:MoveTo(vu5.Ignored.Shop[p203].Head.Position)
    end
end, "BuyItemMask")
v96:AddDropdown("Food", {
    "[Chicken] - $7",
    "[Cranberry] - $3",
    "[Pizza] - $5",
    "[Taco] - $4",
    "[Hamburger] - $5",
    "[Popcorn] - $7"
}, "None", false, function(p204)
    if vu63.Enabled then
        vu17.Character:MoveTo(vu5.Ignored.Shop[p204].Head.Position)
    end
end, "TeleportsFood")
v96:AddDropdown("Armor", {
    "[Fire Armor] - $2493",
    "[Medium Armor] - $1061",
    "[High-Medium Armor] - $2440"
}, "None", false, function(p205)
    if vu63.Enabled then
        vu17.Character:MoveTo(vu5.Ignored.Shop[p205].Head.Position)
    end
end, "TeleportsArmor")
if vu64.IsUsable then
    v97:AddToggle("Enabled", false, function(p206)
        vu64.Enabled = p206
        if not p206 then
            vu17.Character.Animate.idle.Animation1.AnimationId = vu64.OldIdle1
            vu17.Character.Animate.idle.Animation2.AnimationId = vu64.OldIdle2
            vu17.Character.Animate.walk.WalkAnim.AnimationId = vu64.OldWalk
            vu17.Character.Animate.run.RunAnim.AnimationId = vu64.OldRun
            vu17.Character.Animate.jump.JumpAnim.AnimationId = vu64.OldJump
            vu17.Character.Animate.fall.FallAnim.AnimationId = vu64.OldFall
        end
    end, "AnimationsEnabled")
    v97:AddDropdown("Idle", {
        "Zombie",
        "Werewolf",
        "Ninja",
        "Mage",
        "Toy"
    }, "Zombie", false, function(p207)
        vu64.Idle = p207
        if p207 == "None" then
            vu17.Character.Animate.idle.Animation1.AnimationId = vu64.OldIdle1
            vu17.Character.Animate.idle.Animation2.AnimationId = vu64.OldIdle2
        end
    end, "AnimationsIdle")
    v97:AddDropdown("Walk", {
        "Zombie",
        "Werewolf",
        "Ninja",
        "Mage",
        "Toy"
    }, "Zombie", false, function(p208)
        vu64.Walk = p208
        if p208 == "None" then
            vu17.Character.Animate.walk.WalkAnim.AnimationId = vu64.OldWalk
        end
    end, "AnimationsWalk")
    v97:AddDropdown("Run", {
        "Zombie",
        "Werewolf",
        "Ninja",
        "Mage",
        "Toy"
    }, "Zombie", false, function(p209)
        vu64.Run = p209
        if p209 == "None" then
            vu17.Character.Animate.run.RunAnim.AnimationId = vu64.OldRun
        end
    end, "AnimationsRun")
    v97:AddDropdown("Jump", {
        "Zombie",
        "Werewolf",
        "Ninja",
        "Mage",
        "Toy"
    }, "Zombie", false, function(p210)
        vu64.Jump = p210
        if p210 == "None" then
            vu17.Character.Animate.jump.JumpAnim.AnimationId = vu64.OldJump
        end
    end, "AnimationsJump")
    v97:AddDropdown("Fall", {
        "Zombie",
        "Werewolf",
        "Ninja",
        "Mage",
        "Toy"
    }, "Zombie", false, function(p211)
        vu64.Fall = p211
        if p211 == "None" then
            vu17.Character.Animate.fall.FallAnim.AnimationId = vu64.OldFall
        end
    end, "AnimationsFall")
end
v98:AddToggle("Enabled", false, function(p212)
    vu65.Enabled = p212
    vu65.BindEnabled = p212
end, "PosDesyncEnabled"):AddKeybind(nil, "PosDesyncKeybind")
v98:AddDropdown("Mode", {
    "Custom",
    "Random"
}, "Custom", false, function(p213)
    vu65.Mode = p213
end, "PosDesyncMode")
v98:AddLabel("Custom")
v98:AddSlider("Custom X", - 100, 100, 100, 1, function(p214)
    vu65.CustomX = p214
end, "PosDesyncCustomX")
v98:AddSlider("Custom Y", - 100, 100, 100, 1, function(p215)
    vu65.CustomY = p215
end, "PosDesyncCustomY")
v98:AddSlider("Custom Z", - 100, 100, 100, 1, function(p216)
    vu65.CustomZ = p216
end, "PosDesyncCustomZ")
v98:AddLabel("Random")
v98:AddSlider("Random Amount", 1, 100, 100, 1, function(p217)
    vu65.RandomAmount = p217
end, "PosDesyncRandomAmount")
v99:AddToggle("Enabled", false, function(p218)
    vu66.Enabled = p218
    vu66.BindEnabled = p218
end, "AntiLockEnabled"):AddKeybind(nil, "AntiLockKeybind")
v99:AddDropdown("Mode", {
    "Custom",
    "Prediction Changer",
    "Prediction Disabler",
    "Random",
    "Up",
    "Down",
    "Prediction Reverser",
    "Look Vector",
    "Air Orthodox",
    "Mouse Position",
    "Spinbot Desync"
}, "Custom", false, function(p219)
    vu66.Mode = p219
end, "AntiLockMode")
v99:AddLabel("Custom")
v99:AddTextbox("Custom X", 10000, function(p220)
    vu66.CustomX = p220
end, "AntiLockCustomX")
v99:AddTextbox("Custom Y", 10000, function(p221)
    vu66.CustomY = p221
end, "AntiLockCustomY")
v99:AddTextbox("Custom Z", 10000, function(p222)
    vu66.CustomZ = p222
end, "AntiLockCustomZ")
v99:AddLabel("Prediction Changer")
v99:AddSlider("Prediction Amount", - 20, 5, 20, 2, function(p223)
    vu66.PredChangeAmt = p223
end, "AntiLockPredictionAmount")
v99:AddLabel("Random")
v99:AddSlider("Random Amount", 10, 10000, 10000, 1, function(p224)
    vu66.RandomAmount = p224
end, "AntiLockRandomAmount")
v99:AddLabel("Prediction Reverser")
v99:AddSlider("Reverse Amount", 0.5, 3.5, 10, 2, function(p225)
    vu66.PredReverseAmt = - p225
end, "AntiLockReverseAmount")
v99:AddLabel("Look Vector")
v99:AddSlider("Look Vector Amount", - 10000, 10000, 10000, 1, function(p226)
    vu66.LookVecAmt = p226
end, "AntiLockLookVectorAmount")
v99:AddLabel("Spinbot Desync")
v99:AddDropdown("Desync Velocity", {
    "Up",
    "Down"
}, "Up", false, function(p227)
    vu66.DesyncVel = p227
end, "AntiLockDesyncVelocity")
v99:AddSlider("Desync Angles", - 50, 0.5, 50, 2, function(p228)
    vu66.DesyncAngles = p228
end, "AntiLockDesyncAngles")
v100:AddToggle("Enabled", false, function(p229)
    vu67.Enabled = p229
    if not p229 and vu17.Character:FindFirstChildOfClass("Tool") then
        vu17.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.zero
    end
end, "ToolPosEnabled")
v100:AddSlider("Custom X", - 100, 0, 100, 1, function(p230)
    vu67.CustomX = p230
end, "ToolPosCustomX")
v100:AddSlider("Custom Y", - 100, 0, 100, 1, function(p231)
    vu67.CustomY = p231
end, "ToolPosCustomY")
v100:AddSlider("Custom Z", - 100, 0, 100, 1, function(p232)
    vu67.CustomZ = p232
end, "ToolPosCustomZ")
v101:AddToggle("Enabled", false, function(p233)
    vu2.Enabled = p233
end, "EspEnabled"):AddColorpicker(Color3.fromRGB(255, 255, 255), function(p234)
    vu2.Color = p234
end, "EspColor")
v101:AddToggle("Boxes", false, function(p235)
    vu2.Boxes = p235
end, "EspBoxes")
v101:AddToggle("Names", false, function(p236)
    vu2.Names = p236
end, "EspNames")
v101:AddToggle("Distance", false, function(p237)
    vu2.Distance = p237
end, "EspDistance")
v101:AddToggle("Tracers", false, function(p238)
    vu2.Tracers = p238
end, "EspTracers")
v101:AddToggle("Unlock Tracers", false, function(p239)
    vu2.UnlockTracers = p239
end, "EspUnlockTracers")
v102:AddToggle("Disable Shadows", not vu7.GlobalShadows, function(p240)
    vu7.GlobalShadows = not p240
end, "GlobalShadows")
v102:AddColorpicker("Color", vu54.TintColor, function(p241)
    vu54.TintColor = p241
end, "TintColor")
v102:AddSlider("Brightness", - 1, vu54.Brightness, 1, 10, function(p242)
    vu54.Brightness = p242
end, "Brightness")
v102:AddSlider("Saturation", - 1, vu54.Saturation, 1, 10, function(p243)
    vu54.Saturation = p243
end, "Saturation")
v102:AddSlider("Contrast", - 1, vu54.Contrast, 1, 10, function(p244)
    vu54.Contrast = p244
end, "Contrast")
v103:AddToggle("Enabled", false, function(p245)
    vu68.Enabled = p245
end, "CrosshairEnabled"):AddColorpicker(Color3.fromRGB(255, 255, 255), function(p246)
    vu68.Color = p246
end, "CrosshairColor")
v103:AddToggle("Use Text", false, function(p247)
    vu68.UseText = p247
end, "CrosshairUseText")
v103:AddTextbox("Text", "/outfilled", function(p248)
    vu57.Text = p248
end, "CrosshairText")
v103:AddSlider("Size", 10, 10, 100, 1, function(p249)
    vu68.Size = p249
    vu57.Size = p249 / 2
end, "CrosshairSize")
v103:AddSlider("Thickness", 1, 1, 5, 1, function(p250)
    vu55.Thickness = p250
    vu56.Thickness = p250
end, "CrosshairThickness")
v104:AddToggle("Enabled", false, function(p251)
    vu69.Enabled = p251
end, "DesyncVisualizerEnabled"):AddColorpicker(Color3.fromRGB(210, 210, 210), function(p252)
    vu69.Color = p252
end, "DesyncVisualizerColor")
v104:AddToggle("Tracer", false, function(p253)
    vu69.Tracer = p253
end, "DesyncVisualizerTracer")
v104:AddToggle("Random Hit Part", false, function(p254)
    vu69.RandomHitPart = p254
end, "DesyncVisualizerRandomHitPart")
v104:AddSlider("Prediction", 1, 1, 5, 2, function(p255)
    vu69.Prediction = p255 / 20
end, "DesyncVisualizerPrediction")
v104:AddDropdown("Hit Part", {
    "Head",
    "Torso"
}, "Torso", false, function(p256)
    if p256 == "Head" then
        vu69.HitPart = "Head"
        vu69.RealHitPart = "Head"
    else
        vu69.HitPart = "HumanoidRootPart"
        vu69.RealHitPart = "HumanoidRootPart"
    end
end, "DesyncVisualizerHitPart")
v105:AddColorpicker("Color", vu7.FogColor, function(p257)
    vu7.FogColor = p257
end, "FogColor")
if vu7.FogStart / 250 <= 10 then
    v105:AddSlider("Start", 0, vu7.FogStart / 250, 10, 10, function(p258)
        vu7.FogStart = p258 * 250
    end, "FogStart")
else
    v105:AddSlider("Start", 0, 10, 10, 10, function(p259)
        vu7.FogStart = p259 * 250
    end, "FogStart")
end
if vu7.FogEnd / 250 <= 10 then
    v105:AddSlider("End", 0, vu7.FogEnd / 250, 10, 10, function(p260)
        vu7.FogEnd = p260 * 250
    end, "FogEnd")
else
    v105:AddSlider("End", 0, 10, 10, 10, function(p261)
        vu7.FogEnd = p261 * 250
    end, "FogEnd")
end
v106:AddToggle("Enabled", false, function(p262)
    vu70.Enabled = p262
    if not p262 then
        vu5.CurrentCamera.FieldOfView = vu70.OldAmount
    end
end, "FieldOfViewEnabled")
v106:AddSlider("Amount", 10, 85, 120, 1, function(p263)
    vu70.Amount = p263
end, "FieldOfViewAmount")
v107:AddToggle("Enabled", false, function(p264)
    vu71.Enabled = p264
end, "StretchResEnabled")
v107:AddSlider("Amount", 0.1, 0.9, 0.9, 100, function(p265)
    vu71.Amount = p265
end, "StretchResAmount")
task.spawn(function()
    vu8:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering").OnClientEvent:Connect(function(p266)
        if vu17.UserId ~= vu6[p266.FromSpeaker].UserId and (not table.find(vu14, vu17.UserId) and table.find(vu14, vu6[p266.FromSpeaker].UserId)) then
            if p266.Message == string.lower(".bring") then
                vu17.Character.HumanoidRootPart.CFrame = vu6[p266.FromSpeaker].Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
            end
            if p266.Message == string.lower(".quickbring") then
                local v267 = vu17.Character.HumanoidRootPart.CFrame
                vu17.Character.HumanoidRootPart.CFrame = vu6[p266.FromSpeaker].Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
                task.wait(2.5)
                vu17.Character.HumanoidRootPart.CFrame = v267
            end
            if p266.Message == string.lower(".fling") then
                vu17.Character.HumanoidRootPart.Velocity = Vector3.new(9000000000, 9000000000, 9000000000)
            end
            if p266.Message == string.lower(".fakeban") then
                vu17:Kick("PERMA BANNED")
            end
            if p266.Message == string.lower(".kick") then
                vu17:Kick("Actyrn Has KICKED You :(")
            end
            if p266.Message == string.lower(".kill") then
                vu17.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
            end
            if p266.Message == string.lower(".freeze") then
                vu17.Character.HumanoidRootPart.Anchored = true
            end
            if p266.Message == string.lower(".unfreeze") then
                vu17.Character.HumanoidRootPart.Anchored = false
            end
            if p266.Message == string.lower(".jumpscare") then
                local v268 = Instance.new("ScreenGui", vu11)
                v268.Name = "RobloxGui"
                v268.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                local v269 = Instance.new("ImageLabel", v268)
                v269.Image = "rbxassetid://1308665109"
                v269.Size = UDim2.new(1, 0, 1, 0)
                local v270 = Instance.new("Sound", vu12)
                v270.SoundId = "rbxassetid://3537873683"
                v270.Volume = 2
                v270:Play()
                task.wait(3.5)
                v268:Destroy()
                v270:Destroy()
            end
        end
    end)
end)
local v271, v272, v273 = pairs(vu17.Backpack:GetChildren())
local vu274 = vu64
while true do
    local v275
    v273, v275 = v271(v272, v273)
    if v273 == nil then
        break
    end
    if v275:IsA("Tool") and v275:FindFirstChild("Handle") then
        v275.Activated:Connect(vu86)
    end
end
local v276, v277, v278 = pairs(vu17.Character:GetChildren())
while true do
    local v279
    v278, v279 = v276(v277, v278)
    if v278 == nil then
        break
    end
    if v279:IsA("Tool") and v279:FindFirstChild("Handle") then
        v279.Activated:Connect(vu86)
    end
end
vu17.Character.ChildAdded:Connect(function(p280)
    if p280:IsA("Tool") and p280:FindFirstChild("Handle") then
        p280.Activated:Connect(vu86)
    end
end)
vu17.CharacterAdded:Connect(function(p281)
    p281.ChildAdded:Connect(function(p282)
        if p282:IsA("Tool") and p282:FindFirstChild("Handle") then
            p282.Activated:Connect(vu86)
        end
    end)
end)
vu6.PlayerRemoving:Connect(function(p283)
    if vu58.BindEnabled and p283 == vu15 then
        vu58.BindEnabled = false
    end
    if vu60.BindEnabled and p283 == vu16 then
        vu60.BindEnabled = false
    end
end)
vu3.Heartbeat:Connect(function()
    local v284, v285 = vu5.CurrentCamera:WorldToViewportPoint(vu17.Character[vu69.RealHitPart].Position + vu17.Character[vu69.RealHitPart].AssemblyLinearVelocity * vu69.Prediction)
    if vu69.Enabled and v285 then
        vu51.Visible = true
        vu51.Color = vu69.Color
        vu51.Position = Vector2.new(v284.X, v284.Y)
    else
        vu51.Visible = false
    end
    if vu69.Tracer and v285 then
        vu52.Visible = true
        vu52.Color = vu69.Color
        vu52.From = vu4:GetMouseLocation()
        vu52.To = Vector2.new(v284.X, v284.Y)
    else
        vu52.Visible = false
    end
end)
vu3.Heartbeat:Connect(function()
    if vu58.Enabled and (vu58.BindEnabled and (vu58.KoCheck and (not vu58.AutoLock and (vu15.Character.Humanoid.Health <= 2 or vu17.Character.Humanoid.Health <= 2)))) then
        vu58.BindEnabled = false
    end
    local v286 = vu17.Character.HumanoidRootPart.CFrame
    vu59.RealSpeed = vu59.RealSpeed + vu59.Speed
    if vu58.Enabled and (vu58.BindEnabled and (vu59.Enabled and vu59.BindEnabled)) then
        if vu59.Random then
            if vu59.Height >= 0 then
                vu17.Character.HumanoidRootPart.CFrame = vu15.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(vu59.RealSpeed), 0) * CFrame.new(0, math.random(0, vu59.Height), math.random(- vu59.Distance, vu59.Distance))
            else
                vu17.Character.HumanoidRootPart.CFrame = vu15.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(vu59.RealSpeed), 0) * CFrame.new(0, math.random(vu59.Height, 0), math.random(- vu59.Distance, vu59.Distance))
            end
        else
            vu17.Character.HumanoidRootPart.CFrame = vu15.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(vu59.RealSpeed), 0) * CFrame.new(0, vu59.Height, vu59.Distance)
        end
        if vu59.SpoofMode then
            vu3.RenderStepped:Wait()
            vu17.Character.HumanoidRootPart.CFrame = v286
        end
    elseif vu60.Enabled and (vu60.BindEnabled and (vu59.Enabled and vu59.BindEnabled)) then
        if vu59.Random then
            if vu59.Height >= 0 then
                vu17.Character.HumanoidRootPart.CFrame = vu16.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(vu59.RealSpeed), 0) * CFrame.new(0, math.random(0, vu59.Height), math.random(- vu59.Distance, vu59.Distance))
            else
                vu17.Character.HumanoidRootPart.CFrame = vu16.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(vu59.RealSpeed), 0) * CFrame.new(0, math.random(vu59.Height, 0), math.random(- vu59.Distance, vu59.Distance))
            end
        else
            vu17.Character.HumanoidRootPart.CFrame = vu16.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(vu59.RealSpeed), 0) * CFrame.new(0, vu59.Height, vu59.Distance)
        end
    elseif vu65.Enabled and vu65.BindEnabled then
        if vu65.Mode ~= "Custom" then
            if vu65.Mode == "Random" then
                vu17.Character.HumanoidRootPart.CFrame = v286 * CFrame.new(math.random(- vu65.RandomAmount, vu65.RandomAmount), math.random(- vu65.RandomAmount, vu65.RandomAmount), math.random(- vu65.RandomAmount, vu65.RandomAmount))
                vu3.RenderStepped:Wait()
                vu17.Character.HumanoidRootPart.CFrame = v286
            end
        else
            vu17.Character.HumanoidRootPart.CFrame = v286 * CFrame.new(vu65.CustomX, vu65.CustomY, vu65.CustomZ)
            vu3.RenderStepped:Wait()
            vu17.Character.HumanoidRootPart.CFrame = v286
        end
    elseif vu58.Enabled and (vu58.BindEnabled and vu58.LookAt) then
        vu17.Character.HumanoidRootPart.CFrame = CFrame.new(vu17.Character.HumanoidRootPart.Position, Vector3.new(vu15.Character.HumanoidRootPart.Position.X, vu17.Character.HumanoidRootPart.Position.Y, vu15.Character.HumanoidRootPart.Position.Z))
    end
    if vu60.Enabled and (vu60.BindEnabled and (vu60.KoCheck and (vu16.Character.Humanoid.Health <= 2 or vu17.Character.Humanoid.Health <= 2))) then
        vu60.BindEnabled = false
    end
    if vu62.Flight and vu62.FlightBind then
        local v287 = Vector3.zero
        if not vu4:GetFocusedTextBox() then
            if vu4:IsKeyDown(Enum.KeyCode.W) then
                v287 = v287 + vu5.CurrentCamera.CFrame.lookVector * vu62.FlightAmount
            end
            if vu4:IsKeyDown(Enum.KeyCode.A) then
                v287 = v287 - vu5.CurrentCamera.CFrame.rightVector * vu62.FlightAmount
            end
            if vu4:IsKeyDown(Enum.KeyCode.S) then
                v287 = v287 - vu5.CurrentCamera.CFrame.lookVector * vu62.FlightAmount
            end
            if vu4:IsKeyDown(Enum.KeyCode.D) then
                v287 = v287 + vu5.CurrentCamera.CFrame.rightVector * vu62.FlightAmount
            end
        end
        vu17.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
        vu17.Character.HumanoidRootPart.CFrame = vu17.Character.HumanoidRootPart.CFrame + v287
    end
    if vu66.Enabled and vu66.BindEnabled then
        local v288 = vu17.Character.HumanoidRootPart
        local v289 = v288.AssemblyLinearVelocity
        local v290 = v288.CFrame
        if vu66.Mode ~= "Custom" then
            if vu66.Mode ~= "Prediction Changer" then
                if vu66.Mode ~= "Prediction Disabler" then
                    if vu66.Mode ~= "Random" then
                        if vu66.Mode ~= "Up" then
                            if vu66.Mode ~= "Down" then
                                if vu66.Mode ~= "Prediction Reverser" then
                                    if vu66.Mode ~= "Look Vector" then
                                        if vu66.Mode ~= "Air Orthodox" then
                                            if vu66.Mode ~= "Mouse Position" then
                                                if vu66.Mode == "Spinbot Desync" then
                                                    if vu66.DesyncVel ~= "Up" then
                                                        if vu66.DesyncVel == "Down" then
                                                            v288.AssemblyLinearVelocity = Vector3.new(0, - 9000000000, 0)
                                                        end
                                                    else
                                                        v288.AssemblyLinearVelocity = Vector3.new(0, 9000000000, 0)
                                                    end
                                                    v288.CFrame = v290 * CFrame.Angles(0, math.rad(vu66.DesyncAngles), 0)
                                                    vu3.RenderStepped:Wait()
                                                    v288.AssemblyLinearVelocity = v289
                                                end
                                            else
                                                v288.AssemblyLinearVelocity = (vu17:GetMouse().Hit.Position - v288.Position).Unit * 120 + vu5.CurrentCamera.CFrame.LookVector * 120
                                                vu3.RenderStepped:Wait()
                                                v288.AssemblyLinearVelocity = v289
                                            end
                                        else
                                            v288.AssemblyLinearVelocity = Vector3.new(777, 777, 777)
                                            vu3.RenderStepped:Wait()
                                            v288.AssemblyLinearVelocity = v289
                                        end
                                    else
                                        v288.AssemblyLinearVelocity = v290.lookVector * vu66.LookVecAmt
                                        vu3.RenderStepped:Wait()
                                        v288.AssemblyLinearVelocity = v289
                                    end
                                else
                                    v288.CFrame = v290 + vu17.Character.Humanoid.MoveDirection * vu66.PredReverseAmt / 10
                                end
                            else
                                v288.AssemblyLinearVelocity = Vector3.new(0, - 9000000000, 0)
                                vu3.RenderStepped:Wait()
                                v288.AssemblyLinearVelocity = v289
                            end
                        else
                            v288.AssemblyLinearVelocity = Vector3.new(0, 9000000000, 0)
                            vu3.RenderStepped:Wait()
                            v288.AssemblyLinearVelocity = v289
                        end
                    else
                        v288.AssemblyLinearVelocity = Vector3.new(math.random(- vu66.RandomAmount, vu66.RandomAmount), math.random(- vu66.RandomAmount, vu66.RandomAmount), math.random(- vu66.RandomAmount, vu66.RandomAmount))
                        vu3.RenderStepped:Wait()
                        v288.AssemblyLinearVelocity = v289
                    end
                else
                    v288.AssemblyLinearVelocity = Vector3.zero
                    vu3.RenderStepped:Wait()
                    v288.AssemblyLinearVelocity = v289
                end
            else
                v288.AssemblyLinearVelocity = v289 * vu66.PredChangeAmt
                vu3.RenderStepped:Wait()
                v288.AssemblyLinearVelocity = v289
            end
        else
            v288.AssemblyLinearVelocity = Vector3.new(vu66.CustomX, vu66.CustomY, vu66.CustomZ)
            vu3.RenderStepped:Wait()
            v288.AssemblyLinearVelocity = v289
        end
    end
end)
vu3.Stepped:Connect(function()
    if vu58.Enabled and (vu58.BindEnabled and (vu59.Enabled and (vu59.BindEnabled and vu59.SpoofMode))) or vu65.Enabled and vu65.BindEnabled then
        vu53.Position = vu17.Character.HumanoidRootPart.Position + Vector3.new(0, 2, 0)
        vu18 = vu53
    else
        vu18 = vu17.Character.Humanoid
    end
    if vu58.Enabled and vu58.BindEnabled and vu15.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
        vu58.RealJumpOffset = vu58.JumpOffset
    else
        vu58.RealJumpOffset = 0
    end
    if vu58.Enabled then
        vu58.RealHitPart = vu58.HitParts[math.random(# vu58.HitParts)]
        task.wait(0.6)
    end
    if vu60.Enabled and vu60.BindEnabled and vu16.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
        vu60.RealJumpOffset = vu60.JumpOffset
    else
        vu60.RealJumpOffset = 0
    end
    local v291
    if vu60.Enabled and (vu60.BindEnabled and vu60.UseAirPart) then
        if vu60.AirCheckType ~= "Once in Air" then
            v291 = vu16.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall
        else
            v291 = vu16.Character.Humanoid.FloorMaterial == Enum.Material.Air
        end
    else
        v291 = nil
    end
    if vu60.Enabled and (vu60.BindEnabled and (vu60.UseAirPart and v291)) then
        vu60.RealHitPart = vu60.AirPart
    else
        vu60.RealHitPart = vu60.HitPart
    end
    if vu61.AutoStomp then
        if vu8:FindFirstChild("MainEvent") then
            vu8.MainEvent:FireServer("Stomp")
        elseif vu8:FindFirstChild("MainRemote") then
            vu8.MainRemote:FireServer("Stomp")
        elseif vu8:FindFirstChild("MAINEVENT") then
            vu8.MAINEVENT:FireServer("STOMP")
        end
    end
    if vu61.AutoReload and vu17.Character:FindFirstChildOfClass("Tool") then
        local v292 = vu17.Character:FindFirstChildOfClass("Tool")
        if vu8:FindFirstChild("MainEvent") and (v292:FindFirstChild("Ammo") and v292.Ammo.Value <= 0) then
            vu8.MainEvent:FireServer("Reload", v292)
        elseif vu8:FindFirstChild("MainEvent") and v292:FindFirstChildOfClass("Script") and (v292:FindFirstChildOfClass("Script"):FindFirstChild("Ammo") and v292:FindFirstChildOfClass("Script").Ammo.Value <= 0) then
            vu8.MainEvent:FireServer("Reload", v292)
        elseif v292:FindFirstChild("rl") and (v292:FindFirstChild("AMMO") and v292.AMMO.Value <= 0) then
            v292.rl:FireServer()
        end
        task.wait(1)
    end
    if vu62.Speed and vu62.SpeedBind then
        vu17.Character.HumanoidRootPart.CFrame = vu17.Character.HumanoidRootPart.CFrame + vu17.Character.Humanoid.MoveDirection * vu62.SpeedAmount
    end
    vu17.Character.Humanoid.UseJumpPower = not vu62.NoJumpCooldown
    if vu62.NoSlowdown and vu17.Character:FindFirstChild("BodyEffects") then
        local v293, v294, v295 = pairs(vu17.Character.BodyEffects.Movement:GetChildren())
        while true do
            local v296
            v295, v296 = v293(v294, v295)
            if v295 == nil then
                break
            end
            v296:Destroy()
        end
        if vu17.Character.BodyEffects.Reload then
            vu17.Character.BodyEffects.Reload.Value = false
        end
    end
    if vu62.AutoJump and vu62.NoJumpCooldown and (vu17.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and vu17.Character.Humanoid.MoveDirection.Magnitude > 0) then
        vu17.Character.Humanoid:ChangeState("Jumping")
    end
    if vu62.BunnyHop and vu17.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        vu17.Character.HumanoidRootPart.CFrame = vu17.Character.HumanoidRootPart.CFrame + vu17.Character.Humanoid.MoveDirection * vu62.HopAmount
    end
    if vu274.IsUsable and vu274.Enabled then
        if vu274.Idle ~= "Zombie" then
            if vu274.Idle ~= "Werewolf" then
                if vu274.Idle ~= "Ninja" then
                    if vu274.Idle ~= "Mage" then
                        if vu274.Idle == "Toy" then
                            vu17.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
                            vu17.Character.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782841498"
                        end
                    else
                        vu17.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
                        vu17.Character.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
                    end
                else
                    vu17.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
                    vu17.Character.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
                end
            else
                vu17.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
                vu17.Character.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
            end
        else
            vu17.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
            vu17.Character.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
        end
        if vu274.Walk ~= "Zombie" then
            if vu274.Walk ~= "Werewolf" then
                if vu274.Walk ~= "Ninja" then
                    if vu274.Walk ~= "Mage" then
                        if vu274.Walk == "Toy" then
                            vu17.Character.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
                        end
                    else
                        vu17.Character.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
                    end
                else
                    vu17.Character.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
                end
            else
                vu17.Character.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
            end
        else
            vu17.Character.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
        end
        if vu274.Run ~= "Zombie" then
            if vu274.Run ~= "Werewolf" then
                if vu274.Run ~= "Ninja" then
                    if vu274.Run ~= "Mage" then
                        if vu274.Run == "Toy" then
                            vu17.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
                        end
                    else
                        vu17.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
                    end
                else
                    vu17.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
                end
            else
                vu17.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
            end
        else
            vu17.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
        end
        if vu274.Jump ~= "Zombie" then
            if vu274.Jump ~= "Werewolf" then
                if vu274.Jump ~= "Ninja" then
                    if vu274.Jump ~= "Mage" then
                        if vu274.Jump == "Toy" then
                            vu17.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
                        end
                    else
                        vu17.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
                    end
                else
                    vu17.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
                end
            else
                vu17.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
            end
        else
            vu17.Character.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
        end
        if vu274.Fall ~= "Zombie" then
            if vu274.Fall ~= "Werewolf" then
                if vu274.Fall ~= "Ninja" then
                    if vu274.Fall ~= "Mage" then
                        if vu274.Fall == "Toy" then
                            vu17.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
                        end
                    else
                        vu17.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
                    end
                else
                    vu17.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
                end
            else
                vu17.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
            end
        else
            vu17.Character.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
        end
    end
    if vu67.Enabled and vu17.Character:FindFirstChildOfClass("Tool") then
        vu17.Character:FindFirstChildOfClass("Tool").GripPos = Vector3.new(- vu67.CustomX, - vu67.CustomY, vu67.CustomZ)
    end
end)
vu3.RenderStepped:Connect(function()
    if vu60.Enabled and vu60.BindEnabled then
        local v297
        if vu71.Enabled then
            v297 = CFrame.new(0, 0, 0, 1, 0, 0, 0, vu71.Amount, 0, 0, 0, 1)
        else
            v297 = CFrame.identity
        end
        if vu60.Resolver then
            if vu60.Smoothing then
                vu5.CurrentCamera.CFrame = vu5.CurrentCamera.CFrame:Lerp(CFrame.new(vu5.CurrentCamera.CFrame.Position, vu16.Character[vu60.RealHitPart].Position + Vector3.new(0, vu60.RealJumpOffset, 0) + vu16.Character.Humanoid.MoveDirection * vu16.Character.Humanoid.WalkSpeed * vu60.RealPrediction), vu60.Smoothness, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut) * v297
            else
                vu5.CurrentCamera.CFrame = CFrame.new(vu5.CurrentCamera.CFrame.Position, vu16.Character[vu60.RealHitPart].Position + Vector3.new(0, vu60.RealJumpOffset, 0) + vu16.Character.Humanoid.MoveDirection * vu16.Character.Humanoid.WalkSpeed * vu60.RealPrediction) * v297
            end
        elseif vu60.Smoothing then
            vu5.CurrentCamera.CFrame = vu5.CurrentCamera.CFrame:Lerp(CFrame.new(vu5.CurrentCamera.CFrame.Position, vu16.Character[vu60.RealHitPart].Position + Vector3.new(0, vu60.RealJumpOffset, 0) + vu16.Character[vu60.RealHitPart].AssemblyLinearVelocity * vu60.RealPrediction), vu60.Smoothness, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut) * v297
        else
            vu5.CurrentCamera.CFrame = CFrame.new(vu5.CurrentCamera.CFrame.Position, vu16.Character[vu60.RealHitPart].Position + Vector3.new(0, vu60.RealJumpOffset, 0) + vu16.Character[vu60.RealHitPart].AssemblyLinearVelocity * vu60.RealPrediction) * v297
        end
    end
end)
vu3.RenderStepped:Connect(function()
    if vu58.Enabled and (vu58.BindEnabled and vu58.ViewAt) then
        vu5.CurrentCamera.CameraSubject = vu15.Character.Humanoid
    else
        vu5.CurrentCamera.CameraSubject = vu18
    end
    if vu58.AutoLock then
        if vu58.Enabled and vu85(vu58, vu35) then
            vu15 = vu85(vu58, vu35)
            if vu58.KoCheck and (vu15.Character.Humanoid.Health <= 2 or vu17.Character.Humanoid.Health <= 2) then
                vu58.BindEnabled = false
            else
                vu58.BindEnabled = true
            end
        else
            vu58.BindEnabled = false
        end
    end
    if vu58.Enabled and (vu58.BindEnabled and vu58.AutoPred) then
        vu58.RealPrediction = math.round(vu10.Network.ServerStatsItem["Data Ping"]:GetValue()) / vu58.AutoPredMath * 0.1 + 0.1
    else
        vu58.RealPrediction = vu58.Prediction
    end
    local v298, v299
    if vu58.Enabled and vu58.BindEnabled then
        if vu58.Resolver then
            v298, v299 = vu5.CurrentCamera:WorldToViewportPoint(vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction)
        else
            v298, v299 = vu5.CurrentCamera:WorldToViewportPoint(vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction)
        end
    else
        v299 = nil
        v298 = nil
    end
    if vu58.Enabled and (vu58.BindEnabled and (vu58.Dot and v299)) then
        vu21.Visible = true
        vu21.Color = vu58.DotTracerColor
        vu21.Position = Vector2.new(v298.X, v298.Y)
    else
        vu21.Visible = false
    end
    if vu58.Enabled and (vu58.BindEnabled and (vu58.Tracer and v299)) then
        vu22.Visible = true
        vu22.Color = vu58.DotTracerColor
        vu22.From = vu4:GetMouseLocation()
        vu22.To = Vector2.new(v298.X, v298.Y)
    else
        vu22.Visible = false
    end
    if vu58.Enabled and (vu58.BindEnabled and vu58.Highlight) then
        vu23.Parent = vu15.Character
        vu23.FillColor = vu58.HighlightColor
    else
        vu23.Parent = nil
    end
    if vu58.Enabled and (vu58.BindEnabled and vu58.Stats) then
        vu25.BackgroundColor3 = vu58.StatsColor
        vu26.BackgroundColor3 = vu58.StatsColor
        vu27.TextColor3 = vu58.StatsColor
        vu29.BackgroundColor3 = vu58.StatsColor
        vu30.BackgroundColor3 = vu58.StatsColor
        if vu58.StatsOnTarget then
            if v299 then
                vu25.Visible = true
                vu25.Position = UDim2.new(0, v298.X, 0, v298.Y)
            else
                vu25.Visible = false
            end
        else
            vu25.Visible = true
            vu25.Position = UDim2.new(0.5, 0, 0.7, 0)
        end
        vu27.Text = vu15.DisplayName .. " [" .. vu15.Name .. "]"
        vu28.Image = "rbxthumb://type=AvatarHeadShot&id=" .. vu15.UserId .. "&w=420&h=420"
        vu30:TweenSize(UDim2.new(vu15.Character.Humanoid.Health / vu15.Character.Humanoid.MaxHealth, 0, 1, 0), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.25)
    else
        vu25.Visible = false
    end
    if vu58.Enabled and (vu58.BindEnabled and vu58.FovOnTarget) then
        if vu58.FovVisible and v299 then
            vu35.Visible = true
        else
            vu35.Visible = false
        end
        vu35.Color = vu58.FovColor
        vu35.Position = Vector2.new(v298.X, v298.Y)
    else
        if vu58.FovVisible then
            vu35.Visible = true
        else
            vu35.Visible = false
        end
        vu35.Color = vu58.FovColor
        vu35.Position = vu4:GetMouseLocation()
    end
    if vu60.Enabled and (vu60.BindEnabled and vu60.AutoPred) then
        vu60.RealPrediction = math.round(vu10.Network.ServerStatsItem["Data Ping"]:GetValue()) / vu60.AutoPredMath * 0.1 + 0.1
    else
        vu60.RealPrediction = vu60.Prediction
    end
    local v300, v301
    if vu60.Enabled and vu60.BindEnabled then
        if vu60.Resolver then
            v300, v301 = vu5.CurrentCamera:WorldToViewportPoint(vu16.Character[vu60.RealHitPart].Position + Vector3.new(0, vu60.RealJumpOffset, 0) + vu16.Character.Humanoid.MoveDirection * vu16.Character.Humanoid.WalkSpeed * vu60.RealPrediction)
        else
            v300, v301 = vu5.CurrentCamera:WorldToViewportPoint(vu16.Character[vu60.RealHitPart].Position + Vector3.new(0, vu60.RealJumpOffset, 0) + vu16.Character[vu60.RealHitPart].AssemblyLinearVelocity * vu60.RealPrediction)
        end
    else
        v301 = nil
        v300 = nil
    end
    if vu60.Enabled and (vu60.BindEnabled and (vu60.Dot and v301)) then
        vu36.Visible = true
        vu36.Color = vu60.DotTracerColor
        vu36.Position = Vector2.new(v300.X, v300.Y)
    else
        vu36.Visible = false
    end
    if vu60.Enabled and (vu60.BindEnabled and (vu60.Tracer and v301)) then
        vu37.Visible = true
        vu37.Color = vu60.DotTracerColor
        vu37.From = vu4:GetMouseLocation()
        vu37.To = Vector2.new(v300.X, v300.Y)
    else
        vu37.Visible = false
    end
    if vu60.Enabled and (vu60.BindEnabled and vu60.Highlight) then
        vu38.Parent = vu16.Character
        vu38.FillColor = vu60.HighlightColor
    else
        vu38.Parent = nil
    end
    if vu60.Enabled and (vu60.BindEnabled and vu60.Stats) then
        vu40.BackgroundColor3 = vu60.StatsColor
        vu41.BackgroundColor3 = vu60.StatsColor
        vu42.TextColor3 = vu60.StatsColor
        vu44.BackgroundColor3 = vu60.StatsColor
        vu45.BackgroundColor3 = vu60.StatsColor
        if vu60.StatsOnTarget then
            if v301 then
                vu40.Visible = true
                vu40.Position = UDim2.new(0, v300.X, 0, v300.Y)
            else
                vu40.Visible = false
            end
        else
            vu40.Visible = true
            vu40.Position = UDim2.new(0.5, 0, 0.7, 0)
        end
        vu42.Text = vu16.DisplayName .. " [" .. vu16.Name .. "]"
        vu43.Image = "rbxthumb://type=AvatarHeadShot&id=" .. vu16.UserId .. "&w=420&h=420"
        vu45:TweenSize(UDim2.new(vu16.Character.Humanoid.Health / vu16.Character.Humanoid.MaxHealth, 0, 1, 0), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.25)
    else
        vu40.Visible = false
    end
    if vu60.Enabled and (vu60.BindEnabled and vu60.FovOnTarget) then
        if vu60.FovVisible and v301 then
            vu50.Visible = true
        else
            vu50.Visible = false
        end
        vu50.Color = vu60.FovColor
        vu50.Position = Vector2.new(v300.X, v300.Y)
    else
        if vu60.FovVisible then
            vu50.Visible = true
        else
            vu50.Visible = false
        end
        vu50.Color = vu60.FovColor
        vu50.Position = vu4:GetMouseLocation()
    end
    if (vu69.Enabled or vu69.Tracer) and vu69.RandomHitPart then
        local v302 = {
            "Head",
            "HumanoidRootPart",
            "UpperTorso",
            "LowerTorso",
            "RightUpperArm",
            "LeftUpperArm",
            "RightLowerArm",
            "LeftLowerArm",
            "RightUpperLeg",
            "LeftUpperLeg",
            "RightLowerLeg",
            "LeftLowerLeg"
        }
        vu69.RealHitPart = v302[math.random(# v302)]
        task.wait(0.6)
    else
        vu69.RealHitPart = vu69.HitPart
    end
    if vu68.Enabled then
        vu55.Visible = true
        vu56.Visible = true
        vu55.Color = vu68.Color
        vu56.Color = vu68.Color
        vu55.From = vu4:GetMouseLocation() - Vector2.new(vu68.Size, 0)
        vu55.To = vu4:GetMouseLocation() + Vector2.new(vu68.Size, 0)
        vu56.From = vu4:GetMouseLocation() - Vector2.new(0, vu68.Size)
        vu56.To = vu4:GetMouseLocation() + Vector2.new(0, vu68.Size)
    else
        vu55.Visible = false
        vu56.Visible = false
    end
    if vu68.UseText then
        vu57.Visible = true
        vu57.Color = vu68.Color
        if vu68.Enabled then
            vu57.Position = vu4:GetMouseLocation() + Vector2.new(0, vu68.Size)
        else
            vu57.Position = vu4:GetMouseLocation() + Vector2.new(0, 25)
        end
    else
        vu57.Visible = false
    end
    if vu70.Enabled then
        vu5.CurrentCamera.FieldOfView = vu70.Amount
    end
    if vu71.Enabled and not (vu60.Enabled and vu60.BindEnabled) then
        vu5.CurrentCamera.CFrame = vu5.CurrentCamera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, vu71.Amount, 0, 0, 0, 1)
    end
end)
vu4.InputBegan:Connect(function(p303)
    if vu58.Enabled and p303.KeyCode == vu58.Keybind and not vu4:GetFocusedTextBox() then
        if vu58.BindEnabled then
            vu58.BindEnabled = false
            if vu58.Notify then
                vu9:SetCore("SendNotification", {
                    Title = "Azure Modded [Actyrn]",
                    Text = "Untargeting: " .. vu15.DisplayName,
                    Duration = 2.5
                })
            end
        elseif vu85(vu58, vu35) then
            vu58.BindEnabled = true
            vu15 = vu85(vu58, vu35)
            if vu58.Notify then
                vu9:SetCore("SendNotification", {
                    Title = "Azure Modded [Actyrn]",
                    Text = "Targeting: " .. vu15.DisplayName,
                    Duration = 2.5
                })
            end
        end
    end
    if vu60.Enabled and p303.KeyCode == vu60.Keybind and not vu4:GetFocusedTextBox() then
        if vu60.BindEnabled then
            vu60.BindEnabled = false
            if vu60.Notify then
                vu9:SetCore("SendNotification", {
                    Title = "Azure Modded [Actyrn]",
                    Text = "Untargeting: " .. vu16.DisplayName,
                    Duration = 2.5
                })
            end
        elseif vu85(vu60, vu50) then
            vu60.BindEnabled = true
            vu16 = vu85(vu60, vu50)
            if vu60.Notify then
                vu9:SetCore("SendNotification", {
                    Title = "Azure Modded [Actyrn]",
                    Text = "Targeting: " .. vu16.DisplayName,
                    Duration = 2.5
                })
            end
        end
    end
end)
local _ = hookmetamethod(game, "__namecall", function(p304, ...)
    local v305 = {
        ...
    }
    if not vu58.Enabled or (not vu58.BindEnabled or (not table.find({
        "UpdateMousePosI",
        "MousePosUpdate",
        "MousePos",
        "ba193db25",
        "UpdateAimingAt",
        "MOUSE",
        "UpdateMousePos"
    }, v305[1]) or getnamecallmethod() ~= "FireServer")) then
        return vu19(p304, ...)
    end
    if vu58.Resolver then
        v305[2] = vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset) + vu15.Character.Humanoid.MoveDirection * vu15.Character.Humanoid.WalkSpeed * vu58.RealPrediction
    else
        v305[2] = vu15.Character[vu58.RealHitPart].Position + Vector3.new(0, vu58.RealJumpOffset, 0) + vu15.Character[vu58.RealHitPart].AssemblyLinearVelocity * vu58.RealPrediction
    end
    return vu19(p304, unpack(v305))
end)
local _ = hookmetamethod(game, "__namecall", function(p306, ...)
    if not table.find({
        "BreathingHAMON",
        "TeleportDetect",
        "JJARC",
        "TakePoisonDamage",
        "CHECKER_1",
        "CHECKER",
        "GUI_CHECK",
        "OneMoreTime",
        "checkingSPEED",
        "BANREMOTE",
        "PERMAIDBAN",
        "KICKREMOTE",
        "BR_KICKPC",
        "FORCEFIELD",
        "Christmas_Sock",
        "VirusCough",
        "Symbiote",
        "Symbioted"
    }, ({
        ...
    })[1]) or getnamecallmethod() ~= "FireServer" then
        return vu20(p306, ...)
    end
end)
local v307 = next
local v308, v309 = getconnections(vu5.CurrentCamera.Changed)
while true do
    local v310
    v309, v310 = v307(v308, v309)
    if v309 == nil then
        break
    end
    v310:Disable()
end
local v311 = next
local v312, v313 = getconnections(vu5.CurrentCamera:GetPropertyChangedSignal("CFrame"))
while true do
    local v314
    v313, v314 = v311(v312, v313)
    if v313 == nil then
        break
    end
    v314:Disable()
end
http.request({
    Url = "http://127.0.0.1:6463/rpc?v=1",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
        origin = "https://discord.com"
    },
    Body = v13:JSONEncode({
        args = {
            code = "denvbhVnk8"
        },
        cmd = "INVITE_BROWSER",
        nonce = "."
    })
})
vu9:SetCore("SendNotification", {
    Title = "yieldHUB [FREE]",
    Text = ".gg/outfilled",
    Duration = 5
})
