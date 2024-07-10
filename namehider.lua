                    getgenv().name = "TWWLEAN"


                    local Plr = game.Players.LocalPlayer
                    for Index, Value in next, game:GetDescendants() do 
                        if Value.ClassName == "TextLabel" then 
                            local has = string.find(Value.Text,Plr.Name) 
                            if has then 
                                local str = Value.Text:gsub(Plr.Name,name)
                                Value.Text = str 
                            end
                            Value:GetPropertyChangedSignal("Text"):Connect(function()
                                local str = Value.Text:gsub(Plr.Name,name)
                                Value.Text = str 
                            end)
                        end
                    end
                    
                    game.DescendantAdded:Connect(function(Value)
                        if Value.ClassName == "TextLabel" then 
                            local has = string.find(Value.Text,Plr.Name)
                            Value:GetPropertyChangedSignal("Text"):Connect(function()
                                local str = Value.Text:gsub(Plr.Name,name)
                                Value.Text = str 
                            end)
                            if has then 
                                local str = Value.Text:gsub(Plr.Name,name)
                                Value.Text = str 
                            end
                            
                        end
                    end)
                    local player = game.Players.LocalPlayer
                    repeat wait() until player.Character
                    local playerGui = player:WaitForChild("PlayerGui")
                    local client = playerGui:WaitForChild("Client")
                    local session = client:WaitForChild("Session")
                    session.Visible = false
