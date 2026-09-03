local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NoticeGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 500, 0, 260)
mainFrame.Position = UDim2.new(0.5, -250, 0.5, -130)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 10)
mainCorner.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(1, -50, 0, 35)
titleLabel.Position = UDim2.new(0, 10, 0, 8)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Center
titleLabel.Parent = mainFrame

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 8)
closeButton.BackgroundTransparency = 1
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 18
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Parent = mainFrame

local contentLabel = Instance.new("TextLabel")
contentLabel.Name = "Content"
contentLabel.Size = UDim2.new(1, -30, 0, 150)
contentLabel.Position = UDim2.new(0, 15, 0, 48)
contentLabel.BackgroundTransparency = 1
contentLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
contentLabel.Font = Enum.Font.SourceSansBold
contentLabel.TextWrapped = true
contentLabel.TextYAlignment = Enum.TextYAlignment.Top
contentLabel.TextXAlignment = Enum.TextXAlignment.Left
contentLabel.Parent = mainFrame

local langButton = Instance.new("TextButton")
langButton.Name = "LangButton"
langButton.Size = UDim2.new(0, 140, 0, 35)
langButton.Position = UDim2.new(0.5, -70, 1, -45)
langButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
langButton.Text = "English | العربية"
langButton.TextColor3 = Color3.fromRGB(200, 200, 200)
langButton.TextSize = 14
langButton.Font = Enum.Font.SourceSansBold
langButton.Parent = mainFrame

local langCorner = Instance.new("UICorner")
langCorner.CornerRadius = UDim.new(0, 6)
langCorner.Parent = langButton

local textsEN = {
	Title = "bye",
	Content = "I have decided to delete all my scripts. This project has been really hard to maintain as a solo dev and it doesn't bring me anything in return, all i get is angry requests to make it better, I'm ruining a lot of people's gameplay, sorry."
}

local textsAR = {
	Title = "الوداع",
	Content = "تم حذف جميع السكربتات و الاعتزال، اتمنى ما تراسل اي شخص و تقول له ليش السكربت ما يشتغل، اتقبل الوضع بكل بساطه، كميه التخريب على اللاعبين الي جاي تصير بسببي و بسبب سكربتاتي كثيرةس و البرمجة صعبه و السكربت بدون مفتاح و مجاني و محد راضي، الكل يراسلني يعترض."
}

local currentLang = "EN"

local function updateLanguage()
	if currentLang == "EN" then
		titleLabel.Text = textsEN.Title
		titleLabel.TextSize = 20
		contentLabel.Text = textsEN.Content
		contentLabel.TextSize = 15
	else
		titleLabel.Text = textsAR.Title
		titleLabel.TextSize = 26
		contentLabel.Text = textsAR.Content
		contentLabel.TextSize = 18
	end
end

updateLanguage()

langButton.MouseButton1Click:Connect(function()
	currentLang = (currentLang == "EN") and "AR" or "EN"
	updateLanguage()
end)

closeButton.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)
