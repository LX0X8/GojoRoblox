
local a = game:GetService("\80\108\97\121\101\114\115")
local b = game:GetService("\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101")


local c = loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\105\114\105\117\115\46\109\101\110\117\47\114\97\121\102\105\101\108\100"))()


local d = c:CreateWindow({
    Name = "\71\111\106\111\32\80\97\110\101\108",
    LoadingTitle = "\71\111\106\111\32\77\111\100\101",
    LoadingSubtitle = "\82\97\121\102\105\101\108\100\32\85\73",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "\71\111\106\111\83\99\114\105\112\116",
        FileName = "\71\111\106\111\67\111\110\102\105\103"
    },
    KeySystem = true,
    KeySettings = {
        Title = "\71\111\106\111\32\75\101\121\32\83\121\115\116\101\109",
        Subtitle = "\69\110\116\101\114\32\75\101\121",
        Note = "\75\101\121\32\105\115\32'\71\111\106\111'",
        SaveKey = true,
        Key = {"Gojo"}
    }
})


local e = d:CreateTab("\77\97\105\110", 4483362458)
e:CreateButton({
    Name = "\65\99\116\105\118\97\116\101\32\71\111\106\111\32\80\111\115\101",
    Callback = function()
        local f = a.LocalPlayer
        local g = f.Character or f.CharacterAdded:Wait()
        local h = g:FindFirstChildOfClass("\72\117\109\97\110\111\105\100") 
        local i = g:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") 
        local j = h and g:FindFirstChildOfClass("\65\110\105\109\97\116\111\114") 

        if h and i and j then
            
            i.CFrame = i.CFrame * CFrame.Angles(math.rad(-90), 0, 0)

           
            local k = Instance.new("\66\111\100\121\86\101\108\111\99\105\116\121")
            k.Velocity = Vector3.new(0, 15, 0)
            k.MaxForce = Vector3.new(4000, 4000, 4000)
            k.Parent = i

            task.wait(1)
           
            b.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("\71\111\109\101\110\44\32\65\109\97\110\97\105\46", "\65\108\108")
            task.wait(2)
            b.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("\73\39\109\32\110\111\116\32\101\118\101\110\32\97\110\103\114\121\32\111\118\101\114\32\121\111\117\32\114\105\103\104\116\32\110\111\119\46", "\65\108\108")

            
            local l = Instance.new("\65\110\105\109\97\116\105\111\110")
            l.AnimationId = "\114\98\120\97\115\115\101\116\105\100\58\47\47\53\48\55\55\55\49\48\49\57"
            local m = j:LoadAnimation(l)
            m.Priority = Enum.AnimationPriority.Action
            m:Play()

            
            task.delay(5, function()
                if k then k:Destroy() end
                if m then m:Stop() end
            end)
        end
    end
})
