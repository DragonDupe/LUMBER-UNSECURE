--library--
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DragonDupe/LUMBER-UNSECURE/main/UI%20Library"))()
--size gui--
local DragonDupe = Library:create{Theme = Library.Themes.Dark; Size = UDim2.fromOffset(550, 400)}
--local path--
local runserv = game:GetService("RunService")
local plrs = game:GetService("Players")
local workspc = game:GetService("Workspace")
local replstr = game:GetService("ReplicatedStorage")
local cgui = game:GetService("CoreGui")
local uis = game:GetService("UserInputService")
local mouse = plrs.LocalPlayer:GetMouse()
local light = game:GetService("Lighting")
local virtus = game:GetService("VirtualUser")
local dragonplace = game:GetService("TeleportService")
--local value--
InfiniteJumpEnabled = false;sawmillitemspawn = nil;glassitemspawn = nil;paintingitemspawn =nil;vehicleitemspawn =nil;fungsionalitemspawn=nil;otheritemspawn=nil;amountspawnsawmill = 1;amountspawnglass=3;amountspawnpainting=2;amountspawnvehicle=1;amountspawnfungsionalitem=1;amountspawnotheritem=3;
repeat wait() until plrs.LocalPlayer and plrs.LocalPlayer.Character and plrs.LocalPlayer.Character:FindFirstChild("Torso") and plrs.LocalPlayer.Character.Humanoid repeat wait() until mouse
local torso = plrs.LocalPlayer.Character:FindFirstChild("Torso");local noclip = false;local flying = false;local terbang = true;local deb = true;local ctrl = {f = 0, b = 0, l = 0, r = 0};local lastctrl = {f = 0, b = 0, l = 0, r = 0};local maxspeed = 10000;local speed = 5;local Flyspeed = 50;local tolongrotatecar = true;larikencang = 50;lompattinggi = 60;dragondupeaxe = nil;amountspawnaxe = 5;dragondupegift = nil;amountspawngift = 5;dragondupeitems = nil;amountspawnitems = 1;dragondupeblueprint = nil;amountspawnblueprint = 1;
local dragondupechangecam = false;fireworksspam = nil;fireworkselected = "";local speedcamera = 60;local lastUpdate = 0;local camera = Instance.new('Part', workspace)
camera.CanCollide = false
camera.Anchored = true
camera.Transparency = 1
camera.Name = 'FreeCam'
camera.Position = plrs.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,5,0)
--Semua page--
local page1 =  DragonDupe:tab{Name = "Player",Icon = "http://www.roblox.com/asset/?id=6022668935"}
local page2 =  DragonDupe:tab{Name = "World",Icon = "http://www.roblox.com/asset/?id=6034412758"}
local page3 =  DragonDupe:tab{Name = "Tree",Icon = "http://www.roblox.com/asset/?id=6034503369"}
local page4 =  DragonDupe:tab{Name = "Car Tools",Icon = "http://www.roblox.com/asset/?id=6034744029"}
local page5 =  DragonDupe:tab{Name = "Base",Icon = "http://www.roblox.com/asset/?id=6035145364"}
local page6 =  DragonDupe:tab{Name = "Gifts",Icon = "http://www.roblox.com/asset/?id=18679035698"}
local page7 =  DragonDupe:tab{Name = "Items",Icon = "http://www.roblox.com/asset/?id=6031079158"}
local page8 =  DragonDupe:tab{Name = "Way Points",Icon = "http://www.roblox.com/asset/?id=18679082087"}
local page9 =  DragonDupe:tab{Name = "Troll",Icon = "http://www.roblox.com/asset/?id=18679109847"}
local page10 = DragonDupe:tab{Name = "Dupe",Icon = "http://www.roblox.com/asset/?id=6031371075"}
local page11 = DragonDupe:tab{Name = "Other Tools",Icon = "http://www.roblox.com/asset/?id=18661576945"}
local page12 = DragonDupe:tab{Name = "Setting",Icon = "http://www.roblox.com/asset/?id=18661574524"}
--local tabel--
axespawner = {{"Basic Hatchet Axe","BasicHatchet"},{"Plain Axe","Axe1"},{"Steel Axe","Axe2"},{"Hardened Axe","Axe3"},{"Silver Axe","SilverAxe"},{"Beta Axe","AxeBetaTesters"},{"Alpha Axe","AxeAlphaTesters"},{"Rukiry Axe","Rukiryaxe"},{"Hot Fire Axe","FireAxe"},{"Bee Axe","Beesaxe"},{"GingerBread Axe","GingerbreadAxe"},{"Many Axe","ManyAxe"},{"EndTimes Axe","EndTimesAxe"},{"Chicken Axe","AxeChicken"},{"Candy Cane Axe","CandyCaneAxe"},{"Amber Axe","AxeAmber"},{"Bird Axe","AxeTwitter"},{"Rusty Axe","RustyAxe"},{"Candy Corn Axe","CandyCornAxe"},{"Blue Cave Axe","CaveAxe"},{"Green Swamp Axe","AxeSwamp"}}
giftspawner = {{"Eye","Eye1"},{"Sold Sign","PropertySoldSign"},"Skull",{"Dragon Dupe Gift","B1"},"Plate","Cocoa","Duck","Cone",{"Toboggan ?","Toboggan"},{"Scooby","Scoobis"},{"Burger And Cola","BurgerCola"},{"Hatchet Book","HatchetBook"},{"Spare Tire","SpareTire"},{"Lumber Tycoon 2 Book","LumberBook"},{"A Cube Of Ice","IceCube"},"Bowl","Spork","Coal Lump",{"Turkey 1","Turkey"},{"Turkey 2","Turkey2"},{"Turkey 3","Turkey3"},{"Turkey 4","Turkey4"},{"Turkey 5","Turkey5"},{"Turkey Leg","TurkeyLeg"},{"Ham Leg","HamLeg"},{"A Bag Of Candy","BagOfCandy"},{"Bag Of Candy 2","BagOfCandy2"},{"Bag Of Candy 3","BagOfCandy3"},{"Can Of Berry","CanOfCranberry"},{"Candies","Candy"},{"Candy Cane Box","CandyCane"},{"Candy Cane 2","CandyCane2"},{"Candy Cane 3","CandyCane3"},{"Blue Ball","BlueBall"},{"Red Ball","RedBall"},{"Green Ball","GreenBall"},{"Snow Ball","Snowball"},{"Plum Ball","Plumball"},{"Yellow Ball","YellowBall"},{"Black Ball","Blackball"},{"Bowling Ball","BowlingBall"},{"Bowling Pin","BowlingPin"},{"Booble Head","Bobblehead"},{"Booble Head 2","Bobblehead2"},{"Booble Head 3","Bobblehead3"},{"Booble Head 4","Bobblehead4"},{"Booble Head 5","Bobblehead5"},{"Bobble Head 6","Bobblehead6"},{"Bobble Head 7","Bobblehead7"},{"Pumpkin","PumpkinClassic"},{"Dark Pumpkin","PumpkinDark"},{"Green Pumpkin","PumpkinGreen"},{"Cursed Pumpkin","PumpkinCursed"},{"Ghastly Pumpkin","PumpkinGhastly"},{"Flamma Pumpkin","PumpkinFlamma"},{"Lumbkin Pumpkin","PumpkinLumbkin"},{"Boreal Pumpkin","PumpkinBoreal"},{"Christmast 2015 Gift Coal","2015CGift_Coal"},{"Christmast 2015 Gift Red","2015CGift_Red"},{"Christmast 2015 Gift Volcano","2015CGift_Volcano"},{"Christmast 2015 Gift Wobble","2015CGift_Wobble"},{"Christmast 2016 Gift UT","2016CGift_Ut"},{"Christmast 2016 Gift Sweet","2016CGift_Sweet"},{"Christmast 2016 Gift Blue","2016CGift_Blue"},{"Christmast 2016 BIG Gift ","2016CGift_Big"},{"Christmast 2016 Gift Jingle","2016CGift_Jingle"},{"Christmast 2016 Gift Wobble","2016CGift_Wobble"},{"Christmast 2017 Gift Green","2017CGift_Green"},{"Christmast 2017 Gift Great Times","2017CGift_GreatTimes"},{"Christmast 2017 Gift Modern","2017CGift_Modern"},{"Christmast 2017 Gift Wobble","2017CGift_Wobble"},{"Christmast 2017 Gift Gold","2017CGift_Gold"},{"Christmast 2018 Gift Snow","2018CGift_Snow"},{"Christmast 2018 Gift Plate","2018CGift_Plate"},{"Christmast 2018 Gift Wobble","2018CGift_Wobble"},{"Christmast 2018 Gift Cocoa","2018CGift_Cocoa"},{"Christmast 2018 Gift Candy","2018CGift_Candy"},{"Christmast 2018 Gift Duck","2018CGift_Duck"},{"Christmast 2018 Gift Cone","2018CGift_Cone"},{"Christmast 2018 Gift Sled","2018CGift_Sled"},{"Christmast 2018 Gift GingerBox","2018CGift_GingerAxe"},{"Christmast 2018 Gift Plum","2018CGift_Plum"},{"Christmast 2019 Gift Wobble","2019CGift_Wobble_"},{"Christmast 2019 Gift Yellow","2019CGift_Yellow_"},{"Christmast 2019 Gift Bowl","2019CGift_Bowl"},{"Christmast 2019 Gift Rusty","2019CGift_Rusty"},{"Christmast 2019 Gift Cola","2019CGift_Cola"},{"Christmast 2019 Gift Lukisan","2019CGift_Burnt"},{"Christmast 2020 Gift Teal","2020CGift_Teal"},{"Christmast 2020 Gift Wobble","2020CGift_Wobble"},{"Christmast 2020 Gift Hatchet","2020CGift_Hatchet"},{"Christmast 2020 Gift Wheel","2020CGift_Car"},{"Christmast 2020 Gift Candy","2020CGift_Candy"},{"Christmast 2020 Gift CaveBox","2020CGift_Cave"},{"Christmast 2021 Gift Black","2021CGift_Black"},{"Christmast 2021 Gift Wobble","2021CGift_Wobble"},{"Christmast 2021 Gift Plump","2021CGift_Plump"},{"Christmast 2021 Gift Candy","2021CGift_Candy"},{"Christmast 2021 Gift Lumber","2021CGift_Lumber"},{"Christmast 2021 Gift Bowling Pin","2021CGift_Tall"},}
blueprintspawner = {"Wall2Tall", "Door1", "Door2", "Floor2", "Floor1Small", "Post", "Wedge10", "Wall3Tall", "Wall1Tall", "Wall1", "Wall1Short", "Wall2", "Wall2Short", "Wall1TallCorner", "Wall1Corner", "Wall1ShortCorner", "Wall1Thin", "Wall1TallThin", "Wall1ShortThin", "Wall2TallThin", "Wall2Thin", "Wall2ShortThin", "Wall2TallCorner", "Wall2Corner", "Wall2ShortCorner", "Wall3Thin", "Wall3TallThin", "Wall3Corner", "Wall3TallCorner", "Floor1Large", "Floor1", "Floor2Large", "Floor2Small", "Stair1", "Stair2", "Wedge1_Thin", "Wedge9_Thin", "Wedge4_Thin", "Wedge7_Thin", "Chair1", "Table1", "Table2", "Ladder1", "Cabinet1Thin", "Cabinet1", "Cabinet1CornerTight", "Cabinet1CornerWide", "CounterTop1Thin", "CounterTop1", "CounterTop1Sink", "Floor2Tiny", "Floor1Tiny", "Wedge1", "Wedge2", "Wedge3", "Wedge4", "Wedge8", "Wedge7", "Wedge6", "Wedge2_Thin", "Wedge3_Thin", "Wedge10_Thin", "Wedge9", "Wedge6_Thin", "Wedge8_Thin", "Wedge5", "Wedge5_Thin", "Wall3"}
telelist = {"My Base","Spawn","Wood Dropoff","Dock","Bridge","Shrine Of Sight","The Den","Volcano Win","Ski Lodge","Void"}
woodlands = {"Cave Crawler","Volcano","Swamp","Palm Island 1","Palm Island 2","Palm Island 3","Sakura","Fir","Elm","White","Yellow Glow","Oak","Koa","Ice","End Times"}
kedai ={"Wood r' Us","Land Store","Link's Logic","Fancy Furnishings","Boxed Cars","Fine Arts Shop","Bob's Shack","Strange Man","Geck"}
woodtype ={{"Generic Wood","Generic"},{"Birch Wood","Birch"},{"Walnut Wood","Walnut"},{"Oak Wood","Oak"},{"Pine Wood","Pine"},{"Palm Wood","Palm"},{"Koa Wood","Koa"},{"Red Volcano Wood","Volcano"},{"Green Swamo Wood","GreenSwampy"},{"Golden Wood","GoldSwampy"},{"Pink Wood","GenericSpecial"},{"Yellow SnowGlowing Wood","SnowGlow"},{"Frost Ice Wood","Frost"},{"Blue Cave Wood","CaveCrawler"},{"Phantom Cave Wood","LoneCave"},{"Spooky Wood","Spooky"},{"Neon Spooky Wood","SpookyNeon"}}
allslot ={"Slot 1","Slot 2","Slot 3","Slot 4","Slot 5","Slot 6"}; loadnumberslot = {{"Slot Number 1", 1}, {"Slot Number 2", 2},{"Slot Number 3", 3},{"Slot Number 4", 4},{"Slot Number 5", 5},{"Slot Number 6", 6}}
sawmillitem ={"Sawmill",{"Sawmill 2","Sawmill2"},{"Sawmill 3","Sawmill3"},{"Sawmill 4","Sawmill4"},{"Sawmill 4 Large","Sawmill4L"},{"Log Sweeper","LogSweeper"},{"Straight Conveyor","StraightConveyor"},{"Tight Turn Conveyor","TightTurnConveyor"},{"Tilt Conveyor","TiltConveyor"},{"Funner Conveyor","ConveyorFunner"},{"Support For Conveyor","ConveyorSupports"},{"Switch Conveyor","ConveyorSwitch"},{"Tight Turn Support Conveyor","TightTurnConveyorSupports"},{"Straight Switch Right Conveyor","StraightSwitchConveyorRight"},{"Stright Switch Left Conveyor","StraightSwitchConveyorLeft"}}
glassitem ={{"Glass Door 1","GlassDoor1"},{"Glass Pane Small","GlassPane1"},{"Glass Pane Medium","GlassPane2"},{"Glass Pane Large","GlassPane3"},{"Glass Pane Extra Large","GlassPane4"}}
paintingitem = {{"Painting Of Ship","Painting1"},{"Painting Of Swann","Painting2"},{"Painting Of Sea","Painting3"},{"Painting Of Squidword","Painting4"},{"Painting Of Red & Orange","Painting5"},{"Painting Of Gloomy Sea","Painting6"},{"Painting Of Arctic","Painting7"},{"Painting Of Pineapple","Painting8"},{"Painting Of Giraffe","Painting9"},{"Painting Of Burnt","Painting10"}}
vehicleitem = {"UtilityTruck", "UtilityTruck2", "SmallTrailer", "Pickup1", "Trailer2"}
fungsionalitem ={"Lever0", "Button0","BagOfSand","WorkLight", "ChopSaw", "PressurePlate", "SignalSustain", "Laser", "LaserReceiver", "Hatch", "GateNOT", "GateOR", "GateAND", "GateXOR", "WoodChecker", "SignalDelay", "Sleigh","FireworkLauncher"}
otheritem = {"BagOfSand","CanOfWorms","LightBulb","Dynamite","Bed1","Bed2","FloorLamp1","WallLignt1","WallLight2","Seat_Couch","Seat_Loveseat","Seat_Armchair","Refridgerator","Stove","Dishwasher","Toilet","Lamp1","ToiletGold"}
slotdupemoneyy = "";telelistgo = ""; woodlandsgo = ""; kedaigo = ""; woodpaint ="";selectednumberslot ="";selectedplayergo = "";local semuaplayer = {};Client = replstr.Interaction.ClientSetListPlayer;

