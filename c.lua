

local a=game:HttpGet("https://raw.githubusercontent.com/ZoOIS8sj3/z/main/id.lua")local b={1}local c=(function(a)a=tostring(a)return a:reverse():gsub("%d%d%d","%1,"):reverse():gsub("^,","")end)local function c()for c,c in pairs(game:GetService('Workspace').Players:GetChildren())do if c:FindFirstChild('UpperTorso')then if not c:FindFirstChild('UpperTorso'):FindFirstChild('OriginalSize')then local b=game:GetService('Players'):FindFirstChild(c.Name)if b then local b=game:GetService('Players'):FindFirstChild(c.Name).UserId;if string.find(a,b)then if c:FindFirstChildWhichIsA('Humanoid')then c:FindFirstChildWhichIsA('Humanoid').DisplayName=('[⭐]'..game.Players[c.Name].DisplayName)end else if c:FindFirstChildWhichIsA('Humanoid')then c:FindFirstChildWhichIsA('Humanoid').DisplayName=('[💻]'..game.Players[c.Name].DisplayName)end end end else local d=game.Players:FindFirstChild(c.Name)if d then local d=game.Players:FindFirstChild(c.Name).UserId;if table.find(b,d)then if c:FindFirstChildWhichIsA('Humanoid')then c:FindFirstChildWhichIsA('Humanoid').DisplayName=('[👑]'..game.Players[c.Name].DisplayName)end elseif string.find(a,d)then if c:FindFirstChildWhichIsA('Humanoid')then c:FindFirstChildWhichIsA('Humanoid').DisplayName=('[⭐]'..game.Players[c.Name].DisplayName)end end end end end end end;local a,a=pcall(c)
