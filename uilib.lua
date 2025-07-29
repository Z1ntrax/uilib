-- ===================================================================
-- 🌟 Obsidian UI Library - Enhanced Modern Example
-- Original by: https://github.com/mstudio45/LinoriaLib & modified by deivid
-- Enhanced with modern UI components and stunning visual effects
-- ===================================================================

-- 📦 Library Loading
local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

-- 🌐 Global Variables
local Options = Library.Options
local Toggles = Library.Toggles

-- ⚙️ Enhanced Library Configuration
Library.ForceCheckbox = false
Library.ShowToggleFrameInKeybinds = true

-- 🎮 Game Services (for enhanced functionality)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

-- 🖼️ Create Main Window with Enhanced Modern Styling
local Window = Library:CreateWindow({
	Title = "🌟 Obsidian UI - Modern Design",
	Footer = "v3.0 Enhanced | Powered by Modern UI ✨",
	Icon = 95816097006870,
	NotifySide = "Right",
	ShowCustomCursor = true,
	Center = true,
	AutoShow = true,
	Resizable = true,
})

-- 🎨 Welcome notification with modern styling
Library:Notify({
	Title = "🎉 Welcome to Obsidian UI!",
	Description = "Experience the enhanced modern interface with improved animations and visual effects.",
	Time = 5,
})

-- 📋 Enhanced Tab System with Beautiful Icons
local Tabs = {
	Main = Window:AddTab("🏠 Home", "home"),
	Features = Window:AddTab("🚀 Features", "star"),
	Visuals = Window:AddTab("🎨 Visuals", "palette"),
	Player = Window:AddTab("👤 Player", "user"),
	Key = Window:AddKeyTab("🔐 Key System"),
	Settings = Window:AddTab("⚙️ Settings", "settings"),
}

-- 🏠 HOME TAB - Enhanced Welcome Section
local WelcomeGroup = Tabs.Main:AddLeftGroupbox("🌟 Welcome to Enhanced Obsidian", "sparkles")

WelcomeGroup:AddLabel("Welcome to the enhanced version of Obsidian UI!")
WelcomeGroup:AddLabel("This example showcases modern design improvements including:")
WelcomeGroup:AddLabel("• Enhanced color schemes with gradients")
WelcomeGroup:AddLabel("• Improved animations and transitions")
WelcomeGroup:AddLabel("• Modern toggle switches with glow effects")
WelcomeGroup:AddLabel("• Better button styling with rounded corners")
WelcomeGroup:AddLabel("• Enhanced visual feedback")

WelcomeGroup:AddDivider()

WelcomeGroup:AddButton({
	Text = "🎉 Show Welcome Message",
	Func = function()
		Library:Notify({
			Title = "✨ Enhanced UI Features",
			Description = "This UI includes modern design elements like improved colors, better animations, and enhanced visual effects!",
			Time = 4,
		})
	end,
	Tooltip = "Click to see a demonstration of the enhanced notification system",
})

-- 🎮 Enhanced Toggle Examples
local ModernTogglesGroup = Tabs.Main:AddRightGroupbox("🎛️ Modern Toggles", "toggle-left")

ModernTogglesGroup:AddToggle("EnhancedToggle1", {
	Text = "✨ Enhanced Toggle with Glow",
	Tooltip = "This toggle now features a modern glow effect when enabled",
	Default = false,
	Callback = function(Value)
		if Value then
			Library:Notify("🌟 Glow Effect Active!", 2)
		else
			Library:Notify("💤 Glow Effect Disabled", 2)
		end
	end,
})

ModernTogglesGroup:AddToggle("EnhancedToggle2", {
	Text = "🎨 Modern Switch Design",
	Tooltip = "Notice the improved switch design with better proportions",
	Default = true,
	Callback = function(Value)
		print("Modern switch toggled:", Value)
	end,
})

ModernTogglesGroup:AddToggle("RiskyToggle", {
	Text = "⚠️ Risky Action",
	Tooltip = "This toggle has enhanced gradient styling for risky actions",
	Risky = true,
	Default = false,
	Callback = function(Value)
		if Value then
			Library:Notify({
				Title = "⚠️ Warning",
				Description = "Risky action has been enabled! Notice the enhanced visual styling.",
				Time = 3,
			})
		end
	end,
})

-- 🚀 FEATURES TAB - Enhanced Components
local AdvancedGroup = Tabs.Features:AddLeftGroupbox("🔧 Enhanced Components", "wrench")

