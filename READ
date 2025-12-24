local FluentRedz = loadstring(game:HttpGet("https://raw.githubusercontent.com/thieengw9990/Libary/refs/heads/main/libary%20test"))()

local window = FluentRedz:CreateWindow("My Awesome UI", {
    Theme = "Dark",  -- "Dark" Or "Light"
    Width = 500,     -- Setting
    Height = 400     -- Setting
})

-- Tạo các tab
local mainTab = window:CreateTab("Main", nil)
local playerTab = window:CreateTab("Player", nil)
local settingsTab = window:CreateTab("Settings", nil)

-- Thêm controls vào tab chính
local button = FluentRedz:CreateButton(mainTab, {
    Title = "Teleport to Base",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 10, 0)
        FluentRedz:Notify({
            Title = "Teleported!",
            Message = "You have been teleported to base.",
            Type = "Success"
        })
    end
})

local toggle = FluentRedz:CreateToggle(mainTab, {
    Title = "God Mode",
    Default = false,
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.Health = value and math.huge or 100
    end
})

local slider = FluentRedz:CreateSlider(mainTab, {
    Title = "Walk Speed",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
})

-- Dropdown với tìm kiếm tích hợp
local dropdown = FluentRedz:CreateDropdown(mainTab, {
    Title = "Select Weapon",
    Options = {
        {Text = "Sword", Value = "sword"},
        {Text = "Gun", Value = "gun"},
        {Text = "Bow", Value = "bow"},
        {Text = "Staff", Value = "staff"}
    },
    Default = "sword",
    Callback = function(value)
        print("Selected weapon:", value)
    end
})

-- Keybind để toggle UI
local keybind = FluentRedz:CreateKeybind(mainTab, {
    Title = "Toggle UI",
    Default = Enum.KeyCode.RightControl,
    Callback = function(key)
        window:ToggleVisibility()
    end
})

-- Color picker
local colorPicker = FluentRedz:CreateColorPicker(mainTab, {
    Title = "ESP Color",
    Default = Color3.new(1, 0, 0),
    Callback = function(color)
        print("Selected color:", color)
    end
})

-- Thêm label và divider
FluentRedz:CreateLabel(mainTab, {
    Text = "Player Settings",
    TextSize = 16,
    Bold = true
})

FluentRedz:CreateDivider(mainTab, {
    Thickness = 2,
    Color = Color3.new(0.5, 0.5, 0.5)
})

-- Tooltip cho button
FluentRedz:CreateTooltip(button._control.Instance, {
    Title = "Teleport Button",
    Text = "Click this button to teleport to the spawn point."
})

-- Sử dụng tính năng tìm kiếm (tích hợp sẵn trong mỗi tab)
-- Chỉ cần gõ vào ô search ở đầu mỗi tab để lọc controls

-- Dialog example
FluentRedz:CreateButton(mainTab, {
    Title = "Show Dialog",
    Style = "Warning",
    Callback = function()
        FluentRedz:Confirm({
            Title = "Reset Settings",
            Message = "Are you sure you want to reset all settings?",
            Callback = function(confirmed)
                if confirmed then
                    FluentRedz:Notify({
                        Title = "Settings Reset",
                        Message = "All settings have been reset to default.",
                        Type = "Success"
                    })
                end
            end
        })
    end
})

-- Theme editor
FluentRedz:CreateButton(settingsTab, {
    Title = "Open Theme Editor",
    Callback = function()
        FluentRedz:OpenThemeEditor()
    end
})

-- Performance monitoring
FluentRedz:CreateButton(settingsTab, {
    Title = "Show Stats",
    Callback = function()
        local stats = FluentRedz:GetPerformanceStats()
        FluentRedz:Notify({
            Title = "Performance Stats",
            Message = string.format("FPS: %d\nMemory: %d KB\nWindows: %d", 
                stats.FPS, stats.Memory, stats.Windows),
            Type = "Info"
        })
    end
})