for i,v in pairs(plrs:GetChildren()) do
    if not table.find(semuaplayer, v.Name) then
        table.insert(semuaplayer, v.Name)
    end
end

--local fungsi--
function getNextMovement(deltaTime)
	local nextMove = Vector3.new()
	if uis:IsKeyDown("A") or uis:IsKeyDown("Left") then
		nextMove = nextMove + Vector3.new(-1,0,0)
	end
	if uis:IsKeyDown("D") or uis:IsKeyDown("Right") then
		nextMove = nextMove + Vector3.new(1,0,0)
	end
	if uis:IsKeyDown("W") or uis:IsKeyDown("Up") then
		nextMove = nextMove + Vector3.new(0,0,-1)
	end
	if uis:IsKeyDown("S") or uis:IsKeyDown("Down") then
		nextMove = nextMove + Vector3.new(0,0,1)
	end
	if uis:IsKeyDown("Space") or uis:IsKeyDown("Q") then
		nextMove = nextMove + Vector3.new(0,1,0)
	end
	if uis:IsKeyDown("LeftControl") or uis:IsKeyDown("E") then
		nextMove = nextMove + Vector3.new(0,-1,0)
	end
	return CFrame.new( nextMove * (speedcamera * deltaTime) )
end;
function onSelected()
	local char = plrs.LocalPlayer.Character
	if char then
		local root = camera
		currentPos = root.Position
		dragondupechangecam = true
		lastUpdate = tick()
		workspc.CurrentCamera.CameraSubject = root
		plrs.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		while dragondupechangecam do
			local delta = tick()-lastUpdate
			local look = (workspc.CurrentCamera.Focus.p-workspc.CurrentCamera.CoordinateFrame.p).unit
			local move = getNextMovement(delta)
			local pos = root.Position
			root.CFrame = CFrame.new(pos,pos+look) * move
			lastUpdate = tick()
			wait(0.01)
		end
		plrs.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		workspc.CurrentCamera.CameraSubject = plrs.LocalPlayer.Character.Humanoid
		root.Velocity = Vector3.new()
	end
end;
function onDeselected()
	dragondupechangecam = false