AdvancedGroup:AddSlider("ModernSlider", {
	Text = "🎚️ Enhanced Slider",
	Default = 50,
	Min = 0,
	Max = 100,
	Rounding = 1,
	Suffix = "%",
	Tooltip = "Sliders now have better visual feedback and smoother animations",
	Callback = function(Value)
		if Value > 80 then
			Library:Notify("🔥 High Value Set: " .. Value .. "%", 2)
		end
	end,
})

AdvancedGroup:AddInput("ModernTextbox", {
	Default = "Type something awesome...",
	Text = "💬 Enhanced Input Field",
	Tooltip = "Input fields now have better styling and visual feedback",
	Placeholder = "Enter your text here...",
	ClearTextOnFocus = true,
	Callback = function(Value)
		if Value:lower():find("obsidian") then
			Library:Notify("🌟 You mentioned Obsidian!", 3)
		end
	end,
})

AdvancedGroup:AddDropdown("ModernDropdown", {
	Values = {"🎮 Gaming Mode", "🎨 Creative Mode", "⚡ Performance Mode", "🌙 Night Mode", "☀️ Day Mode"},
	Default = 1,
	Text = "🎯 Enhanced Dropdown",
	Tooltip = "Dropdowns now feature better styling and icons",
	Callback = function(Value)
		Library:Notify("Mode Selected: " .. Value, 2)
	end,
})

-- 🎨 Enhanced Button Examples
local ButtonGroup = Tabs.Features:AddRightGroupbox("🔘 Modern Buttons", "mouse-pointer")

ButtonGroup:AddButton({
	Text = "🎆 Primary Action",
	Func = function()
		Library:Notify({
			Title = "🎆 Primary Action",
			Description = "Notice the enhanced button styling with rounded corners!",
			Time = 3,
		})
	end,
	Tooltip = "Enhanced button with modern styling",
})

ButtonGroup:AddButton({
	Text = "⚠️ Dangerous Action",
	Func = function()
		Library:Notify({
			Title = "⚠️ Dangerous Action",
			Description = "This button features gradient styling for dangerous actions!",
			Time = 3,
		})
	end,
	Risky = true,
	DoubleClick = true,
	Tooltip = "Double-click required for safety. Notice the gradient effect!",
})

ButtonGroup:AddButton({
	Text = "🔒 Disabled Action",
	Func = function()
		print("This shouldn't execute")
	end,
	Disabled = true,
	Tooltip = "This button is disabled",
	DisabledTooltip = "This action is currently unavailable",
})

-- 🎨 VISUALS TAB - Color and Theme Examples
local ColorGroup = Tabs.Visuals:AddLeftGroupbox("🌈 Enhanced Colors", "palette")

ColorGroup:AddLabel("🎨 Enhanced Color System"):AddColorPicker("PrimaryColor", {
	Default = Color3.fromRGB(138, 93, 255),
	Title = "Primary Theme Color",
	Transparency = 0,
	Callback = function(Value)
		Library:Notify("🎨 Color Updated: " .. tostring(Value), 2)
	end,
})

ColorGroup:AddLabel("✨ Accent Color"):AddColorPicker("AccentColor", {
	Default = Color3.fromRGB(185, 85, 255),
	Title = "Accent Color",
	Transparency = 0.5,
	Callback = function(Value)
		print("Accent color changed:", Value)
	end,
})

-- 🎭 Theme Showcase
local ThemeGroup = Tabs.Visuals:AddRightGroupbox("🎭 Theme Showcase", "brush")

ThemeGroup:AddLabel("The enhanced color scheme includes:")
ThemeGroup:AddLabel("• 🌙 Deeper background colors")
ThemeGroup:AddLabel("• 🎨 Improved accent colors")
ThemeGroup:AddLabel("• ✨ Gradient effects for special elements")
ThemeGroup:AddLabel("• 🌟 Glow effects for active states")
ThemeGroup:AddLabel("• 🎯 Better contrast and readability")

ThemeGroup:AddButton({
	Text = "🎨 Preview Theme Colors",
	Func = function()
		Library:Notify({
			Title = "🎨 Enhanced Theme System",
			Description = "The new color scheme provides better visual hierarchy and modern aesthetics!",
			Time = 4,
		})
	end,
})

-- 👤 PLAYER TAB - Game Integration Examples
local PlayerGroup = Tabs.Player:AddLeftGroupbox("👤 Player Features", "user")

PlayerGroup:AddToggle("PlayerESP", {
	Text = "👁️ Player ESP",
	Tooltip = "Enhanced ESP with modern visual indicators",
	Default = false,
	Callback = function(Value)
		if Value then
			Library:Notify("👁️ ESP Enabled with enhanced visuals!", 3)
		else
			Library:Notify("👁️ ESP Disabled", 2)
		end
	end,
})

