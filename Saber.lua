local eu = game.Players.LocalPlayer.Character.HumanoidRootPart
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Test novo", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Section"
})

Tab:AddButton({
	Name = "Deletar gui",
	Callback = function()
      		OrionLib:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
      		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Clicked"):FireServer()
  	end    
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
      		eu.CFrame = CFrame.new(533, 184, 151) 
  	end    
})

OrionLib:Init()