end;
larifunc = runserv.RenderStepped:Connect(function() plrs.LocalPlayer.Character.Humanoid.WalkSpeed = larikencang end);
lompfunc = runserv.RenderStepped:Connect(function() plrs.LocalPlayer.Character.Humanoid.JumpPower = lompattinggi end);
function Fly() bg = Instance.new("BodyGyro", torso);bg.P = 9e4;bg.maxTorque = Vector3.new(9e9, 9e9, 9e9);bg.cframe = torso.CFrame;bv = Instance.new("BodyVelocity", torso);bv.velocity = Vector3.new(0,0.1,0);bv.maxForce = Vector3.new(9e9, 9e9, 9e9); repeat wait() plrs.LocalPlayer.Character.Humanoid.PlatformStand = true if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then speed = 5 if speed > maxspeed then speed = maxspeed  end elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then speed = speed-1  if speed < 0 then  speed = 0  end  end; if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then bv.velocity = ((workspc.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((workspc.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - workspc.CurrentCamera.CoordinateFrame.p))*speed; lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}  elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then  bv.velocity = ((workspc.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((workspc.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - workspc.CurrentCamera.CoordinateFrame.p))*speed  else  bv.velocity = Vector3.new(0,0.1,0) end bg.cframe = workspc.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)  until not flying; ctrl = {f = 0, b = 0, l = 0, r = 0};lastctrl = {f = 0, b = 0, l = 0, r = 0};speed = 0; bg:Destroy();bg = nil;bv:Destroy();bv = nil;plrs.LocalPlayer.Character.Humanoid.PlatformStand = false end;mouse.KeyDown:connect(function(key)	if key:lower() == "w" then	ctrl.f = Flyspeed elseif key:lower() == "s" then ctrl.b = -Flyspeed	elseif key:lower() == "a" then ctrl.l = -Flyspeed elseif key:lower() == "d" then ctrl.r = Flyspeed	end end) mouse.KeyUp:connect(function(key) if key:lower() == "w" then ctrl.f = 0	elseif key:lower() == "s" then ctrl.b = 0 elseif key:lower() == "a" then ctrl.l = 0	elseif key:lower() == "d" then	ctrl.r = 0	end end) plrs.LocalPlayer.Character.Humanoid.StateChanged:Connect(function(dragon,dupe) if dupe == Enum.HumanoidStateType.Running then ctrl.f = -1 else ctrl.f = 0 end end) Fly();
function GetCharacter() return plrs.LocalPlayer.Character end;
function Teleport(pos) local Char = GetCharacter() if Char then Char:MoveTo(pos) end end;
function MoneyToText(Tex) plrs.LocalPlayer.PlayerGui.MoneyDisplayGui.Text.Text = Tex   plrs.LocalPlayer.PlayerGui.MoneyDisplayGui.Text.DropShadow.Text = Tex   end;
function Load(NumberSlot) replstr.LoadSaveRequests.RequestLoad:InvokeServer(NumberSlot) end;
function Save(NumberSlot) replstr.LoadSaveRequests.RequestSave:InvokeServer(NumberSlot) end;
function GetBaseMiddle(dragonplayer) for i, v in pairs(workspc.Properties:GetChildren()) do if v.Name == "Property" then	if v:FindFirstChild("Owner") then if v:FindFirstChild("Owner").Value == dragonplayer then	local Pos = v.OriginSquare.CFrame.Position	return Pos	end	end	end	end end;
function makebase(pos) local Event = replstr.PropertyPurchasing.ClientExpandedProperty Event:FireServer(base, pos) end;
local PlayerBasePos = GetBaseMiddle(plrs.LocalPlayer);
function spawnaxe()
    local axeitem = dragondupeaxe;local Amount = amountspawnaxe;local Added;Added = workspc.PlayerModels.ChildAdded:Connect(function(dragon) local Owner, Type = dragon:WaitForChild"Owner", dragon:WaitForChild"Type" 
        if Type.Value == "Blueprint" then replstr.PlaceStructure.ClientPlacedStructure:FireServer(axeitem, plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer, nil, dragon, true) end
end);
for i = 1, Amount do replstr.PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer) task.wait() end task.wait(2) Added:Disconnect() end;
function spawngift()
    local giftitem = dragondupegift;local Amount = amountspawngift;local Added;Added = workspc.PlayerModels.ChildAdded:Connect(function(dragon) local Owner, Type = dragon:WaitForChild"Owner", dragon:WaitForChild"Type" 
        if Type.Value == "Blueprint" then replstr.PlaceStructure.ClientPlacedStructure:FireServer(giftitem, plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer, nil, dragon, true) end
end);
for i = 1, Amount do replstr.PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer) task.wait() end task.wait(2) Added:Disconnect() end;
function spawnitems()
    local itemsitem = dragondupeitems;local Amount = amountspawnitems;local Added;Added = workspc.PlayerModels.ChildAdded:Connect(function(dragon) local Owner, Type = dragon:WaitForChild"Owner", dragon:WaitForChild"Type" 
        if Type.Value == "Blueprint" then replstr.PlaceStructure.ClientPlacedStructure:FireServer(itemsitem, plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer, nil, dragon, true) end
end);
for i = 1, Amount do replstr.PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer) task.wait() end task.wait(2) Added:Disconnect() end;
function spawnblueprint()
    local blueprintitem = dragondupeblueprint;local Amount = amountspawnblueprint;local Added;Added = workspc.PlayerModels.ChildAdded:Connect(function(dragon) local Owner, Type = dragon:WaitForChild"Owner", dragon:WaitForChild"Type" 
        if Type.Value == "Blueprint" then replstr.PlaceStructure.ClientPlacedStructure:FireServer(blueprintitem, plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer, nil, dragon, true) end
end);
for i = 1, Amount do replstr.PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer) task.wait() end task.wait(2) Added:Disconnect() end;
function spawnsawmill()
    local itemsawmilitem = sawmillitemspawn;local Amount = amountspawnsawmill;local Added;Added = workspc.PlayerModels.ChildAdded:Connect(function(dragon) local Owner, Type = dragon:WaitForChild"Owner", dragon:WaitForChild"Type" 
        if Type.Value == "Blueprint" then replstr.PlaceStructure.ClientPlacedStructure:FireServer(itemsawmilitem, plrs.LocalPlayer.Character["Left Leg"].CFrame*CFrame.new(10,-1,1), plrs.LocalPlayer, nil, dragon, true) end
end);
for i = 1, Amount do replstr.PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", plrs.LocalPlayer.Character["Left Leg"].CFrame, plrs.LocalPlayer) task.wait() end task.wait(2) Added:Disconnect() end;
function spawnglass()
    local itemglassitem = glassitemspawn;local Amount = amountspawnglass;local Added;Added = workspc.PlayerModels.ChildAdded:Connect(function(dragon) local Owner, Type = dragon:WaitForChild"Owner", dragon:WaitForChild"Type" 
        if Type.Value == "Blueprint" then replstr.PlaceStructure.ClientPlacedStructure:FireServer(itemglassitem, plrs.LocalPlayer.Character["Left Arm"].CFrame*CFrame.new(5,-3,1), plrs.LocalPlayer, nil, dragon, true) end
end);
for i = 1, Amount do replstr.PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer) task.wait() end task.wait(2) Added:Disconnect() end;
function spawnpainting()
    local itempaintingitem = paintingitemspawn;local Amount = amountspawnpainting;local Added;Added = workspc.PlayerModels.ChildAdded:Connect(function(dragon) local Owner, Type = dragon:WaitForChild"Owner", dragon:WaitForChild"Type" 
        if Type.Value == "Blueprint" then replstr.PlaceStructure.ClientPlacedStructure:FireServer(itempaintingitem, plrs.LocalPlayer.Character["Right Arm"].CFrame*CFrame.new(1,-3,1), plrs.LocalPlayer, nil, dragon, true) end
end);
for i = 1, Amount do replstr.PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer) task.wait() end task.wait(2) Added:Disconnect() end;
function spawnvehicle()
    local itemvehicleitem = vehicleitemspawn;local Amount = amountspawnvehicle;local Added;Added = workspc.PlayerModels.ChildAdded:Connect(function(dragon) local Owner, Type = dragon:WaitForChild"Owner", dragon:WaitForChild"Type" 
        if Type.Value == "Blueprint" then replstr.PlaceStructure.ClientPlacedStructure:FireServer(itemvehicleitem, plrs.LocalPlayer.Character["Left Leg"].CFrame*CFrame.new(5,0,1), plrs.LocalPlayer, nil, dragon, true) end
end);
for i = 1, Amount do replstr.PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer) task.wait() end task.wait(2) Added:Disconnect() end;
function spawnfungsionalitem()
    local itemsfungsionalitem = fungsionalitemspawn;local Amount = amountspawnfungsionalitem;local Added;Added = workspc.PlayerModels.ChildAdded:Connect(function(dragon) local Owner, Type = dragon:WaitForChild"Owner", dragon:WaitForChild"Type" 
        if Type.Value == "Blueprint" then replstr.PlaceStructure.ClientPlacedStructure:FireServer(itemsfungsionalitem, plrs.LocalPlayer.Character["Left Leg"].CFrame*CFrame.new(3,-1,0), plrs.LocalPlayer, nil, dragon, true) end
end);
for i = 1, Amount do replstr.PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer) task.wait() end task.wait(2) Added:Disconnect() end;
function spawnotheritem()
    local itemsotheritem = otheritemspawn;local Amount = amountspawnotheritem;local Added;Added = workspc.PlayerModels.ChildAdded:Connect(function(dragon) local Owner, Type = dragon:WaitForChild"Owner", dragon:WaitForChild"Type" 
        if Type.Value == "Blueprint" then replstr.PlaceStructure.ClientPlacedStructure:FireServer(itemsotheritem, plrs.LocalPlayer.Character["Left Leg"].CFrame*CFrame.new(3,-1,0), plrs.LocalPlayer, nil, dragon, true) end
end);
for i = 1, Amount do replstr.PlaceStructure.ClientPlacedBlueprint:FireServer("Floor1Tiny", plrs.LocalPlayer.Character.Head.CFrame, plrs.LocalPlayer) task.wait() end task.wait(2) Added:Disconnect() end;


function RotateCar()
        if plrs.LocalPlayer.Character.Humanoid.SeatPart ~= nil then 
            Car = plrs.LocalPlayer.Character.Humanoid.SeatPart.Parent
            spawn(function()
            local Pos = CFrame.new(Car.Main.Position)
                for i=1,5 do
                    wait()
                    Car:SetPrimaryPartCFrame(Pos * CFrame.Angles(math.rad(plrs.LocalPlayer.Character.HumanoidRootPart.Orientation.x), math.rad(plrs.LocalPlayer.Character.HumanoidRootPart.Orientation.y), 0))
                    replstr.Interaction.ClientRequestOwnership:FireServer(Car.Main)
                    replstr.Interaction.ClientIsDragging:FireServer(Car.Main)
                end
            end)
        end
end;
function TeleportCar(Pos)
    repeat wait()  until plrs.LocalPlayer and plrs.LocalPlayer.Character 
        if plrs.LocalPlayer.Character.Humanoid.SeatPart ~= nil then 
            Car = plrs.LocalPlayer.Character.Humanoid.SeatPart.Parent
            spawn(function()
                for i=1,5 do
                    wait()
                    Car:SetPrimaryPartCFrame(Pos * CFrame.Angles(math.rad(plrs.LocalPlayer.Character.HumanoidRootPart.Orientation.x), math.rad(plrs.LocalPlayer.Character.HumanoidRootPart.Orientation.y), 0))
                    replstr.Interaction.ClientRequestOwnership:FireServer(Car.Main)
                    replstr.Interaction.ClientIsDragging:FireServer(Car.Main)
                end
            end)
        end
end;
uis.JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		plrs.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
	end
end);
function copotLandSign()
	for J, v in pairs(workspace.PlayerModels:children()) do
		if v.Name == "Model" and v:FindFirstChild("Settings") and v.Settings:FindFirstChild("PropertySoldSign") and v:FindFirstChild("Post") and v.Post.Anchored then
			plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Main.CFrame
			replstr.Interaction.ClientInteracted:FireServer(v, "Take down sold sign")
		end
	end
end;
function copotLandSign2()
	for J, v in pairs(workspace.PlayerModels:children()) do
		if v.Name == "PropertySoldSign" and v:FindFirstChild("Settings") and v.Settings:FindFirstChild("PropertySoldSign") and v:FindFirstChild("Post") and v.Post.Anchored then
			plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Main.CFrame
			replstr.Interaction.ClientInteracted:FireServer(v, "Take down sold sign")
		end
	end
end;
function sellLandSign()
    for J, v in pairs(workspace.PlayerModels:children()) do
		if v.Name == "Model" and v:FindFirstChild("ItemName") and tostring(v.ItemName.Value) == "PropertySoldSign" and v:FindFirstChild("WoodSection") and v.Owner.Value == plrs.LocalPlayer then
            replstr.Interaction.ClientIsDragging:FireServer(v)
			v.Main.CFrame = CFrame.new(314.240784, -2.65742993, 92.957222, 0.999394894, 0.0342548452, -0.00604006927, 5.92512439e-09, 0.173648447, 0.98480773, 0.0347832851, -0.984211802, 0.173543364)
		end
	end
end;
function sellLandSign2()
    for J, v in pairs(workspace.PlayerModels:children()) do
		if v.Name == "PropertySoldSign" and v:FindFirstChild("ItemName") and tostring(v.ItemName.Value) == "PropertySoldSign" and v:FindFirstChild("WoodSection") and v.Owner.Value == plrs.LocalPlayer then
            replstr.Interaction.ClientIsDragging:FireServer(v)
			v.Main.CFrame = CFrame.new(314.240784, -2.65742993, 92.957222, 0.999394894, 0.0342548452, -0.00604006927, 5.92512439e-09, 0.173648447, 0.98480773, 0.0347832851, -0.984211802, 0.173543364)
		end
	end
end;
local mobilterbang = false
repeat wait() until mouse
local flyingcar = true
local deb = true
local ctrlcar = {f = 0, b = 0, l = 0, r = 0}
local lastctrlcar = {f = 0, b = 0, l = 0, r = 0}
local carmaxspeeed = 250
local carsspeed = 10
 
