-- Gui to Lua
-- Version: 3.2

-- Instances:
local Loadgit = Instance.new("ScreenGui")
local LoadFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local Forward = Instance.new("TextLabel")
local tw = game:GetService("TweenService")



--Properties:

Loadgit.Name = "Loadgit"
Loadgit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Loadgit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LoadFrame.Name = "LoadFrame"
LoadFrame.Parent = Loadgit
LoadFrame.Active = true
LoadFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
LoadFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadFrame.BorderSizePixel = 0
LoadFrame.Position = UDim2.new(0.244, 0,0.136, 0)
LoadFrame.Size = UDim2.new(0, 753, 0, 440)

UICorner.Parent = LoadFrame

ImageLabel.Parent = LoadFrame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.43293494, 0, 0.386363626, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "http://www.roblox.com/asset/?id=2418686949"
ImageLabel.Visible = false


Forward.Name = "Forward"
Forward.Parent = LoadFrame
Forward.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Forward.BackgroundTransparency = 1.000
Forward.BorderColor3 = Color3.fromRGB(0, 0, 0)
Forward.BorderSizePixel = 0
Forward.Position = UDim2.new(0.286852598, 0, 0.443181813, 0)
Forward.Size = UDim2.new(0, 384, 0, 50)
Forward.Visible = false
Forward.Font = Enum.Font.SourceSans
Forward.TextColor3 = Color3.fromRGB(0, 0, 0)
Forward.TextScaled = true
Forward.TextSize = 14.000
Forward.TextWrapped = true
Forward.Text = "Forward Gui"

-- Scripts:

local function PSYQIQ_fake_script() -- LoadFrame.LocalScript 
	local script = Instance.new('LocalScript', LoadFrame)

	local loadframe = script.Parent
	loadframe.Size = UDim2.new(0, 0,0, 0)
	loadframe:TweenSize(UDim2.new(0, 753,0, 440), "Out", Enum.EasingStyle.Quint, 0.7, true)
	wait(0.7)
	ImageLabel.Visible = true
	local tweenInfo = TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
	local tween = tw:Create(ImageLabel, tweenInfo, {Rotation = 360})
	tween:Play()
	wait(3)
	ImageLabel.Rotation = {Rotation = 0}
	tween:Pause()
	ImageLabel:TweenPosition(UDim2.new(0.157, 0,0.386, 0), "In" , Enum.EasingStyle.Quint , 0.6 , true)
	wait(0.6)
	Forward.Visible = true
	wait(2)
	ImageLabel:Destroy()
	Forward:Destroy()
	LoadFrame:TweenSize(UDim2.new(0, 0,0, 0),"Out",Enum.EasingStyle.Quint,0.8,true)
	wait(0.9)
	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/anti-afk%20via%20autofocus.txt"))()
	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Yield.txt"))()
	Loadgit:Destroy()
end
coroutine.wrap(PSYQIQ_fake_script)()