PlayerGroup:AddSlider("WalkSpeed", {
	Text = "🏃 Walk Speed",
	Default = 16,
	Min = 0,
	Max = 100,
	Rounding = 0,
	Suffix = " studs/s",
	Tooltip = "Adjust player walking speed",
	Callback = function(Value)
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
			LocalPlayer.Character.Humanoid.WalkSpeed = Value
		end
	end,
})

PlayerGroup:AddSlider("JumpPower", {
	Text = "🦘 Jump Power",
	Default = 50,
	Min = 0,
	Max = 200,
	Rounding = 0,
	Suffix = " power",
	Tooltip = "Adjust player jump power",
	Callback = function(Value)
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
			LocalPlayer.Character.Humanoid.JumpPower = Value
		end
	end,
})

-- 🎮 Game Integration Group
local GameGroup = Tabs.Player:AddRightGroupbox("🎮 Game Integration", "gamepad-2")

GameGroup:AddDropdown("PlayerDropdown", {
	SpecialType = "Player",
	ExcludeLocalPlayer = true,
	Text = "🎯 Target Player",
	Tooltip = "Select a player from the server",
	Callback = function(Value)
		Library:Notify("🎯 Player selected: " .. tostring(Value), 2)
	end,
})

GameGroup:AddDropdown("TeamDropdown", {
	SpecialType = "Team",
	Text = "👥 Team Selection",
	Tooltip = "Select a team",
	Callback = function(Value)
		Library:Notify("👥 Team selected: " .. tostring(Value), 2)
	end,
})

-- 🔐 KEY SYSTEM TAB - Enhanced Security
Tabs.Key:AddLabel({
	Text = "🔐 Enhanced Key System",
	DoesWrap = true,
	Size = 18,
})

Tabs.Key:AddLabel("Enter the correct key to unlock features:")

Tabs.Key:AddKeyBox("ObsidianKey", function(Success, ReceivedKey)
	if Success then
		Library:Notify({
			Title = "🎉 Access Granted!",
			Description = "Welcome to the enhanced Obsidian UI system!",
			Time = 4,
		})
	else
		Library:Notify({
			Title = "❌ Access Denied",
			Description = "Incorrect key: " .. ReceivedKey,
			Time = 3,
		})
	end
end)

Tabs.Key:AddLabel("💡 Hint: The key is 'ObsidianKey'")

-- ⚙️ SETTINGS TAB - Enhanced UI Configuration
local UIGroup = Tabs.Settings:AddLeftGroupbox("🎨 UI Configuration", "palette")

UIGroup:AddToggle("KeybindMenuOpen", {
	Default = Library.KeybindFrame.Visible,
	Text = "⌨️ Show Keybind Menu",
	Tooltip = "Toggle the keybind configuration menu",
	Callback = function(value)
		Library.KeybindFrame.Visible = value
	end,
})

UIGroup:AddToggle("ShowCustomCursor", {
	Text = "🖱️ Custom Cursor",
	Default = true,
	Tooltip = "Enable the custom Obsidian cursor",
	Callback = function(Value)
		Library.ShowCustomCursor = Value
	end,
})

UIGroup:AddDropdown("NotificationSide", {
	Values = {"Left", "Right"},
	Default = "Right",
	Text = "📱 Notification Position",
	Tooltip = "Choose which side notifications appear on",
	Callback = function(Value)
		Library:SetNotifySide(Value)
		Library:Notify("📱 Notifications moved to " .. Value .. " side!", 2)
	end,
})

UIGroup:AddDropdown("DPIDropdown", {
	Values = {"50%", "75%", "100%", "125%", "150%", "175%", "200%"},
	Default = "100%",
	Text = "🔍 UI Scale",
	Tooltip = "Adjust the UI scaling for different screen sizes",
	Callback = function(Value)
		Value = Value:gsub("%%", "")
		local DPI = tonumber(Value)
		Library:SetDPIScale(DPI)
		Library:Notify("🔍 UI scaled to " .. Value .. "%", 2)
	end,
})

UIGroup:AddDivider()

UIGroup:AddLabel("🎮 Menu Controls"):AddKeyPicker("MenuKeybind", {
	Default = "RightShift",
	NoUI = true,
	Text = "Menu toggle key",
	Tooltip = "Key to open/close the menu",
})

UIGroup:AddButton({
	Text = "🗑️ Unload Interface",
	Func = function()
		Library:Notify({
			Title = "👋 Goodbye!",
			Description = "Thanks for using Enhanced Obsidian UI!",
			Time = 3,
		})
		wait(1)
		Library:Unload()
	end,
	Risky = true,
	DoubleClick = true,
	Tooltip = "Completely unload the interface (double-click required)",
})