function CarFly()
local carbody = Instance.new("BodyGyro", plrs.LocalPlayer.Character.Torso)
carbody.P = 9e4
carbody.maxTorque = Vector3.new(9e9, 9e9, 9e9)
carbody.cframe = plrs.LocalPlayer.Character.Torso.CFrame
local bv = Instance.new("BodyVelocity", plrs.LocalPlayer.Character.Torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plrs.LocalPlayer.Character.Humanoid.PlatformStand = false
if ctrlcar.l + ctrlcar.r ~= 0 or ctrlcar.f + ctrlcar.b ~= 0 then
carsspeed = carsspeed+125.0+(carsspeed/carmaxspeeed)
if carsspeed > carmaxspeeed then
carsspeed = carmaxspeeed
end
elseif not (ctrlcar.l + ctrlcar.r ~= 0 or ctrlcar.f + ctrlcar.b ~= 0) and carsspeed ~= 0 then
carsspeed = carsspeed-250
if carsspeed < 0 then
carsspeed = 0
end
end
if (ctrlcar.l + ctrlcar.r) ~= 0 or (ctrlcar.f + ctrlcar.b) ~= 0 then
bv.velocity = ((workspc.CurrentCamera.CoordinateFrame.lookVector * (ctrlcar.f+ctrlcar.b)) + ((workspc.CurrentCamera.CoordinateFrame * CFrame.new(ctrlcar.l+ctrlcar.r,(ctrlcar.f+ctrlcar.b)*.2,0).p) - workspc.CurrentCamera.CoordinateFrame.p))*carsspeed
lastctrlcar = {f = ctrlcar.f, b = ctrlcar.b, l = ctrlcar.l, r = ctrlcar.r}
elseif (ctrlcar.l + ctrlcar.r) == 0 and (ctrlcar.f + ctrlcar.b) == 0 and carsspeed ~= 0 then
bv.velocity = ((workspc.CurrentCamera.CoordinateFrame.lookVector * (lastctrlcar.f+lastctrlcar.b)) + ((workspc.CurrentCamera.CoordinateFrame * CFrame.new(lastctrlcar.l+lastctrlcar.r,(lastctrlcar.f+lastctrlcar.b)*.2,0).p) - workspc.CurrentCamera.CoordinateFrame.p))*carsspeed
else
bv.velocity = Vector3.new(0,0.1,0)
end
carbody.cframe = workspc.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrlcar.f+ctrlcar.b)*50*carsspeed/carmaxspeeed),0,0)
until not flyingcar
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrlcar = {f = 0, b = 0, l = 0, r = 0}
carsspeed = 0
carbody:Destroy()
bv:Destroy()
plrs.LocalPlayer.Character.Humanoid.PlatformStand = false
end;
mouse.KeyDown:connect(function(carkey)
if carkey:lower() == "w" then
ctrlcar.f = 1
elseif carkey:lower() == "s" then
ctrlcar.b = -1
elseif carkey:lower() == "a" then
ctrlcar.l = -1
elseif carkey:lower() == "d" then
ctrlcar.r = 1
end
end);
mouse.KeyUp:connect(function(carkey)
if carkey:lower() == "w" then
ctrlcar.f = 0
elseif carkey:lower() == "s" then
ctrlcar.b = 0
elseif carkey:lower() == "a" then
ctrlcar.l = 0
elseif carkey:lower() == "d" then
ctrlcar.r = 0
end
wait(5)
end);
function getangka()
    local xang = math.random(8,18)
    return Vector3.new(xang, xang, xang)
end;
function getRandomColor()
    local red; local green;local blue;
    repeat
    red = math.random(0, 255)
    green = math.random(0, 255)
    blue = math.random(0, 255)
    until red == 0 or green == 0 or blue == 0
    return Color3.fromRGB(red, green, blue)
end;
local AntiB = false
function dragonnantiblacklist() while wait() do
if AntiB == true then repeat wait()
    for i,v in next, workspace.Effects:GetChildren() do
        if v:IsA("BasePart") and v.Name == "BlacklistWall" then
            v:Destroy()
        end  end
        until AntiB == false
    end end end;
function Mod(SelectedPart)
    if SawmillC ~= true then DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Please Re-select Sawmill"; Duration = 3;}
        return
        end
        if SelectedPart.Parent:FindFirstChild("TreeClass") and SelectedPart.Parent:FindFirstChild("Owner") then
        DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Selected Tree = "..SelectedPart.Parent.TreeClass.Value; Duration = 3;}
        Tree = SelectedPart.Parent
        Tree.PrimaryPart = SelectedPart
        game.ReplicatedStorage.Interaction.Verify:FireServer('Item owned by player',Tree)
        Tree:SetPrimaryPartCFrame(Sawmill.Particles.CFrame)
        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Tree)
        end end;
--page 1--
page1:Slider{Name = "Walkspeed", Default = 50, Min = 0, Max = 999, Callback = function(lari) larikencang = lari end};
page1:Slider{Name = "Jump Power",Default = 60,Min = 0,Max = 999,Callback = function(lompat) lompattinggi = lompat end};
page1:Toggle{Name = "Infinite Jump",StartingState = false,Description = nil,Callback = function(dragonjump) InfiniteJumpEnabled = dragonjump end}
page1:Slider{Name = "Hip Height",Default = 0,Min = 0,Max = 999,Callback = function(dragonheight) plrs.LocalPlayer.Character.Humanoid.HipHeight = dragonheight end}
page1:Toggle{Name = "No Clip",StartingState = false,Description = nil,Callback = function(state)  if state  then  for a, b in pairs(workspc:GetChildren()) do if b.Name == plrs.LocalPlayer.Name then for i, v in pairs(workspc[plrs.LocalPlayer.Name]:GetChildren()) do if v:IsA("BasePart") then  v.CanCollide = false end end end end else for a, b in pairs(workspc:GetChildren()) do if b.Name == plrs.LocalPlayer.Name then for i, v in pairs(workspc[plrs.LocalPlayer.Name]:GetChildren()) do if v:IsA("BasePart") then v.CanCollide = true end end end end end end}
page1:Toggle{Name = "Fly",StartingState = true,Description = nil,Callback = function(state) if state == true then terbang = true elseif state == false then  terbang = false   flying = false end end}
page1:Keybind{Name = "Fly Key",	Keybind = Enum.KeyCode.Q, Description = nil, Callback = function()  if terbang == true then if flying then flying = false else flying = true   Fly()   end   end  end}
page1:Slider{Name = "Fly Speed",Default = 50,Min = 0,Max = 999,Callback = function(kecepatan) Flyspeed = kecepatan  end}
page1:Toggle{Name = "Walk On Water",StartingState = false,Description = nil,Callback = function(state) for i, dragonwater in pairs(workspc.Water:GetChildren()) do if dragonwater.Name == "Water" then dragonwater.CanCollide = state end end  end}
page1:Slider{Name = "Max Zoom Out",Default = 200,Min = 0,Max = 99999,Callback = function(dragonzoom) plrs.LocalPlayer.CameraMaxZoomDistance = dragonzoom  end}
page1:Button{Name = "Get All Blueprints",Description = nil,Callback = function() for i,v in pairs(replstr.Purchasables.Structures.BlueprintStructures:GetChildren()) do  local clone = v:Clone();clone.Parent = plrs.LocalPlayer.PlayerBlueprints.Blueprints  end end}
--page 2--
page2:Toggle{Name = "Always Day",StartingState = true,Description = nil,Callback = function(duniadragon) if duniadragon == true then siang = light.Changed:Connect(function() game.Lighting.TimeOfDay = "12:00:00"; game.Lighting.Brightness = 2; game.Lighting.FogEnd = 9999 end) elseif duniadragon == false then siang:Disconnect() end end}
page2:Toggle{Name = "Always Night",StartingState = false,Description = nil,Callback = function(duniadragon) if duniadragon == true then malam = light.Changed:Connect(function() game.Lighting.TimeOfDay = "24:00:00"; game.Lighting.Brightness = 0 end) elseif duniadragon == false then malam:Disconnect() end end}
page2:Toggle{Name = "Remove Shadow",StartingState = true,Description = nil,Callback = function(state) if state == true then light.GlobalShadows = false elseif state == false then light.GlobalShadows = true end  end}
--page 3--
page3:Toggle{Name = "View Phantom Tree",StartingState = false,Description = nil,Callback = function(dragonview) 
    if dragonview == true then
        for J, v in pairs(workspc:GetChildren()) do
			if v.Name == "TreeRegion" and v:FindFirstChildOfClass("Model") then
				if v.Model.TreeClass.Value == "LoneCave" then
					workspace.Camera.CameraSubject = v.Model.WoodSection
				end
			end
		end
	elseif dragonview == false then
		workspace.Camera.CameraSubject = plrs.LocalPlayer.Character
	end
end}
local harddragdragon
local gC
local b0
page3:Toggle{Name = "Hard Drag",StartingState = false,Description = nil,Callback = function(drag) 
    if drag == true then
        harddragdragon = workspace.ChildAdded:connect(function(Z)
            if Z.Name == "Dragger" then
                gC = Z:WaitForChild("BodyGyro")
                b0 = Z:WaitForChild("BodyPosition")
                repeat
                    wait()
                    b0.P = 120000;
                    b0.D = 1000;
                    b0.maxForce = Vector3.new(1, 1, 1) * 1000000;
                    gC.maxTorque = Vector3.new(1, 1, 1) * 200;
                    gC.P = 1200;
                    gC.D = 140
                until not Z
            end
        end)
elseif drag == false then
    gC = nil
    b0 = nil
    harddragdragon:Disconnect()
    harddragdragon:Destroy()
    harddragdragon = nil
end
end}

page3:Button{Name = "Teleport Logs",Description = "Teleport All Logs To You",Callback = function() for _, Log in pairs(workspc.LogModels:GetChildren()) do if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then if Log.Owner.Value == plrs.LocalPlayer then for i,v in pairs(Log:GetChildren()) do if v.Name=="WoodSection" then spawn(function() for i=1,10 do wait() v.CFrame=CFrame.new(plrs.LocalPlayer.Character.Torso.Position + Vector3.new(0, 15, 0)) end end) end end spawn(function() for i=1,20 do wait() replstr.Interaction.ClientIsDragging:FireServer(Log) end end) end end end end}
page3:Button{Name = "Teleport Planks",Description = "Teleport All Planks To You",Callback = function() for _, Plank in pairs(workspc.PlayerModels:GetChildren()) do if Plank.Name=="Plank" and Plank:findFirstChild("Owner") then if Plank.Owner.Value == plrs.LocalPlayer then for i,v in pairs(Plank:GetChildren()) do v.Name="WoodSection"  spawn(function() for i=1,10 do wait() v.CFrame=CFrame.new(plrs.LocalPlayer.Character.Torso.Position + Vector3.new(0, 15, 0)) end end) end end spawn(function() for i=1,20 do wait() replstr.Interaction.ClientIsDragging:FireServer(Plank) end end) end end end}
page3:Button{Name = "Sell Logs",Description = "Sell All Wood",Callback = function() for _, Log in pairs(workspc.LogModels:GetChildren()) do if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then if Log.Owner.Value == plrs.LocalPlayer then for i,v in pairs(Log:GetChildren()) do if v.Name=="WoodSection" then spawn(function() for i=1,10 do wait() v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0) end end) end end spawn(function() for i=1,20 do wait() replstr.Interaction.ClientIsDragging:FireServer(Log) end end) end end end end}
page3:Button{Name = "Sell Planks",Description = "Sell All Planks",Callback = function() for _, Plank in pairs(workspc.PlayerModels:GetChildren()) do if Plank.Name=="Plank" and Plank:findFirstChild("Owner") then if Plank.Owner.Value == plrs.LocalPlayer then for i,v in pairs(Plank:GetChildren()) do v.Name="WoodSection"  spawn(function() for i=1,10 do wait() v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0) end end) end end spawn(function() for i=1,20 do wait() replstr.Interaction.ClientIsDragging:FireServer(Plank) end end) end end end}


