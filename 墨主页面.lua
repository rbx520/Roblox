local function notify(title,text,time)
	game.StarterGui:SetCore("SendNotification", {
		Title = title;
		Text = text;
		Icon = nil;
		Duration = time
	})
end
local function AntiAFK()
    game:GetService('Players').LocalPlayer.Idled:Connect(function()
        notify('反挂机', '反挂机已生效', 4)
        game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), game:GetService('Workspace').CurrentCamera.CFrame);
        wait(.325)
        game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), game:GetService('Workspace').CurrentCamera.CFrame);
    end);
end;
AntiAFK();
notify("墨", "成功注入等待加载",10)
notify('反挂机', '反挂机已开启', 4) 

	local function callback(Text)
		if Text == "确定" then
			local amountoftimes = 0
repeat
  getgenv().AutoTeleport = true --I didnt make this serverhop script either, I just put it together in a gui credit to https://v3rmillion.net/showthread.php?tid=1107863
  getgenv().DontTeleportTheSameNumber = true
  getgenv().CopytoClipboard = true

  if not game:IsLoaded() then
    print("Game is loading waiting...")
    repeat
      wait()
    until game:IsLoaded()
  end

  local maxplayers = math.huge
  local serversmaxplayer;
  local goodserver;
  local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"

  function serversearch()
    for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
      if type(v) == "table" and maxplayers > v.playing then
        serversmaxplayer = v.maxPlayers
        maxplayers = v.playing
        goodserver = v.id
      end
    end
    print("Currently checking the servers with max this number of players : " .. maxplayers .. "")
  end

  function getservers()
    serversearch()
    for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
      if i == "nextPageCursor" then
        if gamelink:find("&cursor=") then
          local a = gamelink:find("&cursor=")
          local b = gamelink:sub(a)
          gamelink = gamelink:gsub(b, "")
        end
        gamelink = gamelink .. "&cursor=" ..v
        getservers()
      end
    end
  end

  getservers()

  print("All of the servers are searched")
  print("Server : " .. goodserver .. " Players : " .. maxplayers .. "/" .. serversmaxplayer .. "")
  if CopytoClipboard then
    setclipboard(goodserver)
  end
  if AutoTeleport then
    if DontTeleportTheSameNumber then
      if #game:GetService("Players"):GetPlayers() - 1 == maxplayers then
        return warn("It has same number of players (except you)")
      elseif goodserver == game.JobId then
        return warn("Your current server is the most empty server atm")
      end
    end
    print("AutoTeleport is enabled. Teleporting to : " .. goodserver)
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
  end
  amountoftimes = amountoftimes + 1
until amountoftimes == 10

	
	   elseif Text == "取消" then
	   
		end
	   end
	   
	   local NotificationBindable = Instance.new("BindableFunction")
	   NotificationBindable.OnInvoke = callback
	   --
	   game.StarterGui:SetCore("SendNotification",  {
		Title = "墨";
		Text = "是否加入最小服务器";
		Icon = "";
		Duration = 5;
		Button1 = "确定";
		Button2 = "取消";
		Callback = NotificationBindable;
	   })


if game.PlaceId == 3101667897 then -- 急速传奇
     loadstring(game:HttpGet(('https://pastebin.com/raw/pq2a7QbC'),true))()   
end
if game.PlaceId == 4639625707 then -- 战争大亨
     loadstring(game:HttpGet(('https://raw.githubusercontent.com/rbx520/Roblox/refs/heads/main/%E6%88%98%E4%BA%89%E5%A4%A7%E4%BA%A8.txt'),true))()   
end
 if game.PlaceId == 3623096087 then -- 力量传奇
     loadstring(game:HttpGet(('https://pastebin.com/raw/zTCR4xa5'),true))()   
end

if game.PlaceId == 1554960397 then -- 汽车经销 
loadstring(game:HttpGet(('https://pastebin.com/raw/MyZBbxTi'),true))() 
end
if game.PlaceId == 8554378337 then -- 法宝
     loadstring(game:HttpGet(('https://pastebin.com/raw/LRgLW7Ny'),true))()   
end
if game.PlaceId == 6875469709 then -- STRONGEST-PUNCH-SIMULATOR
     loadstring(game:HttpGet(('https://pastebin.com/raw/ejmTA2Xh'),true))()   
end
if game.PlaceId == 537413528 then -- 造船
     loadstring(game:HttpGet(('https://pastebin.com/raw/eMThjTPu'),true))()   
end
if game.PlaceId == 13822889 then -- lumbertycoon
     loadstring(game:HttpGet(('https://pastebin.com/raw/vYATxGvy'),true))()  
end
if game.PlaceId == 654732683 then -- 汽车破坏
     loadstring(game:HttpGet(('https://pastebin.com/raw/FSG69w44'),true))()   
end
if game.PlaceId == 3956818381 then -- 忍者传奇
     loadstring(game:HttpGet(('https://pastebin.com/raw/hYDDRqS8'),true))()   
end
if game.PlaceId == 4282985734 then -- Combat-Warriors
     loadstring(game:HttpGet(('https://pastebin.com/raw/cnyctBnL'),true))()   
end
if game.PlaceId == 2474168535 then -- 一路向西
     loadstring(game:HttpGet(('https://pastebin.com/raw/bwM8dhig'),true))()   
end
if game.PlaceId == 2248408710 then -- 破坏模拟器
    loadstring(game:HttpGet(('https://pastebin.com/raw/fa6M6X4J'),true))() 
end
notify("墨", "欢迎"..game.Players.LocalPlayer.Name.." 使用墨",10)
print("制作组:林北，芸雪")
notify('制作组', '林北，芸雪', 4) 
 