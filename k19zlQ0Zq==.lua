--[[
	
	Hello, it's made by Byte.
	It's script for Furry Infection game.
	To just play with other hackers HvH or have fun.
	Also thank you my friends for teaching me in SS scripting.
	
--]]

if(_G.XenoC and _G.XenoC==false)then _G.XenoC=true;end
if(game:service'CoreGui':FindFirstChild('m@th•d'))then game:service'CoreGui':FindFirstChild('m@th•d'):remove()end;task.wait()
_G.XenoC = false
local PLRS,TEAMS,ver = game:service'Players',game:service'Teams','v0.2';
local NGL,NFA,NBT,NBT2,NBT3,TX = Instance.new("ScreenGui"),Instance.new("Frame"),Instance.new("TextButton"),Instance.new("TextButton"),Instance.new("TextButton"),Instance.new("TextLabel")
local lplr,on,waiting = PLRS.LocalPlayer,false,false;
local speaker = {C=lplr.Character,B=lplr.Backpack,T=lplr.Team};
local getHump,getHum,fc,fcc,randomstring,set_properties = function(a)return(a:FindFirstChild('HumanoidRootPart')or a:FindFirstChild('Torso')or a:FindFirstChild('UpperTorso')or false)end
,function(a)return(a:FindFirstChildOfClass('Humanoid')or false)end
,function(a,b)return(a:FindFirstChild(b)or false)end
,function(a,b)return(a:FindFirstChildOfClass(b)or false)end
,function(Length)local Text=""for i=1,typeof(Length)=="number"and math.clamp(Length,1,100)or math.random(10,100)do Text=Text..string.char(math.random(1,128))end;return Text;end
,function(instance, properties)for i,p in pairs(properties)do instance[i] = p;end;end

local FURRY = fc(TEAMS,'Transfured');
local HUMAN = fc(TEAMS,'Human');

do
	warn('HvH Script loaded\nUpdate '..ver);
	if(not fireproximityprompt)then warn('Your Exploit is not support FireProximityPrompt.\nAuto grab bat will not activated for you.')end

	set_properties(NGL,{
		Enabled=true,
		Name='m@th•d',
		ResetOnSpawn=false,
		IgnoreGuiInset=true,
		ZIndexBehavior=Enum.ZIndexBehavior.Sibling
	})
	set_properties(NFA,{
		Name=randomstring(),
		Parent=NGL,
		Active=true,
		BackgroundColor3=Color3.fromRGB(18,18,18),
		BorderSizePixel=0,
		Position=UDim2.new(.447903425,0,.364906788,0),
		Size=UDim2.new(0,164,0,174),
		ZIndex=15
	})
	set_properties(NBT,{
		Name=randomstring(),
		Parent=NFA,
		BackgroundColor3=Color3.fromRGB(26,26,26),
		BorderSizePixel=0,
		Position = UDim2.new(0,0,.385911942,0),
		Size=UDim2.new(0,164,0,39),
		Font=Enum.Font.Highway,
		Text="K-A: Off",
		TextColor3=Color3.new(1,1,1),
		TextSize=20,
		ZIndex=15
	})
	set_properties(NBT2,{
		Name=randomstring(),
		Parent=NFA,
		BackgroundColor3=Color3.fromRGB(26,26,26),
		BorderSizePixel=0,
		Position=UDim2.new(0,0,.667521119,0),
		Size=UDim2.new(0,164,0,39),
		Font=Enum.Font.Highway,
		Text="Remove KillZone",
		TextColor3=Color3.new(1,1,1),
		TextSize=20,
		ZIndex=15
	})
	set_properties(NBT3,{
		Name=randomstring(),
		Parent=NFA,
		BackgroundColor3=Color3.fromRGB(26,26,26),
		BorderSizePixel=0,
		Position=UDim2.new(.848000109,0,0,0),
		Size=UDim2.new(0,25,0,25),
		Font=Enum.Font.Highway,
		LineHeight=.850,
		Text="R",
		TextColor3=Color3.new(1,1,1),
		TextSize=20,
		ZIndex=15
	})
	set_properties(TX,{
		Name=randomstring(),
		Parent=NFA,
		Active=true,
		BackgroundColor3=Color3.new(1,1,1),
		BackgroundTransparency=1,
		Size=UDim2.new(0,138,0,41),
		ZIndex=15,
		Font=Enum.Font.SourceSans,
		Text="HvH Script",
		TextColor3=Color3.fromRGB(255,174,174),
		TextSize=23
	})
	
	local function AEHAJLM_fake_script()
		local script = Instance.new('LocalScript', NFA)

		local UIS = game:GetService("UserInputService")
		local function dragify(Frame)
			dragToggle = nil
			local dragSpeed = 0.50
			dragInput = nil
			dragStart = nil
			local dragPos = nil
			function updateInput(input)
				local Delta = input.Position - dragStart
				local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
				game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
			end
			Frame.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
					dragToggle = true
					dragStart = input.Position
					startPos = Frame.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end)
			Frame.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			game:GetService("UserInputService").InputChanged:Connect(function(input)
				if input == dragInput and dragToggle then
					updateInput(input)
				end
			end)
		end

		dragify(script.Parent)
	end
	coroutine.wrap(AEHAJLM_fake_script)()
	
	NGL.Parent=game:service'CoreGui'
