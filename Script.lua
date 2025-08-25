--// Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--// Load Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

--// Window
local Window = Rayfield:CreateWindow({
   Name = "Gojo Panel",
   LoadingTitle = "Gojo Mode",
   LoadingSubtitle = "Rayfield UI",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "GojoScript",
      FileName = "GojoConfig"
   },
   KeySystem = true,
   KeySettings = {
      Title = "Gojo Key System",
      Subtitle = "Enter Key",
      Note = "Key is 'Gojo'",
      SaveKey = true,
      Key = {"Gojo"}
   }
})

--// Main Tab
local Tab = Window:CreateTab("Main", 4483362458) -- Random icon ID

--// Button
Tab:CreateButton({
   Name = "Activate Gojo Pose",
   Callback = function()
      local player = Players.LocalPlayer
      local char = player.Character or player.CharacterAdded:Wait()
      local humanoid = char:FindFirstChildOfClass("Humanoid")
      local hrp = char:FindFirstChild("HumanoidRootPart")
      local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")

      if humanoid and hrp and animator then
         -- Face the sky
         hrp.Orientation = Vector3.new(-90, hrp.Orientation.Y, hrp.Orientation.Z)

         -- Float up
         local float = Instance.new("BodyVelocity")
         float.Velocity = Vector3.new(0, 15, 0)
         float.MaxForce = Vector3.new(4000, 4000, 4000)
         float.Parent = hrp

         -- Chat lines
         task.wait(1)
         ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Gomen, Amanai.", "All")
         task.wait(2)
         ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I'm not even angry over you right now.", "All")

         -- Animation (Gojo pose-ish)
         local anim = Instance.new("Animation")
         anim.AnimationId = "rbxassetid://507771019" -- Example "Levitation" animation
         local track = animator:LoadAnimation(anim)
         track.Priority = Enum.AnimationPriority.Action
         track:Play()

         -- Stop float after a while
         task.delay(5, function()
            if float then float:Destroy() end
            if track then track:Stop() end
         end)
      end
   end
})
