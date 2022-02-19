local antipackwatch={}
function isantipackwatch(n)
    for _,v in pairs(antipackwatch) do
        if v==n then
            return true
        end
    end
    return false
end

for i,v in pairs(game.Players:GetPlayers()) do
    repeat wait() until v.Character and v.Character:FindFirstChild("Humanoid")
    if v.Character and v.Character.Humanoid then
        v.Character.Humanoid.Died:Connect(function()
            if not isantipackwatch(v.Name) then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("#PACKWATCH RIP BOZO!! RIP "..v.DisplayName.." you wont be missed! 😹 BOT Developed by Avian 9893 for the memes","All")
            end
        end)
     end
    
    v.CharacterAdded:Connect(function()
        repeat wait() until v.Character and v.Character:FindFirstChild("Humanoid")
        if v.Character and v.Character.Humanoid then
            v.Character.Humanoid.Died:Connect(function()
                if not isantipackwatch(v.Name) then
                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("#PACKWATCH RIP BOZO!! RIP "..v.DisplayName.." you wont be missed! 😹 BOT Developed by Avian 9893 for the memes","All")
                end
            end)
        end
    end)
    
    v.Chatted:Connect(function(msg)
        if msg:lower()==".antipackwatch" then
            if not isantipackwatch(v.Name) then
                table.insert(antipackwatch,v.Name)
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You have been added to the antipackwatch list!","All")
            else
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You are already in the antipackwatch list!","All")
            end
        end
    end)
end

game.Players.PlayerAdded:Connect(function(v)
    repeat wait() until v.Character and v.Character:FindFirstChild("Humanoid")
    if v.Character and v.Character.Humanoid then
        v.Character.Humanoid.Died:Connect(function()
            if not isantipackwatch(v.Name) then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("#PACKWATCH RIP BOZO!! RIP "..v.DisplayName.." you wont be missed! 😹 BOT Developed by Avian 9893 for the memes","All")
            end
        end)
     end
    
    v.CharacterAdded:Connect(function()
        repeat wait() until v.Character and v.Character:FindFirstChild("Humanoid")
        if v.Character and v.Character.Humanoid then
            v.Character.Humanoid.Died:Connect(function()
                if not isantipackwatch(v.Name) then
                    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("#PACKWATCH RIP BOZO!! RIP "..v.DisplayName.." you wont be missed! 😹 BOT Developed by Avian 9893 for the memes","All")
                end
            end)
        end
    end)

    v.Chatted:Connect(function(msg)
        if msg:lower()==".antipackwatch" then
            if not isantipackwatch(v.Name) then
                table.insert(antipackwatch,v.Name)
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You have been added to the antipackwatch list!","All")
            else
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You are already in the antipackwatch list!","All")
            end
        end
    end)
end)

game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("#PACKWATCH LOADED! When you die, PACKWATCH will tell everyone, to not be included type .antipackwatch | Developed by Avian 9893. Okay lets get watching","All")