end
do
	local function A_fake_script()
		local script = Instance.new('LocalScript',NBT)
		local newcon;
		newcon = script.Parent.MouseButton1Click:connect(function()
			if(script.Parent==nil or script.Parent.Parent==nil)then return newcon:disconnect()end
			if not waiting and on then waiting=true;_G.XenoC.s=true;on=false;NBT.Text='K-A: Off'waiting=false
			elseif not waiting and not on then waiting=true;_G.XenoC.s=false
				task.spawn(function()
					while not _G.XenoC do task.wait()speaker = {C=lplr.Character,B=lplr.Backpack,T=lplr.Team};
						if speaker.T==HUMAN then
							for _,v in next, PLRS:GetPlayers()do
								coroutine.resume(coroutine.create(function()
									if v.Team==FURRY and v.Character~=nil and getHump(v.Character)and getHum(v.Character)then
										local args = {
											[1] = getHump(v.Character),
											[2] = getHum(v.Character),
											[3] = getHump(v.Character).Position
										}

										for _,b in next, speaker.C:children()do
											if fc(b,'Remote')and(getHump(speaker.C).Position-v.Position).magnitude<40 then
												fc(fc(b,'Remote'),'Hit'):FireServer(unpack(args))
											end
										end
									end
								end))
							end
							if speaker.B~=nil and speaker.C~=nil then
								if not fcc(speaker.C,'Tool')then
									if fcc(speaker.B,'Tool')then getHum(speaker.C):EquipTool(fcc(speaker.B,'Tool'))end
									if fireproximityprompt then
										for _,v in next, workspace:children()do
											if v.Name=='Bat'then
												fireproximityprompt(fcc(v,'ProximityPrompt'))
											end
										end
									end
								end
							end
						elseif speaker.T==FURRY then
							for _,v in next, PLRS:GetPlayers()do
								coroutine.resume(coroutine.create(function()
									if v.Team==HUMAN and v.Character~=nil and getHump(v.Character)and getHum(v.Character)then
										local args = {
											[1] = getHump(v.Character),
											[2] = getHum(v.Character),
											[3] = getHump(v.Character).Position
										}

										fc(fc(fc(speaker.C,'Attack'),'Remote'),'Hit'):FireServer(unpack(args))
									end
								end))
							end
							if speaker.B~=nil and speaker.C~=nil then
								if not fc(speaker.C,'Attack')then
									if fc(speaker.B,'Attack')then getHum(speaker.C):EquipTool(fc(speaker.B,'Attack'))end
								end
							end
						end
					end
				end)on=true;NBT.Text='K-A: On'waiting=false
			end
		end)
	end
	coroutine.wrap(A_fake_script)()
	local function B_fake_script()
		local script = Instance.new('LocalScript',NBT2)
		local newcon;
		newcon = script.Parent.MouseButton1Click:connect(function()
			if(script.Parent==nil or script.Parent.Parent==nil)then return newcon:disconnect()end
			task.spawn(function()
				for _,v in next, workspace:children()do if v.Name:find('KillField')then v:remove()end;end
			end)
		end)
	end
	coroutine.wrap(B_fake_script)()
	local function C_fake_script()
		local script = Instance.new('LocalScript',NBT3)
		local newcon;
		newcon = script.Parent.MouseButton1Click:connect(function()
			if(script.Parent==nil or script.Parent.Parent==nil)then return newcon:disconnect()end
			task.spawn(function()
				local char = lplr.Character
				if getHum(char) then getHum(char):ChangeState(15) end
				char:ClearAllChildren()
				local newChar = Instance.new("Model")
				newChar.Parent = workspace
				lplr.Character = newChar
				wait()lplr.Character = char
				newChar:Destroy()
			end)
		end)
	end
	coroutine.wrap(C_fake_script)()
end
