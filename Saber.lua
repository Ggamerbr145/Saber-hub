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
	Name = "swing",
	Callback = function()
			while true do
      		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Clicked"):FireServer()
wait(0.0000001) 
			end

  	end    
})

Tab:AddButton({
	Name = "sell",
	Callback = function()
      		eu.CFrame = CFrame.new(533, 184, 151) 
  	end    
})

OrionLib:Init()