page3:Button{Name = "Wood To Sawmill",Description = "Press X (SELECT TREE) & Press C (SELECT SAWMILL)",Callback = function() 
    SawmillC = false
    mouse.KeyDown:connect(function(key)
        if key:lower() == "x" then
        Treee = mouse.Target
        DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Selected Wood"; Duration = 3;}
        end
        end)
        mouse.KeyDown:connect(function(key)
        if key:lower() == "c" then
        if mouse.Target.Parent:FindFirstChild("BlockageAlert") then
        Sawmill = mouse.Target.Parent 
        else 
        Sawmill=mouse.Target.Parent.Parent
        end
        DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Selected Sawmill"; Duration = 3;}
        if Sawmill:FindFirstChild("BlockageAlert") and Sawmill:FindFirstChild("Owner") then
        SawmillC = true
        else
        SawmillC = false
        print"Something went wrong while setting the sawmill!"
        end
        if Treee ~= nil then
        Mod(Treee)
        else
        print("Select tree with 'Q'!")
        end
        end
        end)
end}



--page 4--
page4:Slider{Name = "Car Drift",Default = 20,Min = 0,Max = 999,Callback = function(speed) for i,v in pairs(workspc.PlayerModels:GetChildren()) do if v:FindFirstChild("Seat") and v:FindFirstChild("Configuration") then  v.Configuration.MaxSpeed.Value = speed  end  end end}
page4:Toggle{Name = "Rotate Car",StartingState = true,Description = nil,Callback = function(state) tolongrotatecar = state end}
page4:Keybind{Name = "Rotate Car Key",Keybind = Enum.KeyCode.R,Description = nil,Callback = function() if tolongrotatecar == true then RotateCar() end  end}
page4:Toggle{Name = "Car Walk On Water",StartingState = false,Description = nil,Callback = function(state) for i, dragonwater in pairs(workspc.Water:GetChildren()) do if dragonwater.Name == "Water" then dragonwater.CanCollide = state end end  end}
page4:Toggle{Name = "Flying Car",StartingState = true,Description = nil,Callback = function(state) 
    if state == true then mobilterbang = true 
    elseif state == false then  mobilterbang = false   flyingcar = false end 
end}
page4:Keybind{Name = "Flying Car Key",	Keybind = Enum.KeyCode.Z, Description = nil, Callback = function()  
    if mobilterbang == true then if flyingcar then flyingcar = false else flyingcar = true   CarFly()   end   end  end}

page4:Slider{Name = "Flying Car Speed",Default = 10,Min = 0,Max = 300,Callback = function(kecepatan) carsspeed = kecepatan  end}

page4:Dropdown{Name = "Teleport Car To Location",StartingText = "Spawn",Description = nil,Items = telelist,Callback = function(dragoncar) 
    telelistgo = dragoncar
    if telelistgo == "Spawn" then TeleportCar(CFrame.new(155, 3, 74))
    elseif telelistgo == "Wood Dropoff" then TeleportCar(CFrame.new(315, -0.5, 89.8))
    elseif telelistgo == "Dock" then TeleportCar(CFrame.new(1114, -1, -197))
    elseif telelistgo == "Bridge" then TeleportCar(CFrame.new(113, 11, -977))
    elseif telelistgo == "Shrine Of Sight" then TeleportCar(CFrame.new(-1600, 195, 919))
    elseif telelistgo == "The Den" then TeleportCar(CFrame.new(323, 41, 1930))
    elseif telelistgo == "Volcano Win" then TeleportCar(CFrame.new(-1675, 348, 1476))
    elseif telelistgo == "Ski Lodge" then TeleportCar(CFrame.new(1244, 62, 2306))
    elseif telelistgo == "My Base" then TeleportCar(CFrame.new(PlayerBasePos)) 
    elseif telelistgo == "Void" then TeleportCar(CFrame.new(-469, -232, -4))end end}
page4:Dropdown{Name = "Teleport Car To Wood's Place",StartingText = "Volcano",Description = nil,Items = woodlands,Callback = function(dragoncar) 
    woodlandsgo = dragoncar
    if woodlandsgo == "Cave Crawler" then TeleportCar(CFrame.new(3581, -179, 430))
    elseif woodlandsgo == "Volcano" then TeleportCar(CFrame.new(-1585, 622, 1140))
    elseif woodlandsgo == "Swamp" then TeleportCar(CFrame.new(-1209, 132, -801))
    elseif woodlandsgo == "Palm Island 1" then TeleportCar(CFrame.new(2076, -8, -1527))
    elseif woodlandsgo == "Palm Island 2" then TeleportCar(CFrame.new(2614, -8, -56))
    elseif woodlandsgo == "Palm Island 3" then TeleportCar(CFrame.new(4350, -8, -1800))
    elseif woodlandsgo == "Oak" then TeleportCar(CFrame.new(4963, -0.20, 354))
    elseif woodlandsgo == "Koa" then TeleportCar(CFrame.new(-203, 4, -2041))
    elseif woodlandsgo == "Ice" then TeleportCar(CFrame.new(1458, 409, 3235))
    elseif woodlandsgo == "Yellow Glow" then TeleportCar(CFrame.new(-1132, -2, -948))
    elseif woodlandsgo == "Sakura" then TeleportCar(CFrame.new(235, 57, 1317))
    elseif woodlandsgo == "White" then TeleportCar(CFrame.new(-870, 224, 67))
    elseif woodlandsgo == "Elm" then TeleportCar(CFrame.new(-429, 10, -1452))
    elseif woodlandsgo == "Fir" then TeleportCar(CFrame.new(910, 57, 1502))
    elseif woodlandsgo == "End Times" then TeleportCar(CFrame.new(113, -214, -951)) end end}
page4:Dropdown{Name = "Teleport Car To Store",StartingText = "Strange Man",Description = nil,Items = kedai, Callback = function(dragoncar) 
    kedaigo = dragoncar
    if kedaigo == "Wood r' Us" then TeleportCar(CFrame.new(268.4, 3.2, 52.1))
    elseif kedaigo == "Land Store" then TeleportCar(CFrame.new(250, 3, -99))
    elseif kedaigo == "Link's Logic" then TeleportCar(CFrame.new(4605, 3, -727))
    elseif kedaigo == "Fancy Furnishings" then TeleportCar(CFrame.new(491, 3, -1720))
    elseif kedaigo == "Boxed Cars" then TeleportCar(CFrame.new(509, 3, -1463))
    elseif kedaigo == "Fine Arts Shop" then TeleportCar(CFrame.new(5207, -166, 719))
    elseif kedaigo == "Bob's Shack" then TeleportCar(CFrame.new(260, 8, -2542))
    elseif kedaigo == "Strange Man" then TeleportCar(CFrame.new(1061, 16, 1131))
    elseif kedaigo == "Geck" then TeleportCar(CFrame.new(4089.3, -169.1, 771.9)) end end}

