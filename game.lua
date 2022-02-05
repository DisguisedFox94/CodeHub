local function Notify(title, description, delay)
	local NotifyLib = Instance.new("ScreenGui")
	local NotifFrame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Description = Instance.new("TextLabel")
	local Bar = Instance.new("Frame")

	NotifyLib.Name = "NotifyLib"
	NotifyLib.Parent = game.CoreGui
	NotifyLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	NotifFrame.Name = "NotifFrame"
	NotifFrame.Parent = NotifyLib
	NotifFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
	NotifFrame.BorderSizePixel = 0
	NotifFrame.ClipsDescendants = true
	NotifFrame.Position = UDim2.new(1.01300001, 0, 1.39400005, 0)
	NotifFrame.Size = UDim2.new(0, 195, 0, 103)

	Title.Name = "Title"
	Title.Parent = NotifFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0378787629, 0, 0, 0)
	Title.Size = UDim2.new(0, 254, 0, 26)
	Title.Font = Enum.Font.GothamBold
	Title.Text = title
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Description.Name = "Description"
	Description.Parent = NotifFrame
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.BorderSizePixel = 0
	Description.Position = UDim2.new(0.0378787629, 0, 0.252427191, 0)
	Description.Size = UDim2.new(0, 265, 0, 69)
	Description.Font = Enum.Font.SourceSansItalic
	Description.Text = description
	Description.TextColor3 = Color3.fromRGB(255, 255, 255)
	Description.TextSize = 17.000
	Description.TextWrapped = true
	Description.TextXAlignment = Enum.TextXAlignment.Left
	Description.TextYAlignment = Enum.TextYAlignment.Top

	Bar.Name = "Bar"
	Bar.Parent = NotifFrame
	Bar.BackgroundColor3 = Color3.fromRGB(31, 2, 52)
	Bar.BorderSizePixel = 0
	Bar.Position = UDim2.new(0, 0, 0.922330081, 0)
	Bar.Size = UDim2.new(0, 284, 0, 8)

	NotifFrame:TweenPosition(UDim2.new(0.817, 0, 0.792, 0), "Out", "Quart", .9)
	wait(.4)
	Bar:TweenSize(UDim2.new(0, 0, 0, 8), "Out", "Quart", delay)
	wait(delay)
	NotifFrame:TweenPosition(UDim2.new(1.013, 0, 1.394, 0), "Out", "Quart", .9)
	wait(.9)
	NotifyLib:Destroy()
end

if game.PlaceId == 1962086868 then -- toh
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DisguisedFox94/CodeHub/main/toh.lua"))();
    Notify("Code Hub", "Loaded: TOH", 5)
elseif game.PlaceId == 2788229376 then
   loadstring(game:HttpGet("https://raw.githubusercontent.com/DisguisedFox94/CodeHub/main/dahood.lua"))();
    Notify("Code Hub", "Loaded: DAHOOD", 5)
elseif game.PlaceId == 7993293100 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DisguisedFox94/CodeHub/main/tsunami.lua"))();
    Notify("Code Hub", "Loaded: TSUNAMI", 5)
elseif game.PlaceId == 482742811 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DisguisedFox94/CodeHub/main/getcrushed.lua"))();
    Notify("Code Hub", "Loaded: GET CRUSHED", 5)
elseif game.PlaceId == 185655149 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DisguisedFox94/CodeHub/main/wtb.lua"))();
    Notify("Code Hub", "Loaded: GET CRUSHED", 5)
else
    Notify("Code Hub", "Error: Unsupported game.", 5)
end