-- 🎯 Performance Monitoring Group
local PerformanceGroup = Tabs.Settings:AddRightGroupbox("📊 Performance Monitor", "activity")

PerformanceGroup:AddLabel("📊 Real-time Performance Stats")

-- Add a live FPS counter
local FPSLabel = PerformanceGroup:AddLabel("🎮 FPS: Calculating...")
local PingLabel = PerformanceGroup:AddLabel("📡 Ping: Calculating...")

-- Performance monitoring loop
task.spawn(function()
	local lastTick = tick()
	local frameCount = 0
	
	while not Library.Unloaded do
		frameCount = frameCount + 1
		
		if frameCount % 30 == 0 then -- Update every 30 frames
			local currentTick = tick()
			local fps = math.floor(30 / (currentTick - lastTick))
			local ping = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
			
			FPSLabel:SetText("🎮 FPS: " .. fps)
			PingLabel:SetText("📡 Ping: " .. ping .. "ms")
			
			lastTick = currentTick
		end
		
		RunService.Heartbeat:Wait()
	end
end)

-- 🎭 Library Event Handlers
Library.ToggleKeybind = Options.MenuKeybind

Library:OnUnload(function()
	print("🌟 Enhanced Obsidian UI has been unloaded!")
end)

-- 🎨 Enhanced Theme and Save Management
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({"MenuKeybind"})

ThemeManager:SetFolder("EnhancedObsidian")
SaveManager:SetFolder("EnhancedObsidian/Configs")

SaveManager:BuildConfigSection(Tabs.Settings)
ThemeManager:ApplyToTab(Tabs.Settings)

-- 🚀 Final Setup
SaveManager:LoadAutoloadConfig()

-- 🎉 Enhanced Welcome Message
wait(1)
Library:Notify({
	Title = "🌟 Setup Complete!",
	Description = "Enhanced Obsidian UI is ready! Explore all the new modern features and improved visual effects.",
	Time = 5,
})

-- CALLBACK NOTE:
-- Passing in callback functions via the initial element parameters (i.e. Callback = function(Value)...) works
-- HOWEVER, using Toggles/Options.INDEX:OnChanged(function(Value) ... ) is the RECOMMENDED way to do this.
-- I strongly recommend decoupling UI code from logic code. i.e. Create your UI elements FIRST, and THEN setup :OnChanged functions later.

-- You do not have to set your tabs & groups up this way, just a prefrence.
-- You can find more icons in https://lucide.dev/
local Tabs = {
	-- Creates a new tab titled Main
	Main = Window:AddTab("Main", "user"),
	Key = Window:AddKeyTab("Key System"),
	["UI Settings"] = Window:AddTab("UI Settings", "settings"),
}


--[[
Example of how to add a warning box to a tab; the title AND text support rich text formatting.

local WarningTab = Tabs["UI Settings"]:AddTab("Warning Box", "user")

WarningTab:UpdateWarningBox({
	Visible = true,
	Title = "Warning",
	Text = "This is a warning box!",
})

]]

-- Groupbox and Tabbox inherit the same functions
-- except Tabboxes you have to call the functions on a tab (Tabbox:AddTab(Name))
local LeftGroupBox = Tabs.Main:AddLeftGroupbox("Groupbox", "boxes")

-- We can also get our Main tab via the following code:
-- local LeftGroupBox = Window.Tabs.Main:AddLeftGroupbox("Groupbox", "boxes")

-- Tabboxes are a tiny bit different, but here's a basic example:
--[[

local TabBox = Tabs.Main:AddLeftTabbox() -- Add Tabbox on left side

local Tab1 = TabBox:AddTab("Tab 1")
local Tab2 = TabBox:AddTab("Tab 2")

-- You can now call AddToggle, etc on the tabs you added to the Tabbox
]]

-- Groupbox:AddToggle
-- Arguments: Index, Options
LeftGroupBox:AddToggle("MyToggle", {
	Text = "This is a toggle",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = true, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(Value)
		print("[cb] MyToggle changed to:", Value)
	end,
})
	:AddColorPicker("ColorPicker1", {
		Default = Color3.new(1, 0, 0),
		Title = "Some color1", -- Optional. Allows you to have a custom color picker title (when you open it)
		Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

		Callback = function(Value)
			print("[cb] Color changed!", Value)
		end,
	})
	:AddColorPicker("ColorPicker2", {
		Default = Color3.new(0, 1, 0),
		Title = "Some color2",

		Callback = function(Value)
			print("[cb] Color changed!", Value)
		end,
	})