local function Press(Button) replstr.Interaction.RemoteProxy:FireServer(Button) end
local Colors = { "Medium stone grey","Sand green","Sand red","Faded green","Dark grey metallic","Dark grey","Earth yellow","Earth orange","Silver","Brick yellow","Dark red","Hot pink","Rust","Really black","Lemon metalic"}
;vehicleselected = ""; local Car = nil;local C = nil;local FP = nil;local CurColor = nil;
workspc.PlayerModels.ChildAdded:connect(function(v) v:WaitForChild("Owner")
    if v:WaitForChild("PaintParts") then
        FP = v.PaintParts.Part
    end
end)
page4:Toggle{Name = "Select Car",StartingState = false,Description = "Turn On And Click Vehicle Spot",Callback = function(state)   if state == true then tesmouse = mouse.Button1Down:connect(function() if mouse.Target and mouse.Target.Parent.Type and mouse.Target.Parent.Type.Value == "Vehicle Spot" then Car = mouse.Target.Parent:FindFirstChild("ButtonRemote_SpawnButton", true) vehicleselected = mouse.Target.Parent.ItemName.Value DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Selected Vehicle: " .. mouse.Target.Parent.ItemName.Value .. " "; Duration = 5;} end end) elseif state == false then tesmouse:Disconnect() end  end}
page4:Dropdown{Name = "Select Color",StartingText = "Hot Pink",Description = "Select Your Vehicle's Color",Items = Colors,Callback = function(text) CurColor = text end}
page4:Button{Name = "Spawn Selected Color Of Vehicle",Description = nil,Callback = function()
    if CurColor == nil then
        DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Hi.. " .. plrs.LocalPlayer.Name .. " , Please Reselect Vehicle's Color"; Duration = 5;}
    end
    
    repeat wait()  until CurColor ~= nil if Car ~= nil then repeat Press(Car) repeat wait(0.05) until FP ~= C C = FP until FP.BrickColor.Name == CurColor or FP.BrickColor.Name == "Hot pink" elseif Car == nil then print("Coose Car") end end}
--page 5--
page5:Button{Name = "Free Land",Description = "Get Land For Free",Callback = function() replstr.PropertyPurchasing.SetPropertyPurchasingValue:InvokeServer(true) local f8 = nil;	local landarray = {}; for J, v in pairs(workspc.Properties:children()) do if v.Owner.Value == nil then	table.insert(landarray, v)	end	end; local f9 = 9e9;	local fa = plrs.LocalPlayer.Character.HumanoidRootPart.CFrame.p; for J, v in pairs(landarray) do if (v.OriginSquare.CFrame.p - fa).Magnitude < f9 then f8 = v; f9 = (v.OriginSquare.CFrame.p - fa).Magnitude end	end; replstr.PropertyPurchasing.ClientPurchasedProperty:FireServer(f8, f8.OriginSquare.CFrame.p);replstr.PropertyPurchasing.SetPropertyPurchasingValue:InvokeServer(false); plrs.LocalPlayer.Character:MoveTo(f8.OriginSquare.CFrame.p) end}
page5:Button{Name = "Max Land",Description = "Max Your Land",Callback = function() for i, v in pairs(workspc.Properties:GetChildren()) do if v:FindFirstChild("Owner") and v.Owner.Value == plrs.LocalPlayer then base = v; square = v.OriginSquare  end  end; local spos = square.Position; makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z)); makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z)); makebase(CFrame.new(spos.X, spos.Y, spos.Z + 40)); makebase(CFrame.new(spos.X, spos.Y, spos.Z - 40)); makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 40)); makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 40)); makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 40)); makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 40)); makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z)); makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z)); makebase(CFrame.new(spos.X, spos.Y, spos.Z + 80)); makebase(CFrame.new(spos.X, spos.Y, spos.Z - 80)); makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 80)); makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 80)); makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 80)); makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 80)); makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 80)); makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 80)); makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 40)); makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 40)); makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 40)); makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 40)); makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 80)); makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 80))  end}
page5:Button{Name = "Remove Sold Sign",Description = nil,Callback = function() copotLandSign() end}
page5:Button{Name = "Sell Sold Sign",Description = nil,Callback = function() sellLandSign()   end}
page5:Button{Name = "Remove Spawned Sold Sign",Description = nil,Callback = function()  copotLandSign2() end}
page5:Button{Name = "Sell Spawned Sold Sign",Description = nil,Callback = function() sellLandSign2()   end}
page5:Button{Name = "Wipe My Current Base",Description = nil,Callback = function() 
for i, v in pairs(workspc.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value ~= nil and v.Owner.Value == plrs.LocalPlayer and v:FindFirstChild("ItemName") and v:FindFirstChild("Type") and (v.PrimaryPart ~= nil or v:FindFirstChild("MainCFrame")) then
replstr.Interaction.DestroyStructure:FireServer(v)
end
end
end}
page5:Dropdown{Name = "Select Slot",StartingText = "Select...",Description = "Select Slot To Load",Items = loadnumberslot, Callback = function(slot) selectednumberslot = slot end}
page5:Button{Name = "Load Slot Without Saving",Description = nil,Callback = function() if plrs.LocalPlayer.CurrentSaveSlot.Value ~= -1 then DragonDupe:Notification{Title = "Dragon Dupe"; Text = "I Have Detected That Slot Number "..plrs.LocalPlayer.CurrentSaveSlot.Value.." is Currently Loaded. Please Unload This Slot!"; Duration = 7;} else Load(selectednumberslot)  end end}
page5:Button{Name = "Save Selected Slot",Description = nil,Callback = function() DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Please Wait ..."; Duration = 3;} task.wait(3) DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Slot Saved"; Duration = 5;} Save(selectednumberslot) end}
page5:Button{Name = "Get All Blueprints",Description = nil,Callback = function() for i,v in pairs(replstr.Purchasables.Structures.BlueprintStructures:GetChildren()) do  local clone = v:Clone();clone.Parent = plrs.LocalPlayer.PlayerBlueprints.Blueprints  end end}
page5:Dropdown{Name = "Select Color",StartingText = "Select...",Description = "Select Your Blueprint's Color",Items = woodtype, Callback = function(paint) woodpaint = paint end}
page5:Toggle{Name = "Painting",StartingState = false,Description = "Turn On And Click Blueprint",Callback = function(state)  if state == true then PaintBp = mouse.Button1Down:connect(function() if mouse.Target.Parent:FindFirstChild("Type") or mouse.Target.Parent:FindFirstChild("BlueprintWoodClass") then local Cframe if mouse.Target.Parent:FindFirstChild("MainCFrame") then Cframe = mouse.Target.Parent.MainCFrame.Value else Cframe = mouse.Target.Parent.PrimaryPart.CFrame  end if mouse.Target.Parent ~= nil then  replstr.PlaceStructure.ClientPlacedStructure:FireServer(mouse.Target.Parent.ItemName.Value, Cframe, plrs.LocalPlayer, woodpaint, mouse.Target.Parent, true)  end end end) elseif state == false then PaintBp:Disconnect() end end}
page5:Dropdown{Name = "Blueprint Spawner",StartingText = "Select Blueprint",Description = "Select Blueprint",Items = blueprintspawner, Callback = function(text) dragondupeblueprint = text end}
page5:Slider{Name = "Amount Blueprint", Default = 1, Min = 1, Max = 10, Callback = function(banyaknya) amountspawnblueprint = banyaknya end}
page5:Button{Name = "Spawn Blueprint",Description = "Spawn Selected Blueprint",Callback = function() if dragondupeblueprint == nil then DragonDupe:Notification{Title = "Dragon Dupe"; Text = plrs.LocalPlayer.Name.." Please Choose Your Blueprint"; Duration = 5;} else spawnblueprint() end end}
--page 6--
page6:Dropdown{Name = "Axe Spawner",StartingText = "Select Axe",Description = "Select Your Axe",Items = axespawner,Callback = function(text) dragondupeaxe = text end}
page6:Slider{Name = "Amount Axe", Default = 5, Min = 1, Max = 100, Callback = function(banyaknya) amountspawnaxe = banyaknya end}
page6:Button{Name = "Spawn Axe",Description = "Spawn Selected Axe",Callback = function() if dragondupeaxe == nil then DragonDupe:Notification{Title = "Dragon Dupe"; Text = plrs.LocalPlayer.Name.." Please Choose Your Axe"; Duration = 5;} else spawnaxe() end end}
page6:Dropdown{Name = "Gift Spawner",StartingText = "Select Gift",Description = "Select Gift",Items = giftspawner, Callback = function(text) dragondupegift = text end}
page6:Slider{Name = "Amount Gift", Default = 5, Min = 1, Max = 100, Callback = function(banyaknya) amountspawngift = banyaknya end}
page6:Button{Name = "Spawn Gift",Description = "Spawn Selected Gift",Callback = function() if dragondupegift == nil then DragonDupe:Notification{Title = "Dragon Dupe"; Text = plrs.LocalPlayer.Name.." Please Choose Your Gift"; Duration = 5;} else spawngift() end end}
page6:Toggle{Name = "Leaked Items",StartingState = false,Description = nil,Callback = function(icedragon) if icedragon == true then if not game:GetService('Workspace'):FindFirstChild('Purchasables') then local clone=game:GetService('ReplicatedStorage').Purchasables:Clone();clone.Parent=game:GetService('Workspace') end elseif icedragon == false then if game:GetService('Workspace'):FindFirstChild('Purchasables')then game:GetService('Workspace'):FindFirstChild('Purchasables'):Destroy(); end end end}
--page 7--
page7:Dropdown{Name = "Select Sawmill",StartingText = "Select Sawmill",Description = nil,Items = sawmillitem,Callback = function(item) sawmillitemspawn = item end}
page7:Slider{Name = "Amount Sawmill", Default = 1, Min = 1, Max = 10, Callback = function(banyaknya) amountspawnsawmill = banyaknya end}
page7:Button{Name = "Spawn Sawmill",Description = nil,Callback = function() if sawmillitemspawn == nil then DragonDupe:Notification{Title = "Dragon Dupe"; Text = plrs.LocalPlayer.Name.." Please Choose Your Sawmill"; Duration = 5;} else spawnsawmill() end end}
page7:Dropdown{Name = "Select Vehicle",StartingText = "Select Vehicle",Description = nil,Items = vehicleitem,Callback = function(item) vehicleitemspawn = item end}
page7:Slider{Name = "Amount Vehicle", Default = 1, Min = 1, Max = 10, Callback = function(banyaknya) amountspawnvehicle = banyaknya end}
page7:Button{Name = "Spawn Vehicle",Description = nil,Callback = function() if vehicleitemspawn == nil then DragonDupe:Notification{Title = "Dragon Dupe"; Text = plrs.LocalPlayer.Name.." Please Choose Your Vehicle"; Duration = 5;} else spawnvehicle() end end}
page7:Dropdown{Name = "Select Glass",StartingText = "Select Glass",Description = nil,Items = glassitem,Callback = function(item) glassitemspawn = item end}
page7:Slider{Name = "Amount Glass", Default = 3, Min = 1, Max = 50, Callback = function(banyaknya) amountspawnglass = banyaknya end}
page7:Button{Name = "Spawn Glass",Description = nil,Callback = function() if glassitemspawn == nil then DragonDupe:Notification{Title = "Dragon Dupe"; Text = plrs.LocalPlayer.Name.." Please Choose Your Glass"; Duration = 5;} else spawnglass() end end}
page7:Dropdown{Name = "Select Painting",StartingText = "Select Painting",Description = nil,Items = paintingitem,Callback = function(item) paintingitemspawn = item end}
page7:Slider{Name = "Amount Painting", Default = 2, Min = 1, Max = 10, Callback = function(banyaknya) amountspawnpainting = banyaknya end}
page7:Button{Name = "Spawn Painting",Description = nil,Callback = function() if paintingitemspawn == nil then DragonDupe:Notification{Title = "Dragon Dupe"; Text = plrs.LocalPlayer.Name.." Please Choose Your Painting"; Duration = 5;} else spawnpainting() end end}
page7:Dropdown{Name = "Select Functional Item",StartingText = "Select Item",Description = nil,Items = fungsionalitem,Callback = function(item) fungsionalitemspawn = item end}
page7:Slider{Name = "Amount Functional Item", Default = 1, Min = 1, Max = 10, Callback = function(banyaknya) amountspawnfungsionalitem = banyaknya end}
page7:Button{Name = "Spawn Functional Item",Description = nil,Callback = function() if fungsionalitemspawn == nil then DragonDupe:Notification{Title = "Dragon Dupe"; Text = plrs.LocalPlayer.Name.." Please Choose Your Functional Item"; Duration = 5;} else spawnfungsionalitem() end end}
page7:Dropdown{Name = "Select Other Items",StartingText = "Select Item",Description = nil,Items = otheritem,Callback = function(item) otheritemspawn = item end}
page7:Slider{Name = "Amount Other Items", Default = 3, Min = 1, Max = 10, Callback = function(banyaknya) amountspawnotheritem = banyaknya end}
page7:Button{Name = "Spawn Selected Other Items",Description = nil,Callback = function() if otheritemspawn == nil then DragonDupe:Notification{Title = "Dragon Dupe"; Text = plrs.LocalPlayer.Name.." Please Choose Your Other Item"; Duration = 5;} else spawnotheritem() end end}
--page 8--
page8:Dropdown{Name = "Select Player",StartingText = plrs.LocalPlayer.Name,Description = nil,Items = semuaplayer, Callback = function(dragonfly) selectedplayergo = dragonfly end}
page8:Button{Name = "Teleport To Player",Description = nil,Callback = function() targetPlayer = plrs:FindFirstChild(selectedplayergo) plrs.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position) end}
page8:Button{Name = "Teleport To Player's Base",Description = nil,Callback = function() for i, v in pairs(workspc.Properties:GetChildren()) do if v.Owner.Value == plrs[selectedplayergo] then  plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame  end  end end}
page8:Dropdown{Name = "Teleport",StartingText = "Select Location",Description = nil,Items = telelist, Callback = function(dragonfly) 
    telelistgo = dragonfly
    if telelistgo == "Spawn" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(155, 3, 74)
    elseif telelistgo == "Wood Dropoff" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(315, -0.5, 89.8)
    elseif telelistgo == "Dock" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114, -1, -197)
    elseif telelistgo == "Bridge" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113, 11, -977)
    elseif telelistgo == "Shrine Of Sight" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1600, 195, 919)
    elseif telelistgo == "The Den" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(323, 41, 1930)
    elseif telelistgo == "Volcano Win" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1675, 348, 1476)
    elseif telelistgo == "Ski Lodge" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1244, 62, 2306)
    elseif telelistgo == "Void" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-469, -232, -4)
    elseif telelistgo == "My Base" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(PlayerBasePos)) end
