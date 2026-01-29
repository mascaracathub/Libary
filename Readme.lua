-- Example usage of NameHub GUI Library
-- Tạo bởi: ower

local NameHub = loadstring(game:HttpGet("https://raw.githubusercontent.com/your-username/NameHub-GUI/main/NameHub.lua"))()

-- Tạo window
local Window = NameHub:Window({
    Title = "Name Hub | By ower",
    Size = UDim2.new(0, 600, 0, 450)
})

-- Tab 1: Main
local MainTab = Window:Tab("Main")

-- Search Box
local Search = Window:SearchBox(MainTab.Elements.ScrollFrame, "Search tabs...")
Search.OnSearch(function(text)
    print("Searching for:", text)
    -- Thêm logic tìm kiếm của bạn ở đây
end)

-- Button
Window:Button(MainTab.Elements.ScrollFrame, "Execute Script", function()
    print("Button clicked!")
    -- Thêm chức năng của bạn ở đây
end)

-- Toggle
Window:Toggle(MainTab.Elements.ScrollFrame, "Enable Feature", false, function(state)
    print("Toggle state:", state)
end)

-- Tab 2: Settings
local SettingsTab = Window:Tab("Settings")

-- Dropdown
Window:Dropdown(SettingsTab.Elements.ScrollFrame, "Select Option", {"Option 1", "Option 2", "Option 3"}, "Option 1", function(selection)
    print("Selected:", selection)
end)

-- Slider (X - thanh kéo)
Window:Slider(SettingsTab.Elements.ScrollFrame, "Volume", 1, 10, 5, function(value)
    print("Volume set to:", value)
end)

-- Thêm nhiều tab khác
Window:Tab("Tab 3")
Window:Tab("Tab 4")
Window:Tab("Tab 5")
Window:Tab("Tab 6")
Window:Tab("Tab 7")
Window:Tab("Tab 8")

-- Hiển thị GUI
Window:Show()

-- Tạo toggle key (ví dụ: F5)
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == Enum.KeyCode.F5 then
        Window:Toggle()
    end
end)