-- Fetching a toggle object for later use:
-- Toggles.MyToggle.Value

-- Toggles is a table added to getgenv() by the library
-- You index Toggles with the specified index, in this case it is 'MyToggle'
-- To get the state of the toggle you do toggle.Value

-- Calls the passed function when the toggle is updated
Toggles.MyToggle:OnChanged(function()
	-- here we get our toggle object & then get its value
	print("MyToggle changed to:", Toggles.MyToggle.Value)
end)

-- This should print to the console: "My toggle state changed! New value: false"
Toggles.MyToggle:SetValue(false)

LeftGroupBox:AddCheckbox("MyCheckbox", {
	Text = "This is a checkbox",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the toggle
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the toggle while it's disabled

	Default = true, -- Default value (true / false)
	Disabled = false, -- Will disable the toggle (true / false)
	Visible = true, -- Will make the toggle invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)

	Callback = function(Value)
		print("[cb] MyCheckbox changed to:", Value)
	end,
})

Toggles.MyCheckbox:OnChanged(function()
	print("MyCheckbox changed to:", Toggles.MyCheckbox.Value)
end)

-- 1/15/23
-- Deprecated old way of creating buttons in favor of using a table
-- Added DoubleClick button functionality

--[[
	Groupbox:AddButton
	Arguments: {
		Text = string,
		Func = function,
		DoubleClick = boolean
		Tooltip = string,
	}

	You can call :AddButton on a button to add a SubButton!
]]

local MyButton = LeftGroupBox:AddButton({
	Text = "Button",
	Func = function()
		print("You clicked a button!")
	end,
	DoubleClick = false,

	Tooltip = "This is the main button",
	DisabledTooltip = "I am disabled!",

	Disabled = false, -- Will disable the button (true / false)
	Visible = true, -- Will make the button invisible (true / false)
	Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
})

local MyButton2 = MyButton:AddButton({
	Text = "Sub button",
	Func = function()
		print("You clicked a sub button!")
	end,
	DoubleClick = true, -- You will have to click this button twice to trigger the callback
	Tooltip = "This is the sub button",
	DisabledTooltip = "I am disabled!",
})

local MyDisabledButton = LeftGroupBox:AddButton({
	Text = "Disabled Button",
	Func = function()
		print("You somehow clicked a disabled button!")
	end,
	DoubleClick = false,
	Tooltip = "This is a disabled button",
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the button while it's disabled
	Disabled = true,
})

--[[
	NOTE: You can chain the button methods!
	EXAMPLE:

	LeftGroupBox:AddButton({ Text = 'Kill all', Func = Functions.KillAll, Tooltip = 'This will kill everyone in the game!' })
		:AddButton({ Text = 'Kick all', Func = Functions.KickAll, Tooltip = 'This will kick everyone in the game!' })
]]

-- Groupbox:AddLabel
-- Arguments: Text, DoesWrap, Idx
-- Arguments: Idx, Options
LeftGroupBox:AddLabel("This is a label")
LeftGroupBox:AddLabel("This is a label\n\nwhich wraps its text!", true)
LeftGroupBox:AddLabel("This is a label exposed to Labels", true, "TestLabel")
LeftGroupBox:AddLabel("SecondTestLabel", {
	Text = "This is a label made with table options and an index",
	DoesWrap = true, -- Defaults to false
})

LeftGroupBox:AddLabel("SecondTestLabel", {
	Text = "This is a label that doesn't wrap it's own text",
	DoesWrap = false, -- Defaults to false
})

-- Options is a table added to getgenv() by the library
-- You index Options with the specified index, in this case it is 'SecondTestLabel' & 'TestLabel'
-- To set the text of the label you do label:SetText

-- Options.TestLabel:SetText("first changed!")
-- Options.SecondTestLabel:SetText("second changed!")

-- Groupbox:AddDivider
-- Arguments: None
LeftGroupBox:AddDivider()

--[[
	Groupbox:AddSlider
	Arguments: Idx, SliderOptions

	SliderOptions: {
		Text = string,
		Default = number,
		Min = number,
		Max = number,
		Suffix = string,
		Rounding = number,
		Compact = boolean,
		HideMax = boolean,
	}

	Text, Default, Min, Max, Rounding must be specified.
	Suffix is optional.
	Rounding is the number of decimal places for precision.

	Compact will hide the title label of the Slider

	HideMax will only display the value instead of the value & max value of the slider
	Compact will do the same thing
]]
LeftGroupBox:AddSlider("MySlider", {
	Text = "This is my slider!",
	Default = 0,
	Min = 0,
	Max = 5,
	Rounding = 1,
	Compact = false,

	Callback = function(Value)
		print("[cb] MySlider was changed! New value:", Value)
	end,

	Tooltip = "I am a slider!", -- Information shown when you hover over the slider
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the slider while it's disabled

	Disabled = false, -- Will disable the slider (true / false)
	Visible = true, -- Will make the slider invisible (true / false)
})