end}
page8:Dropdown{Name = "Wood's Place",StartingText = "Teleport To Wood Location",Description = "Teleport To Location",Items = woodlands, Callback = function(dragonnest) 
    woodlandsgo = dragonnest
    if woodlandsgo == "Cave Crawler" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3581, -179, 430)
    elseif woodlandsgo == "Volcano" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1585, 622, 1140)
    elseif woodlandsgo == "Swamp" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1209, 132, -801)
    elseif woodlandsgo == "Palm Island 1" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2076, -8, -1527)
    elseif woodlandsgo == "Palm Island 2" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2614, -8, -56)
    elseif woodlandsgo == "Palm Island 3" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4350, -8, -1800)
    elseif woodlandsgo == "Oak" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4963, -0.20, 354)
    elseif woodlandsgo == "Koa" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-203, 4, -2041)
    elseif woodlandsgo == "Ice" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1458, 409, 3235)
    elseif woodlandsgo == "Yellow Glow" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1132, -2, -948)
    elseif woodlandsgo == "Sakura" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(235, 57, 1317)
    elseif woodlandsgo == "White" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-870, 224, 67)
    elseif woodlandsgo == "Elm" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-429, 10, -1452)
    elseif woodlandsgo == "Fir" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(910, 57, 1502)
    elseif woodlandsgo == "End Times" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113, -214, -951) end
end}
page8:Dropdown{Name = "Stores",StartingText = "Teleport To Store Location",Description = "Teleport To Location",Items = kedai, Callback = function(dragonfree) 
    kedaigo = dragonfree
    if kedaigo == "Wood r' Us" then plrs.LocalPlayer.Character:MoveTo(Vector3.new(268.4, 3.2, 52.1))
    elseif kedaigo == "Land Store" then plrs.LocalPlayer.Character:MoveTo(Vector3.new(250, 3, -99))
    elseif kedaigo == "Link's Logic" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4605, 3, -727)
    elseif kedaigo == "Fancy Furnishings" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(491, 3, -1720)
    elseif kedaigo == "Boxed Cars" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(509, 3, -1463)
    elseif kedaigo == "Fine Arts Shop" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5207, -166, 719)
    elseif kedaigo == "Bob's Shack" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(260, 8, -2542)
    elseif kedaigo == "Strange Man" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1061, 16, 1131)
    elseif kedaigo == "Geck" then plrs.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4089.3, -169.1, 771.9) end
end}
page8:Toggle{ Name = "[CTRL + CLICK] > Teleport", StartingState = false, Description = "Click To Teleport", Callback = function(state) 
        if state == true then CLICKTP = uis.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and uis:IsKeyDown(Enum.KeyCode.LeftControl) then Teleport(mouse.Hit.p) end  end)
        elseif state == false then CLICKTP:Disconnect() end end}
--page 9--
page9:Toggle{Name = "Anti Blacklist",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        if state == true then
            AntiB = true
            dragonnantiblacklist();
            DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Hi.. "..plrs.LocalPlayer.Name..", You now have anti-blacklist protection !"; Duration = 5;}
        elseif state == false then
            AntiB = false
        end
    end}
page9:Toggle{Name = "Free Camera",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        if state == true then
            onSelected()
            elseif state == false then
            onDeselected()
        end   end}
page9:Slider{Name = "Free Camera Speed",Default = 60,Min = 0,Max = 999,Callback = function(dragonvalue) speedcamera = dragonvalue end}
page9:Button{Name = "Blow Up All Dynamite",Description = nil,Callback = function() 
    for i,v in pairs(workspace.PlayerModels:GetChildren()) do
        if v:FindFirstChild('ButtonRemote_Main') then   wait(1)
        game:GetService('ReplicatedStorage').Interaction.RemoteProxy:FireServer(v:FindFirstChild('ButtonRemote_Main'))   end    end
    task.wait(0.5)
    DragonDupe:Notification{Title = "Dragon Dupe"; Text = "All Dynamite Blowed Up"; Duration = 3;} end}

page9:Toggle{Name = "Select Fireworks",StartingState = false,Description = "Turn On And Click Firework",Callback = function(state)   
    if state == true then tesmousefirework = mouse.Button1Down:connect(function() 
        if mouse.Target and mouse.Target.Parent.Type and mouse.Target.Parent.Type.Value == "Structure" then 
            fireworksspam = mouse.Target.Parent:FindFirstChild("ButtonRemote_Button") 
            fireworkselected = mouse.Target.Parent.ItemName.Value
            DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Selected Firework: " .. mouse.Target.Parent.ItemName.Value .. " "; Duration = 5;} 
        end end) 
    elseif state == false then tesmousefirework:Disconnect() end  end}

page9:Toggle{Name = "Spam Fireworks Launcer",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        if state == true then
                _G.stop_firespam = false
                repeat
                    game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(fireworksspam)
                    game:GetService'RunService'.Stepped:wait()
                until _G.stop_firespam
        elseif state == false then
            _G.stop_firespam = true
        end
    end}
page9:Toggle{Name = "Fling Items",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        if state == true then
            DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Sorry, "..plrs.LocalPlayer.Name.."Your Executor Didn't Suppor For This Function !"; Duration = 5;}
        end
    end}

page9:Toggle{
	Name = "Invisible",
	StartingState = false,
	Description = nil,
	Callback = function(dragoninvis) 
        if dragoninvis then  invisnum = 1;  else invisnum = 0;  end  plrs.LocalPlayer.Character.Torso.Transparency = invisnum;plrs.LocalPlayer.Character.Head.Transparency  = invisnum;plrs.LocalPlayer.Character["Left Arm"].Transparency = invisnum;plrs.LocalPlayer.Character["Right Arm"].Transparency = invisnum;plrs.LocalPlayer.Character["Left Leg"].Transparency = invisnum;plrs.LocalPlayer.Character["Right Leg"].Transparency = invisnum
            if plrs.LocalPlayer.Character.Head:FindFirstChild("face") then plrs.LocalPlayer.Character.Head:FindFirstChild("face").Transparency = invisnum end  for _, item in pairs (plrs.LocalPlayer.Character:GetChildren()) do if item.ClassName == "Accessory" or item.ClassName == "Tool" then  for _, accessoryPart in pairs (item:GetChildren()) do if accessoryPart.ClassName == "Part" then accessoryPart.Transparency = invisnum end end end end end}
page9:Toggle{
	Name = "Superman Eye",
	StartingState = false,
	Description = nil,
	Callback = function(superman)
    if superman == true then for dupe, dragon in pairs(workspc:GetDescendants()) do
        if dragon:IsA("BasePart") then
            local transpVal = Instance.new("NumberValue", dragon)
            transpVal.Name = "transpVal"
            transpVal.Value = dragon.Transparency
            dragon.Transparency = dragon.Transparency + 0.75
            end   end
        elseif superman == false then for dragon, dupe in pairs(workspc:GetDescendants()) do
            if dupe:IsA("BasePart") and dupe:FindFirstChild("transpVal") then
            dupe.Transparency = dupe:FindFirstChild("transpVal").Value
            dupe:FindFirstChild("transpVal"):Destroy()
        end end end end}
--page 10--
page10:Dropdown{Name = "Slot Number",StartingText = "Select...",Description = "Choose Your Slot",Items = allslot,Callback = function(dragonnestreturn) slotdupemoneyy = dragonnestreturn end}
page10:Button{Name = "Dupe Money",
	Description = "Start Dupe",
	Callback = function() local DupeMoney;if slotdupemoneyy == "Slot 1" then DupeMoney = 1 elseif slotdupemoneyy == "Slot 2" then DupeMoney = 2 elseif slotdupemoneyy == "Slot 3" then DupeMoney = 3 elseif slotdupemoneyy == "Slot 4" then DupeMoney = 4 elseif slotdupemoneyy == "Slot 5" then DupeMoney = 5 elseif slotdupemoneyy == "Slot 6" then DupeMoney = 6 end
if plrs.LocalPlayer.CurrentSaveSlot.Value ~= -1 and DupeMoney ~= nil then
    DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Don't Load Any Slot !"; Duration = 5;}
return
end
if DupeMoney ~= nil then
if Duping == true then
    DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Please Wait ..."; Duration = 5;}
return
end
Duping = true
local Folder
if plrs.LocalPlayer.CurrentSaveSlot.Value == -1 then
if not workspc:FindFirstChild("Folder") then
Folder = Instance.new("Folder", workspc)
end

workspc.Folder.ChildAdded:connect(function(v)
if v.Name == "Part" then
workspc.Folder.Part:Destroy()
wait()
replstr.Transactions.ClientToServer.Donate:InvokeServer(plrs.LocalPlayer, plrs.LocalPlayer.leaderstats.Money.Value, 1)
DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Your Money Duped!"; Duration = 5;}
end
end)

Load(DupeMoney)
if plrs.LocalPlayer.leaderstats.Money.Value == 20 then DragonDupe:Notification{Title = "Dragon Dupe"; Text = "You Must Load Your Base"; Duration = 5;} Duping = false return end
DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Please Wait 60 Seconds"; Duration = 5;}
for i=59,0,-1 do
MoneyToText(i)
wait(1)
end
local a = Instance.new("Part", Folder)
wait(0.1)
Load(-1)
workspc.Folder:Destroy()
Duping = false
DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Please Load Your Base"; Duration = 15;}
end
end
end}
page10:Button{Name = "Clone Axes",Description = "Clone Your Axes",Callback = function() local tool = plrs.LocalPlayer.Backpack.Tool;local toolclone = tool:Clone();toolclone.Parent = plrs.LocalPlayer.Backpack end}
page10:Button{Name = "Count Axes",Description = "Count Your Axes",Callback = function()
    local Amount = 0
    for a,b in pairs(plrs.LocalPlayer.Backpack:GetChildren()) do
    if b.Name == "Tool" and b.ClassName == "Tool" then
      Amount = Amount + 1    end    end
    DragonDupe:Notification{Title = "Dragon Dupe"; Text = "You have "..Amount.." Axes in Total"; Duration = 5;}   
 end}
 page10:Button{Name = "Drop Axes",Description = "Drop All Axes In Your Backpack",Callback = function()
    for a,b in pairs(plrs.LocalPlayer.Backpack:GetChildren()) do
        if b.Name == "Tool" and b.ClassName == "Tool" then
          replstr.Interaction.ClientInteracted:FireServer(b, "Drop tool", plrs.LocalPlayer.Character.Head.CFrame)
        end end
    task.wait(0.5)
    DragonDupe:Notification{Title = "Dragon Dupe"; Text = "You Have Been Drop All Of Your Axes"; Duration = 5;}   
 end}
