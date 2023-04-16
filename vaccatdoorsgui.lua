local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
    Name = "vaccat's doors gui",
    LoadingTitle = "vaccat's doors gui",
    LoadingSubtitle = "",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "vaccatdoorsgui", -- Create a custom folder for your hub/game
       FileName = "vaccatdoorsgui"
    },
    Discord = {
       Enabled = true,
       Invite = "s2eRkmbnBs", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "vaccat's doors gui",
       Subtitle = "",
       Note = "Join the discord (script.shibe.lol)",
       FileName = "vaccatdoorsguikey",
       SaveKey = false,
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "https://olen-homo.shibe.lol/"
    }
})

-- variables | misc

-- variables | toggles
local KeyESP = false
local LeverESP = false
local DoorESP = false
local Fullbright = false

-- variables | fullbright
local Ambient2 = game.Lighting.Ambient
local ColorShift_Bottom2 = game.Lighting.ColorShift_Bottom
local ColorShift_Top2 = game.Lighting.ColorShift_Top

-- functions
function keyesp()
   local keys = {}
   if KeyESP == false then

   else
   for _, key in next, workspace:GetDescendants() do 
      if key.Name == 'KeyObtain' and not key:FindFirstChild("KeyESP") then 
         local esp = Instance.new("Highlight")
         esp.Name = "KeyESP"
         esp.FillTransparency = 1
         esp.OutlineColor = Color3.new(1, 0.333333, 1)
         esp.OutlineTransparency = 0
         esp.Parent = key
      end
      table.insert(keys, object)
   end
   end
end

function leveresp()
   local keys = {}
   if LeverESP == false then
      
   else
   for _, key in next, workspace:GetDescendants() do 
      if key.Name == 'LeverForGate' and not key:FindFirstChild("KeyESP") then 
         local esp = Instance.new("Highlight")
         esp.Name = "KeyESP"
         esp.FillTransparency = 1
         esp.OutlineColor = Color3.new(1, 0.333333, 1)
         esp.OutlineTransparency = 0
         esp.Parent = key
      end
      table.insert(keys, object)
   end
   end
end

function dooresp()
   local keys = {}
   if DoorESP == false then
      
   else
   for _, key in next, workspace:GetDescendants() do 
      if key.Name == 'Door' and not key:FindFirstChild("KeyESP") then 
         local esp = Instance.new("Highlight")
         esp.Name = "KeyESP"
         esp.FillTransparency = 1
         esp.OutlineColor = Color3.new(1, 0.333333, 1)
         esp.OutlineTransparency = 0
         esp.Parent = key
      end
      table.insert(keys, object)
   end
   end
end

function fullbright()
   if Fullbright == true then
      Light.Ambient = Color3.new(1, 1, 1)
      Light.ColorShift_Bottom = Color3.new(1, 1, 1)
      Light.ColorShift_Top = Color3.new(1, 1, 1)
   else
      Light.Ambient = Ambient2
      Light.ColorShift_Bottom = ColorShift_Bottom2
      Light.ColorShift_Top = ColorShift_Top2
   end
end
game.Lighting.LightingChanged:Connect(fullbright)

-- tabs
local PlayerTab = Window:CreateTab("Player", 4483362458) -- Title, Image

local VisualsTab = Window:CreateTab("Visuals", 4483362458) -- Title, Image

-- player
local testnotify = PlayerTab:CreateButton({
   Name = "test notify",
   Callback = function()
      Rayfield:Notify({
         Title = "Notification Title",
         Content = "Notification Content",
         Duration = 6.5,
         Image = 4483362458,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped Okay!")
            end
            },
         },
      })
   end,
})

-- visuals
local keyesptoggle = VisualsTab:CreateToggle({
   Name = "Key ESP",
   CurrentValue = false,
   Flag = "keyesp",
   Callback = function(Value)
      KeyESP = Value
      keyesp()
   end,
})

local leveresptoggle = VisualsTab:CreateToggle({
   Name = "Lever ESP",
   CurrentValue = false,
   Flag = "leveresp",
   Callback = function(Value)
      LeverESP = Value
      leveresp()
   end,
})

local dooresptoggle = VisualsTab:CreateToggle({
   Name = "Door ESP",
   CurrentValue = false,
   Flag = "dooresp",
   Callback = function(Value)
      DoorESP = Value
      dooresp()
   end,
})

local fullbrighttoggle = VisualsTab:CreateToggle({
   Name = "Fullbright",
   CurrentValue = false,
   Flag = "fullbright",
   Callback = function(Value)
      Fullbright = Value
      fullbright()
   end,
})