-- Options is a table added to getgenv() by the library
-- You index Options with the specified index, in this case it is 'MySlider'
-- To get the value of the slider you do slider.Value

local Number = Options.MySlider.Value
Options.MySlider:OnChanged(function()
	print("MySlider was changed! New value:", Options.MySlider.Value)
end)

-- This should print to the console: "MySlider was changed! New value: 3"
Options.MySlider:SetValue(3)

-- Groupbox:AddInput
-- Arguments: Idx, Info
LeftGroupBox:AddInput("MyTextbox", {
	Default = "My textbox!",
	Numeric = false, -- true / false, only allows numbers
	Finished = false, -- true / false, only calls callback when you press enter
	ClearTextOnFocus = true, -- true / false, if false the text will not clear when textbox focused

	Text = "This is a textbox",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the textbox

	Placeholder = "Placeholder text", -- placeholder text when the box is empty
	-- MaxLength is also an option which is the max length of the text

	Callback = function(Value)
		print("[cb] Text updated. New text:", Value)
	end,
})

Options.MyTextbox:OnChanged(function()
	print("Text updated. New text:", Options.MyTextbox.Value)
end)

-- Groupbox:AddDropdown
-- Arguments: Idx, Info

local DropdownGroupBox = Tabs.Main:AddRightGroupbox("Dropdowns")

DropdownGroupBox:AddDropdown("MyDropdown", {
	Values = { "This", "is", "a", "dropdown" },
	Default = 1, -- number index of the value / string
	Multi = false, -- true / false, allows multiple choices to be selected

	Text = "A dropdown",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the dropdown
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the dropdown while it's disabled

	Searchable = false, -- true / false, makes the dropdown searchable (great for a long list of values)

	Callback = function(Value)
		print("[cb] Dropdown got changed. New value:", Value)
	end,

	Disabled = false, -- Will disable the dropdown (true / false)
	Visible = true, -- Will make the dropdown invisible (true / false)
})

Options.MyDropdown:OnChanged(function()
	print("Dropdown got changed. New value:", Options.MyDropdown.Value)
end)

Options.MyDropdown:SetValue("This")

DropdownGroupBox:AddDropdown("MySearchableDropdown", {
	Values = { "This", "is", "a", "searchable", "dropdown" },
	Default = 1, -- number index of the value / string
	Multi = false, -- true / false, allows multiple choices to be selected

	Text = "A searchable dropdown",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the dropdown
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the dropdown while it's disabled

	Searchable = true, -- true / false, makes the dropdown searchable (great for a long list of values)

	Callback = function(Value)
		print("[cb] Dropdown got changed. New value:", Value)
	end,

	Disabled = false, -- Will disable the dropdown (true / false)
	Visible = true, -- Will make the dropdown invisible (true / false)
})

DropdownGroupBox:AddDropdown("MyDisplayFormattedDropdown", {
	Values = { "This", "is", "a", "formatted", "dropdown" },
	Default = 1, -- number index of the value / string
	Multi = false, -- true / false, allows multiple choices to be selected

	Text = "A display formatted dropdown",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the dropdown
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the dropdown while it's disabled

	FormatDisplayValue = function(Value) -- You can change the display value for any values. The value will be still same, only the UI changes.
		if Value == "formatted" then
			return "display formatted" -- formatted -> display formatted but in Options.MyDisplayFormattedDropdown.Value it will still return formatted if its selected.
		end

		return Value
	end,

	Searchable = false, -- true / false, makes the dropdown searchable (great for a long list of values)

	Callback = function(Value)
		print("[cb] Display formatted dropdown got changed. New value:", Value)
	end,

	Disabled = false, -- Will disable the dropdown (true / false)
	Visible = true, -- Will make the dropdown invisible (true / false)
})

-- Multi dropdowns
DropdownGroupBox:AddDropdown("MyMultiDropdown", {
	-- Default is the numeric index (e.g. "This" would be 1 since it if first in the values list)
	-- Default also accepts a string as well

	-- Currently you can not set multiple values with a dropdown

	Values = { "This", "is", "a", "dropdown" },
	Default = 1,
	Multi = true, -- true / false, allows multiple choices to be selected

	Text = "A multi dropdown",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the dropdown

	Callback = function(Value)
		print("[cb] Multi dropdown got changed:")
		for key, value in next, Options.MyMultiDropdown.Value do
			print(key, value) -- should print something like This, true
		end
	end,
})