--page11--
page11:Button{Name = "B Tools",Description = nil,Callback = function() local movetool = Instance.new("Tool", plrs.LocalPlayer.Backpack);local deletetool = Instance.new("Tool", plrs.LocalPlayer.Backpack);local undotool = Instance.new("Tool", plrs.LocalPlayer.Backpack);local identifytool = Instance.new("Tool", plrs.LocalPlayer.Backpack);local movedetect = false;local movingpart = nil;local movetransparency = 0;if editedparts == nil then editedparts = {};parentfix = {};positionfix = {} end; deletetool.Name = "Delete"
undotool.Name = "Undo";identifytool.Name = "Identify";movetool.Name = "Move";undotool.CanBeDropped = false;deletetool.CanBeDropped = false;identifytool.CanBeDropped = false;movetool.CanBeDropped = false;undotool.RequiresHandle = false;deletetool.RequiresHandle = false;identifytool.RequiresHandle = false;movetool.RequiresHandle = false
        deletetool.Activated:Connect(function() DragonDupe:Notification{Title = "Dragon Dupe"; Text = "You have deleted "..mouse.Target.Name; Duration = 1;}
        table.insert(editedparts, mouse.Target) table.insert(parentfix, mouse.Target.Parent) table.insert(positionfix, mouse.Target.CFrame) mouse.Target.Parent = nil end)
        undotool.Activated:Connect(function()
        DragonDupe:Notification{Title = "Dragon Dupe"; Text = "You have undone "..editedparts[#editedparts].Name; Duration = 1;}
        editedparts[#editedparts].Parent = parentfix[#parentfix]
        editedparts[#editedparts].CFrame = positionfix[#positionfix]
        table.remove(positionfix, #positionfix)
        table.remove(editedparts, #editedparts)
        table.remove(parentfix, #parentfix)
        end)
        identifytool.Activated:Connect(function()
        DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Instance: "..mouse.Target.ClassName.."\nName: "..mouse.Target.Name; Duration = 1;}
        end)
        movetool.Activated:Connect(function()
        DragonDupe:Notification{Title = "Dragon Dupe"; Text = "You are moving: "..mouse.Target.Name; Duration = 1;}
        movingpart = mouse.Target
        movedetect = true
        movingpart.CanCollide = false
        movetransparency = movingpart.Transparency
        movingpart.Transparency = 0.5
        mouse.TargetFilter = movingpart
        table.insert(editedparts, movingpart)
        table.insert(parentfix, movingpart.Parent)
        table.insert(positionfix, movingpart.CFrame)
        movingpart.Transparency = movingpart.Transparency / 2
        repeat
        mouse.Move:Wait()
        movingpart.CFrame = CFrame.new(mouse.Hit.p)
        until movedetect == false
        end)
        movetool.Deactivated:Connect(function() DragonDupe:Notification{Title = "Dragon Dupe"; Text = "You have stopped moving: "..mouse.Target.Name; Duration = 1;}
        movingpart.CanCollide = true
        movedetect = false
        mouse.TargetFilter = nil
        movingpart.Transparency = movetransparency
        end) end}

page11:Button{Name = "Buy Lower Bridge",Description = nil,Callback = function()
    game:GetService('ReplicatedStorage').NPCDialog.PlayerChatted:InvokeServer({ID = 14, Name = 'Seranok', Dialog = Instance.new('Dialog'), Character = workspace.Bridge.TollBooth0.Seranok}, 'ConfirmPurchase')
end}
page11:Button{Name = "Willy Wonka Theme",Description = nil,Callback = function()   
    for i, v in pairs(game.Workspace:GetDescendants()) do if v.Name == "LeafPart" then 
        v.Size = getangka()
        v.Shape = Enum.PartType.Ball 
        v.Color = getRandomColor()
        v.Material = Enum.Material.Concrete
    end  end
    
    for i, v in pairs(game.Workspace:GetDescendants()) do if v.Name == "Water" and v:IsA("Part") then 
        v.Color = Color3.fromRGB(111,56,0)
        v.Material = Enum.Material.Glass
    end  end
end}
page11:Button{Name = "Neon Theme",Description = nil,Callback = function()   
    for i, v in pairs(game.Workspace:GetDescendants()) do if v.Name == "LeafPart" then 
        v.Size = getangka()
        v.Shape = Enum.PartType.Ball 
        v.Color = getRandomColor()
        v.Material = Enum.Material.Neon
    end  end
    
    for i, v in pairs(game.Workspace:GetDescendants()) do if v.Name == "Water" and v:IsA("Part") then 
        v.Color = getRandomColor()
        v.Material = Enum.Material.Neon
    end  end
    for i, v in pairs(game.Workspace:GetDescendants()) do if v.Name == "WoodSection" and v:IsA("Part") then 
        v.Color = getRandomColor()
        v.Material = Enum.Material.Neon
    end  end
end}
page11:Button{Name = "Rainbow Theme",Description = nil,Callback = function()   
    for i, v in pairs(game.Workspace:GetDescendants()) do if v.Name == "LeafPart" then 
        v.Size = getangka()
        v.Shape = Enum.PartType.Ball 
        v.Color = getRandomColor()
        v.Material = Enum.Material.Neon
    end  end
    
    for i, v in pairs(game.Workspace:GetDescendants()) do if v.Name == "Water" and v:IsA("Part") then 
        v.Color = getRandomColor()
        v.Material = Enum.Material.Neon
    end  end
    for i, v in pairs(game.Workspace:GetDescendants()) do if v.Name == "WoodSection" and v:IsA("Part") then 
        v.Color = getRandomColor()
        v.Material = Enum.Material.Neon
    end  end
end}
--page 12--
local stopLoop = false
function updateAllTextColors()
    local hue = 0
    while not stopLoop do
        for _, obj in pairs(cgui.DragonDupe:GetDescendants()) do
            if obj:IsA("TextLabel") then
                obj.TextColor3 = Color3.fromHSV(hue, 255, 255)
            end
        end
        
        hue = (hue + 0.01) % 1
        
        wait(1)
    end
end
page12:Toggle{Name = "Rainbow Color",StartingState = false,Description = nil,Callback = function(state) 
    if state == true then 
        wait(2)
        stopLoop = false
        updateAllTextColors()
    elseif state == false then stopLoop = true end end}
page12:Toggle{Name = "Anti AFK",StartingState = true,Description = nil,Callback = function(state) if state == true then plrs.LocalPlayer.Idled:connect(function() virtus:Button2Down(Vector2.new(0, 0), workspc.CurrentCamera.CFrame) wait(1) virtus:Button2Up(Vector2.new(0, 0), workspc.CurrentCamera.CFrame) end) end end}
page12:Toggle{Name = "Invisible Camera",StartingState = true,Description = nil,Callback = function(state) 
    if state == true then plrs.LocalPlayer.DevCameraOcclusionMode = "Invisicam"
    elseif state == false then plrs.LocalPlayer.DevCameraOcclusionMode = "Zoom" end end}

page12:Button{Name = "Whitelist All Players",Description = nil,Callback = function() 
    for i, v in pairs(plrs:GetPlayers()) do
        if v.Name ~= plrs.LocalPlayer.Name then
            Client:InvokeServer(plrs.LocalPlayer.WhitelistFolder, v, true)
        end
    end
    plrs.PlayerAdded:connect(function(plr)
        Client:InvokeServer(plrs.LocalPlayer.WhitelistFolder, plr, true)
    end)
    DragonDupe:Notification{Title = "Dragon Dupe"; Text = "You Have Whitelisted All Players"; Duration = 3;}
end}
page12:Button{Name = "Blacklist All Player",Description = nil,Callback = function()
    for i, v in pairs(plrs:GetPlayers()) do
        if v.Name ~= plrs.LocalPlayer.Name then
            Client:InvokeServer(plrs.LocalPlayer.BlacklistFolder, v, true)
        end
    end
    plrs.PlayerAdded:connect(function(plr)
        Client:InvokeServer(plrs.LocalPlayer.BlacklistFolder, plr, true)
    end)
    DragonDupe:Notification{Title = "Dragon Dupe"; Text = "You Have Blacklisted All Players"; Duration = 3;}
 end}
page12:Button{Name = "Reset Character",Description = nil,Callback = function() plrs.LocalPlayer.Character.Head:Destroy() end}
page12:Button{Name = "Rejoin Game",Description = nil,Callback = function() dragonplace:Teleport(game.PlaceId, plrs.LocalPlayer) end}
page12:Button{Name = "Dark Dex",Description = nil,Callback = function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end}


--Gui dibuka--

DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Welcome "..plrs.LocalPlayer.Name; Duration = 5;}
for i, v in pairs(plrs:GetPlayers()) do if v.Name ~= plrs.LocalPlayer.Name then Client:InvokeServer(plrs.LocalPlayer.WhitelistFolder, v, true) end end
plrs.PlayerAdded:connect(function(plr) Client:InvokeServer(plrs.LocalPlayer.WhitelistFolder, plr, true) end)
plrs.ChildAdded:Connect(function(child) for i,v in pairs(plrs:GetChildren()) do if not table.find(semuaplayer, v.Name) then table.insert(semuaplayer, v.Name) end end DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Player "..child.Name.." Has Joined"; Duration = 5;} end) 
plrs.ChildRemoved:Connect(function(child) table.remove(semuaplayer, child.Name)  DragonDupe:Notification{Title = "Dragon Dupe"; Text = "Player "..child.Name.." Has left"; Duration = 5;} end)

--Gui Ditutup--
cgui.ChildRemoved:Connect(function(child) if child.Name == "DragonDupe" then 
    if flying then flying = false end; if terbang then terbang = false end;
    larifunc:Disconnect();
    lompfunc:Disconnect();
    if siang then siang:Disconnect() end;
    if malam then malam:Disconnect() end;
    if PaintBp then PaintBp:Destroy() end;
    if CLICKTP then CLICKTP:Disconnect() end;
    if light.GlobalShadows == false then light.GlobalShadows = true end;
end end)
