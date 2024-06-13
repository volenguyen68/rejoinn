local req = http_request or request or HttpPost or syn.request
local Http = game:GetService('HttpService')
local startgameload = tick()
while tick() - startgameload <= 10 and not game:IsLoaded() and task.wait() do 
end
if tick() - startgameload > 10 then
    req({Url="http://127.0.0.1:6969/rejoinroblox", Headers = { ['Content-Type'] = 'application/json' },Method = "POST",Body = game:GetService('HttpService'):JSONEncode({username=game.Players.LocalPlayer.Name})})
end
while task.wait(5) do
req({Url="http://127.0.0.1:6969/updatetime", Headers = { ['Content-Type'] = 'application/json' },Method = "POST",Body = game:GetService('HttpService'):JSONEncode({username=game.Players.LocalPlayer.Name})})
end