Options.MyMultiDropdown:SetValue({
	This = true,
	is = true,
})

DropdownGroupBox:AddDropdown("MyDisabledDropdown", {
	Values = { "This", "is", "a", "dropdown" },
	Default = 1, -- number index of the value / string
	Multi = false, -- true / false, allows multiple choices to be selected

	Text = "A disabled dropdown",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the dropdown
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the dropdown while it's disabled

	Callback = function(Value)
		print("[cb] Disabled dropdown got changed. New value:", Value)
	end,

	Disabled = true, -- Will disable the dropdown (true / false)
	Visible = true, -- Will make the dropdown invisible (true / false)
})

DropdownGroupBox:AddDropdown("MyDisabledValueDropdown", {
	Values = { "This", "is", "a", "dropdown", "with", "disabled", "value" },
	DisabledValues = { "disabled" }, -- Disabled Values that are unclickable
	Default = 1, -- number index of the value / string
	Multi = false, -- true / false, allows multiple choices to be selected

	Text = "A dropdown with disabled value",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the dropdown
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the dropdown while it's disabled

	Callback = function(Value)
		print("[cb] Dropdown with disabled value got changed. New value:", Value)
	end,

	Disabled = false, -- Will disable the dropdown (true / false)
	Visible = true, -- Will make the dropdown invisible (true / false)
})

DropdownGroupBox:AddDropdown("MyVeryLongDropdown", {
	Values = {
		"This",
		"is",
		"a",
		"very",
		"long",
		"dropdown",
		"with",
		"a",
		"lot",
		"of",
		"values",
		"but",
		"you",
		"can",
		"see",
		"more",
		"than",
		"8",
		"values",
	},
	Default = 1, -- number index of the value / string
	Multi = false, -- true / false, allows multiple choices to be selected

	MaxVisibleDropdownItems = 12, -- Default: 8, allows you to change the size of the dropdown list

	Text = "A very long dropdown",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the dropdown
	DisabledTooltip = "I am disabled!", -- Information shown when you hover over the dropdown while it's disabled

	Searchable = false, -- true / false, makes the dropdown searchable (great for a long list of values)

	Callback = function(Value)
		print("[cb] Very long dropdown got changed. New value:", Value)
	end,

	Disabled = false, -- Will disable the dropdown (true / false)
	Visible = true, -- Will make the dropdown invisible (true / false)
})

DropdownGroupBox:AddDropdown("MyPlayerDropdown", {
	SpecialType = "Player",
	ExcludeLocalPlayer = true, -- true / false, excludes the localplayer from the Player type
	Text = "A player dropdown",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the dropdown

	Callback = function(Value)
		print("[cb] Player dropdown got changed:", Value)
	end,
})

DropdownGroupBox:AddDropdown("MyTeamDropdown", {
	SpecialType = "Team",
	Text = "A team dropdown",
	Tooltip = "This is a tooltip", -- Information shown when you hover over the dropdown

	Callback = function(Value)
		print("[cb] Team dropdown got changed:", Value)
	end,
})

-- Label:AddColorPicker
-- Arguments: Idx, Info

-- You can also ColorPicker & KeyPicker to a Toggle as well

LeftGroupBox:AddLabel("Color"):AddColorPicker("ColorPicker", {
	Default = Color3.new(0, 1, 0), -- Bright green
	Title = "Some color", -- Optional. Allows you to have a custom color picker title (when you open it)
	Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

	Callback = function(Value)
		print("[cb] Color changed!", Value)
	end,
})

Options.ColorPicker:OnChanged(function()
	print("Color changed!", Options.ColorPicker.Value)
	print("Transparency changed!", Options.ColorPicker.Transparency)
end)

Options.ColorPicker:SetValueRGB(Color3.fromRGB(0, 255, 140))

-- Label:AddKeyPicker
-- Arguments: Idx, Info

LeftGroupBox:AddLabel("Keybind"):AddKeyPicker("KeyPicker", {
	-- SyncToggleState only works with toggles.
	-- It allows you to make a keybind which has its state synced with its parent toggle

	-- Example: Keybind which you use to toggle flyhack, etc.
	-- Changing the toggle disables the keybind state and toggling the keybind switches the toggle state

	Default = "MB2", -- String as the name of the keybind (MB1, MB2 for mouse buttons)
	SyncToggleState = false,

	-- You can define custom Modes but I have never had a use for it.
	Mode = "Toggle", -- Modes: Always, Toggle, Hold

	Text = "Auto lockpick safes", -- Text to display in the keybind menu
	NoUI = false, -- Set to true if you want to hide from the Keybind menu,

	-- Occurs when the keybind is clicked, Value is `true`/`false`
	Callback = function(Value)
		print("[cb] Keybind clicked!", Value)
	end,

	-- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
	ChangedCallback = function(New)
		print("[cb] Keybind changed!", New)
	end,
})

