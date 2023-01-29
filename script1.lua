plr = script.Parent.Parent.Parent.Parent
char = plr.Character
 
repeat wait() until char ~= nil 
----------Just removing hats and decals vvv----------
script.Parent.MouseButton1Click:connect(function()
local d = char:GetChildren() 
for i=1, #d do 
    if (d[i].className == "Hat") then 
        d[i]:Destroy() 
    end 
end
local q = char.Head:GetChildren()
 
for i=1, #q do 
    if (q[i].className == "Decal") then
        q[i]:Destroy()
    end
end
char.Head.Transparency = 1 -- Head becomes invisible here 
    local BL = game.ServerStorage.DogLeftBack.BackLeft:Clone()
    BL.Parent = char["Left Leg"] 
    local BR = game.ServerStorage.DogRightBack.BackRight:Clone()
    BR.Parent = char["Right Leg"] 
    local FL = game.ServerStorage.DogLeftFront.FrontLeft:Clone()
    FL.Parent = char["Left Arm"]
    local FR = game.ServerStorage.DogRightFront.FrontRight:Clone()
    FR.Parent = char["Right Arm"]
    local T = game.ServerStorage.DogTorso.Torso:Clone()
    T.Parent = char.Torso
end)
