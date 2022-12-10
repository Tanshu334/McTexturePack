                local obj = game:GetObjects("rbxassetid://11144793662")[1]

                obj.Name = "Part"

                obj.Parent = game:GetService("ReplicatedStorage")

                for i,v in pairs(obj:GetChildren()) do

                    if string.lower(v.Name):find("cross") then

                        for i2,b in pairs(v:GetChildren()) do-- SKIDDED

                            b:Destroy()

                        end

                    end

                end

                shared.con = game:GetService("ReplicatedStorage").ChildAdded:Connect(function(v)

                    for i,x in pairs(obj:GetChildren()) do

                        x:Clone().Parent = v

                    end

                    shared.con:Disconnect()

                end)

                loadstring(game:HttpGet("https://raw.githubusercontent.com/eLeCtRaDoMiNuS/milkwareclient/main/texture.lua%22))()

            end

        end

    end