-- OnClick is only fired when you press the keybind and the mode is Toggle
-- Otherwise, you will have to use Keybind:GetState()
Options.KeyPicker:OnClick(function()
	print("Keybind clicked!", Options.KeyPicker:GetState())
end)

Options.KeyPicker:OnChanged(function()
	print("Keybind changed!", Options.KeyPicker.Value)
end)

task.spawn(function()
	while true do
		wait(1)

		-- example for checking if a keybind is being pressed
		local state = Options.KeyPicker:GetState()
		if state then
			print("KeyPicker is being held down")
		end

		if Library.Unloaded then
			break
		end
	end
end)

Options.KeyPicker:SetValue({ "MB2", "Hold" }) -- Sets keybind to MB2, mode to Hold

-- Long text label to demonstrate UI scrolling behaviour.
local LeftGroupBox2 = Tabs.Main:AddLeftGroupbox("Groupbox #2")
LeftGroupBox2:AddLabel(
	"This label spans multiple lines! We're gonna run out of UI space...\nJust kidding! Scroll down!\n\n\nHello from below!",
	true
)

local TabBox = Tabs.Main:AddRightTabbox() -- Add Tabbox on right side

-- Anything we can do in a Groupbox, we can do in a Tabbox tab (AddToggle, AddSlider, AddLabel, etc etc...)
local Tab1 = TabBox:AddTab("Tab 1")
Tab1:AddToggle("Tab1Toggle", { Text = "Tab1 Toggle" })

local Tab2 = TabBox:AddTab("Tab 2")
Tab2:AddToggle("Tab2Toggle", { Text = "Tab2 Toggle" })

Library:OnUnload(function()
	print("Unloaded!")
end)

-- Anything we can do in a Groupbox, we can do in a Key tab (AddToggle, AddSlider, AddLabel, etc etc...)
Tabs.Key:AddLabel({
	Text = "Key: Banana",
	DoesWrap = true,
	Size = 16,
})

Tabs.Key:AddKeyBox("Banana", function(Success, ReceivedKey)
	print("Expected Key: Banana - Received Key:", ReceivedKey, "| Success:", Success)
	Library:Notify({
		Title = "Expected Key: Banana",
		Description = "Received Key: " .. ReceivedKey .. "\nSuccess: " .. tostring(Success),
		Time = 4,
	})
end)

Tabs.Key:AddLabel({
	Text = "No Key",
	DoesWrap = true,
	Size = 16,
})

Tabs.Key:AddKeyBox(function(Success, ReceivedKey)
	print("Expected Key: None | Success:", Success) -- true
	Library:Notify("Success: " .. tostring(Success), 4)
end)

-- UI Settings
local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu", "wrench")

MenuGroup:AddToggle("KeybindMenuOpen", {
	Default = Library.KeybindFrame.Visible,
	Text = "Open Keybind Menu",
	Callback = function(value)
		Library.KeybindFrame.Visible = value
	end,
})
MenuGroup:AddToggle("ShowCustomCursor", {
	Text = "Custom Cursor",
	Default = true,
	Callback = function(Value)
		Library.ShowCustomCursor = Value
	end,
})
MenuGroup:AddDropdown("NotificationSide", {
	Values = { "Left", "Right" },
	Default = "Right",

	Text = "Notification Side",

	Callback = function(Value)
		Library:SetNotifySide(Value)
	end,
})
MenuGroup:AddDropdown("DPIDropdown", {
	Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
	Default = "100%",

	Text = "DPI Scale",

	Callback = function(Value)
		Value = Value:gsub("%%", "")
		local DPI = tonumber(Value)

		Library:SetDPIScale(DPI)
	end,
})
MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind")
	:AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })

MenuGroup:AddButton("Unload", function()
	Library:Unload()
end)

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder("MyScriptHub")
SaveManager:SetFolder("MyScriptHub/specific-game")
SaveManager:SetSubFolder("specific-place") -- if the game has multiple places inside of it (for example: DOORS)
-- you can use this to save configs for those places separately
-- The path in this script would be: MyScriptHub/specific-game/settings/specific-place
-- [ This is optional ]

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs["UI Settings"])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs["UI Settings"])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
