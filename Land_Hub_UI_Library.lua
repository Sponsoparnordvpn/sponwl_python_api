local Library = {Device = nil}

if game:GetService("UserInputService").MouseEnabled and game:GetService("UserInputService").KeyboardEnabled then
	Library.Device = "PC"
elseif game:GetService("UserInputService").TouchEnabled then
	Library.Device = "Android"
end

function Library:Tween(Obj,Style,Info,Callback)
	local Tw = game:GetService("TweenService"):Create(Obj,TweenInfo.new(Style[1],Enum.EasingStyle[Style[2]]),Info)
	Tw.Completed:Connect(Callback or function() end)
	Tw:Play()
end

function Library:Get_Defaults(Defaults,Settings)
	if Settings and type(Settings) == "table" then else Settings = {} end
	for i,v in pairs(Defaults) do
		if Settings[i] == nil then
			Settings[i] = v
		end
	end
	return Settings
end

function Library:New(Main_Info)
	local Main_Settings = Library:Get_Defaults({"Land Hub !",15406187252},Main_Info)
	local UI = {Ui_Status = true,CurrentTab = nil,Tab_List = nil,Section_List = nil,Dropdown_List = nil,LogoDrag = false,IsIn = false}

	--// GUI \\--

	do
		-- StarterGui.Land Hub
		UI["1"] = Instance.new("ScreenGui",game:GetService("RunService"):IsStudio() and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") or game.CoreGui)
		UI["1"]["IgnoreGuiInset"] = true;
		UI["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
		UI["1"]["Name"] = tostring(Main_Settings[1]);

		-- StarterGui.Land Hub.Main
		UI["2"] = Instance.new("Frame", UI["1"]);
		UI["2"]["BorderSizePixel"] = 0;
		UI["2"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
		UI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		UI["2"]["Size"] = UDim2.new();
		UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["2"]["Position"] = UDim2.new(0,game.Workspace.CurrentCamera.ViewportSize.X/2,0,game.Workspace.CurrentCamera.ViewportSize.Y/2);
		UI["2"]["Name"] = [[Main]];
		
		task.wait(1.5)
		
		Library:Tween(UI["2"],{.8,"Quart","InOut"},{Size = UDim2.new(0, 420, 0, 280)})

		-- StarterGui.Land Hub.Main.DropShadowHolder
		UI["3"] = Instance.new("Frame", UI["2"]);
		UI["3"]["ZIndex"] = 0;
		UI["3"]["BorderSizePixel"] = 0;
		UI["3"]["BackgroundTransparency"] = 1;
		UI["3"]["Size"] = UDim2.new(1, 0, 1, 0);
		UI["3"]["Name"] = [[DropShadowHolder]];

		-- StarterGui.Land Hub.Main.DropShadowHolder.DropShadow
		UI["4"] = Instance.new("ImageLabel", UI["3"]);
		UI["4"]["ZIndex"] = 0;
		UI["4"]["BorderSizePixel"] = 0;
		UI["4"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
		UI["4"]["ScaleType"] = Enum.ScaleType.Slice;
		UI["4"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
		UI["4"]["ImageTransparency"] = 0.5;
		UI["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		UI["4"]["Image"] = [[rbxassetid://6014261993]];
		UI["4"]["Size"] = UDim2.new(1, 50, 1, 50);
		UI["4"]["Name"] = [[DropShadow]];
		UI["4"]["BackgroundTransparency"] = 1;
		UI["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

		-- StarterGui.Land Hub.Main.Label Holder
		UI["5"] = Instance.new("Folder", UI["2"]);
		UI["5"]["Name"] = [[Label Holder]];

		-- StarterGui.Land Hub.Main.Label Holder.Label Fixer
		UI["6"] = Instance.new("Frame", UI["5"]);
		UI["6"]["ZIndex"] = 2;
		UI["6"]["BorderSizePixel"] = 0;
		UI["6"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
		UI["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		UI["6"]["Size"] = UDim2.new(1, 0, 0.04054826498031616, 0);
		UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["6"]["Position"] = UDim2.new(0.5, 0, 0.07677426934242249, 0);
		UI["6"]["Name"] = [[Label Fixer]];

		-- StarterGui.Land Hub.Main.Label Holder.Label
		UI["7"] = Instance.new("ImageLabel", UI["5"]);
		UI["7"]["ZIndex"] = 2;
		UI["7"]["BorderSizePixel"] = 0;
		UI["7"]["BackgroundColor3"] = Color3.fromRGB(39, 39, 39);
		UI["7"]["ImageTransparency"] = 0.6000000238418579;
		UI["7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		UI["7"]["Image"] = [[rbxassetid://14984219629]];
		UI["7"]["Size"] = UDim2.new(0.9999999403953552, 0, 0.09704828262329102, 0);
		UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["7"]["Name"] = [[Label]];
		UI["7"]["Position"] = UDim2.new(0.4999999701976776, 0, 0.04852414131164551, 0);

		-- StarterGui.Land Hub.Main.Label Holder.Label.TextLabel
		UI["8"] = Instance.new("TextLabel", UI["7"]);
		UI["8"]["TextWrapped"] = true;
		UI["8"]["ZIndex"] = 2;
		UI["8"]["BorderSizePixel"] = 0;
		UI["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		UI["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Kalam.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		UI["8"]["TextSize"] = 22;
		UI["8"]["TextColor3"] = Color3.fromRGB(68, 134, 201);
		UI["8"]["Size"] = UDim2.new(0.9000001549720764, 0, 0.4500000476837158, 0);
		UI["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["8"]["Text"] = tostring(Main_Settings[1]);
		UI["8"]["BackgroundTransparency"] = 1;
		UI["8"]["Position"] = UDim2.new(0.10000000894069672, 0, 0.30000048875808716, 0);

		-- StarterGui.Land Hub.Main.Label Holder.Label.UICorner
		UI["9"] = Instance.new("UICorner", UI["7"]);


		-- StarterGui.Land Hub.Main.Label Holder.Label.Line
		UI["a"] = Instance.new("Frame", UI["7"]);
		UI["a"]["ZIndex"] = 2;
		UI["a"]["BorderSizePixel"] = 0;
		UI["a"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
		UI["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		UI["a"]["Size"] = UDim2.new(1, 0, 0.12000000476837158, 0);
		UI["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["a"]["Position"] = UDim2.new(0.5, 0, 0.999998927116394, 0);
		UI["a"]["Name"] = [[Line]];

		-- StarterGui.Land Hub.Main.Label Holder.Label.Logo
		UI["b"] = Instance.new("ImageLabel", UI["7"]);
		UI["b"]["ZIndex"] = 2;
		UI["b"]["BorderSizePixel"] = 0;
		UI["b"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
		UI["b"]["ImageColor3"] = Color3.fromRGB(201, 201, 201);
		UI["b"]["ImageTransparency"] = 0.30000001192092896;
		UI["b"]["Image"] = "http://www.roblox.com/asset/?id="..tostring(Main_Settings[2]);
		UI["b"]["Size"] = UDim2.new(0.07285723835229874, 0, 0.9413055181503296, 0);
		UI["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["b"]["Name"] = [[Logo]];
		UI["b"]["BackgroundTransparency"] = 1;
		UI["b"]["Position"] = UDim2.new(-7.266090307211925e-08, 0, -0.0013072454603388906, 0);

		-- StarterGui.Land Hub.Main.Label Holder.Label.Logo.UICorner
		UI["c"] = Instance.new("UICorner", UI["b"]);
		UI["c"]["CornerRadius"] = UDim.new(0, 4);

		-- StarterGui.Land Hub.Main.UICorner
		UI["f"] = Instance.new("UICorner", UI["2"]);


		-- StarterGui.Land Hub.Main.Background
		UI["10"] = Instance.new("ImageLabel", UI["2"]);
		UI["10"]["BorderSizePixel"] = 0;
		UI["10"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
		UI["10"]["ImageTransparency"] = 0.6000000238418579;
		UI["10"]["Image"] = [[rbxassetid://14731252126]];
		UI["10"]["Size"] = UDim2.new(1, 0, 0.9649285674095154, 0);
		UI["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["10"]["Name"] = [[Background]];
		UI["10"]["Position"] = UDim2.new(0, 0, 0.035071346908807755, 0);

		-- StarterGui.Land Hub.Main.Background.UICorner
		UI["11"] = Instance.new("UICorner", UI["10"]);
		
		-- StarterGui.Land Hub.Logo
		UI["Logo"] = Instance.new("Frame", UI["1"]);
		UI["Logo"]["BorderSizePixel"] = 0;
		UI["Logo"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
		UI["Logo"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		UI["Logo"]["BackgroundTransparency"] = 1;
		UI["Logo"]["Size"] = UDim2.new();
		UI["Logo"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["Logo"]["Position"] = UDim2.new(0.3047468364238739, 0, 0.39024388790130615, 0);
		UI["Logo"]["Name"] = [[Logo]];

		-- StarterGui.Land Hub.Logo.Minimize
		UI["Logo1"] = Instance.new("ImageLabel", UI["Logo"]);
		UI["Logo1"]["ZIndex"] = 2;
		UI["Logo1"]["BorderSizePixel"] = 0;
		UI["Logo1"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
		UI["Logo1"]["ImageColor3"] = Color3.fromRGB(201, 201, 201);
		UI["Logo1"]["ImageTransparency"] = 0.20000000298023224;
		UI["Logo1"]["Image"] = [[http://www.roblox.com/asset/?id=15406187252]];
		UI["Logo1"]["Size"] = UDim2.new(1, 0, 1, 0);
		UI["Logo1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["Logo1"]["Name"] = [[Minimize]];

		-- StarterGui.Land Hub.Logo.Minimize.UICorner
		UI["Logo2"] = Instance.new("UICorner", UI["Logo1"]);
		UI["Logo2"]["CornerRadius"] = UDim.new(0, 10);
		
		Library:Tween(UI["Logo"],{.8,"Quart","InOut"},{Size = UDim2.new(0, 40, 0, 40)})
		
		--//Minimize Script\\--
				
		UI["Logo1"].InputEnded:Connect(function(input,gpe)
			if gpe then return end
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if UI.LogoDrag then return end
				if UI.Ui_Status then
					UI["8"]["Visible"] = false
					Library:Tween(UI["2"],{.6,"Quart","InOut"},{Size = UDim2.new()},function()
						UI["2"]["Visible"] = false
						UI.Ui_Status = false
					end)
				else
					UI["8"]["Visible"] = true
					UI["2"]["Visible"] = true
					Library:Tween(UI["2"],{.8,"Quart","InOut"},{Size = UDim2.new(0, 420, 0, 280)},function()
						UI.Ui_Status = true
					end)
				end
			end
		end)
	end

	--// Navigation \\--

	do
		-- StarterGui.Land Hub.Main.Navigation
		UI["12"] = Instance.new("Frame", UI["2"]);
		UI["12"]["BorderSizePixel"] = 0;
		UI["12"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
		UI["12"]["BackgroundTransparency"] = 0.550000011920929;
		UI["12"]["Size"] = UDim2.new(0.2776190936565399, 0, 0.9087748527526855, 0);
		UI["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["12"]["Position"] = UDim2.new(-7.266090307211925e-08, 0, 0.09122521430253983, 0);
		UI["12"]["Name"] = [[Navigation]];

		-- StarterGui.Land Hub.Main.Navigation.UICorner
		UI["13"] = Instance.new("UICorner", UI["12"]);


		-- StarterGui.Land Hub.Main.Navigation.Tabs Holder
		UI["14"] = Instance.new("ScrollingFrame", UI["12"]);
		UI["14"]["Active"] = true;
		UI["14"]["BorderSizePixel"] = 0;
		UI["14"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
		UI["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI["14"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
		UI["14"]["BackgroundTransparency"] = 1;
		UI["14"]["Size"] = UDim2.new(1, 0, 1, 0);
		UI["14"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
		UI["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["14"]["ScrollBarThickness"] = 0;
		UI["14"]["Name"] = [[Tabs Holder]];

		-- StarterGui.Land Hub.Main.Navigation.Tabs Holder.UIListLayout
		UI["15"] = Instance.new("UIListLayout", UI["14"]);
		UI["15"]["Padding"] = UDim.new(0, 8);
		UI["15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

		-- StarterGui.Land Hub.Main.Navigation.Tabs Holder.UIPadding
		UI["16"] = Instance.new("UIPadding", UI["14"]);
		UI["16"]["PaddingTop"] = UDim.new(0, 14);

		UI["1f"] = Instance.new("Frame", UI["2"]);
		UI["1f"]["BorderSizePixel"] = 0;
		UI["1f"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
		UI["1f"]["AnchorPoint"] = Vector2.new(1, 0);
		UI["1f"]["BackgroundTransparency"] = 0.800000011920929;
		UI["1f"]["Size"] = UDim2.new(0.7223809957504272, 0, 0.8971287608146667, 0);
		UI["1f"]["ClipsDescendants"] = true;
		UI["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI["1f"]["Position"] = UDim2.new(1, 0, 0.10287126898765564, 0);
		UI["1f"]["Name"] = [[Options Holder]];
		
		if UI.Tab_List == nil then 
			UI.Tab_List = UI["15"]:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				UI["14"]["CanvasSize"] = UDim2.new(0,0,0,UI["15"].AbsoluteContentSize.Y+16)
			end)
		end
	end
	--// Drag Script \\--
	
	function UI:MakeDrag(Frame)
		local dragToggle
		local dragStart
		local startPos

		local function updateInput(input)
			local delta = input.Position - dragStart
			if UI.IsIn then return end
			Library:Tween(Frame,{.2,"Linear"},{Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,startPos.Y.Scale, startPos.Y.Offset + delta.Y)})
		end

		Frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch  then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						if Frame == UI["Logo1"] then
							if Frame.Position ~= startPos then
								UI.LogoDrag = true
								dragToggle = false
								task.wait(.01)
								UI.LogoDrag = false
							else
								dragToggle = false
							end
						else
							dragToggle = false
						end
					end
				end)
			end
		end)
		
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input)
				end
			end
		end)

	end
	
	--// Tab \\--

	function UI:Tab(Tab_Info)
		local Tab_Settings = Library:Get_Defaults({"Home",11234862777},Tab_Info)
		local Tab = {IsActive = false;IsHovering = false}

		--// Tab \\--

		do

			--// Generate Tab \\--

			do
				-- StarterGui.ScreenGui.Frame.Navigation.Tabs Holder.Deactivated Tab
				Tab["1b"] = Instance.new("TextButton", UI["14"]);
				Tab["1b"]["TextWrapped"] = true;
				Tab["1b"]["Active"] = false;
				Tab["1b"]["BorderSizePixel"] = 0;
				Tab["1b"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
				Tab["1b"]["TextSize"] = 14;
				Tab["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Balthazar.json]], Enum.FontWeight.Medium, Enum.FontStyle.Italic);
				Tab["1b"]["TextColor3"] = Color3.fromRGB(128, 16, 255);
				Tab["1b"]["Selectable"] = false;
				Tab["1b"]["Size"] = UDim2.new(1, 0, 0.10000000149011612, 0);
				Tab["1b"]["Name"] = [[Tab]];
				Tab["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Tab["1b"]["Text"] = tostring(Tab_Settings[1]);
				Tab["1b"]["BackgroundTransparency"] = 1;

				-- StarterGui.ScreenGui.Frame.Navigation.Tabs Holder.Deactivated Tab.UIPadding
				Tab["1c"] = Instance.new("UIPadding", Tab["1b"]);


				-- StarterGui.ScreenGui.Frame.Navigation.Tabs Holder.Deactivated Tab.Logo
				Tab["1d"] = Instance.new("ImageLabel", Tab["1b"]);
				Tab["1d"]["ZIndex"] = 2;
				Tab["1d"]["BorderSizePixel"] = 0;
				Tab["1d"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
				Tab["1d"]["Image"] = "rbxassetid://"..tostring(Tab_Settings[2]);
				Tab["1d"]["Size"] = UDim2.new(0.1599999964237213, 0, 0.75, 0);
				Tab["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Tab["1d"]["Name"] = [[Logo]];
				Tab["1d"]["BackgroundTransparency"] = 1;
				Tab["1d"]["Position"] = UDim2.new(0.07999999821186066, 0, 0.03999999910593033, 0);

				-- StarterGui.ScreenGui.Frame.Navigation.Tabs Holder.Deactivated Tab.Logo.UICorner
				Tab["1e"] = Instance.new("UICorner", Tab["1d"]);
				Tab["1e"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.ScreenGui.Frame.Options Holder.Options
				Tab["20"] = Instance.new("ScrollingFrame", UI["1f"]);
				Tab["20"]["BorderSizePixel"] = 0;
				Tab["20"]["CanvasSize"] = UDim2.new();
				Tab["20"]["CanvasPosition"] = Vector2.new(0, 150);
				Tab["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Tab["20"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
				Tab["20"]["BackgroundTransparency"] = 1;
				Tab["20"]["Size"] = UDim2.new(1, 0, 0.8964951634407043, 0);
				Tab["20"]["ScrollBarImageColor3"] = Color3.fromRGB(171, 0, 255);
				Tab["20"]["Selectable"] = false;
				Tab["20"]["ClipsDescendants"] = false;
				Tab["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Tab["20"]["ScrollBarThickness"] = 1;
				Tab["20"]["Name"] = [[Options]];
				Tab["20"]["SelectionGroup"] = false;

				-- StarterGui.ScreenGui.Frame.Options Holder.Options.UIListLayout
				Tab["21"] = Instance.new("UIListLayout", Tab["20"]);
				Tab["21"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
				Tab["21"]["Padding"] = UDim.new(0, 8);
				Tab["21"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

				-- StarterGui.Land Hub.Main.Options Holder.Options.UIPadding
				Tab["94"] = Instance.new("UIPadding", Tab["20"]);
				Tab["94"]["PaddingTop"] = UDim.new(0, 5);
				Tab["94"]["PaddingBottom"] = UDim.new(0, 5);
				
				if UI.Section_List == nil then 
					UI.Section_List = Tab["21"]:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
						Tab["20"]["CanvasSize"] = UDim2.new(0,0,0,Tab["21"].AbsoluteContentSize.Y+5)
					end)
				end
			end

			--// Tab Script \\--

			do
				function Tab:Decativate()
					if Tab.IsActive then
						Tab.IsActive = false
						Tab["20"].Visible = false
						Library:Tween(Tab["1b"],{.3,"Linear"},{BackgroundTransparency = 1})
					end
				end

				Tab["1b"].MouseEnter:Connect(function()
					Tab.IsHovering = true

					if not Tab.IsActive then
						Library:Tween(Tab["1b"],{.4,"Linear"},{BackgroundTransparency = .6})
					end
				end)

				Tab["1b"].MouseLeave:Connect(function()
					Tab.IsHovering = false

					if not Tab.IsActive then
						Library:Tween(Tab["1b"],{.5,"Linear"},{BackgroundTransparency = 1})
					end
				end)

				Tab["1b"].MouseButton1Down:Connect(function()
					Library:Tween(Tab["1b"],{.5,"Linear"},{BackgroundTransparency = .1})
				end)

				Tab["1b"].MouseButton1Up:Connect(function()
					if Tab.IsHovering then
						if not Tab.IsActive then
							if UI.CurrentTab ~= nil then UI.CurrentTab:Decativate() end
							Tab.IsActive = true
							Tab["20"].Visible = true
							Tab["1b"].BackgroundTransparency = .4
							UI.CurrentTab = Tab
						end
					end
				end)
			end

			if UI.CurrentTab == nil then Tab.IsActive = true;Tab["1b"].BackgroundTransparency = .4;Tab["20"].Visible = true;UI.CurrentTab = Tab end
		end

		function Tab:Section(Section_Info)
			local Section_Settings = Library:Get_Defaults({"Section"},Section_Info)
			local Section = {}

			do
				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off
				Section["95"] = Instance.new("Frame", Tab["20"]);
				Section["95"]["BorderSizePixel"] = 0;
				Section["95"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Section["95"]["BackgroundTransparency"] = 1;
				Section["95"]["Size"] = UDim2.new(1, 0, 0.20000000298023224, 0);
				Section["95"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Section["95"]["Position"] = UDim2.new(0, 0, 0.8350971937179565, 0);
				Section["95"]["Name"] = [[Section]];

				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Items
				Section["96"] = Instance.new("Frame", Section["95"]);
				Section["96"]["BorderSizePixel"] = 0;
				Section["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Section["96"]["BackgroundTransparency"] = 1;
				Section["96"]["Size"] = UDim2.new(1, 0, 1, 0);
				Section["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Section["96"]["Name"] = [[Items]];

				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Items.UIListLayout
				Section["97"] = Instance.new("UIListLayout", Section["96"]);
				Section["97"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
				Section["97"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
				Section["97"]["Padding"] = UDim.new(0, 8);
				Section["97"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Items.UIPadding
				Section["98"] = Instance.new("UIPadding", Section["96"]);
				Section["98"]["PaddingTop"] = UDim.new(0, 15);

				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Title
				Section["99"] = Instance.new("Frame", Section["95"]);
				Section["99"]["BorderSizePixel"] = 0;
				Section["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Section["99"]["BackgroundTransparency"] = 1;
				Section["99"]["Size"] = UDim2.new(1, 0, 1.03760826587677, 0);
				Section["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Section["99"]["Name"] = [[Title]];

				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Title.Frame
				Section["9a"] = Instance.new("Frame", Section["99"]);
				Section["9a"]["BorderSizePixel"] = 0;
				Section["9a"]["BackgroundColor3"] = Color3.fromRGB(131, 0, 201);
				Section["9a"]["Size"] = UDim2.new(0, 84, 0, 3);
				Section["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Section["9a"]["Position"] = UDim2.new(0.6690000295639038, 0, 0, 8);

				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Title.Frame.UICorner
				Section["9b"] = Instance.new("UICorner", Section["9a"]);


				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Title.Frame
				Section["9c"] = Instance.new("Frame", Section["99"]);
				Section["9c"]["BorderSizePixel"] = 0;
				Section["9c"]["BackgroundColor3"] = Color3.fromRGB(131, 0, 201);
				Section["9c"]["Size"] = UDim2.new(0, 84, 0, 3);
				Section["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Section["9c"]["Position"] = UDim2.new(0.04600000008940697, 0, 0, 8);

				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Title.Frame.UICorner
				Section["9d"] = Instance.new("UICorner", Section["9c"]);


				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Title.Title
				Section["9e"] = Instance.new("TextLabel", Section["99"]);
				Section["9e"]["TextWrapped"] = true;
				Section["9e"]["BorderSizePixel"] = 0;
				Section["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Section["9e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Merriweather.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
				Section["9e"]["TextSize"] = 13;
				Section["9e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Section["9e"]["Size"] = UDim2.new(0, 105, 0, 24);
				Section["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Section["9e"]["Text"] = tostring(Section_Settings[1]);
				Section["9e"]["Name"] = [[Title]];
				Section["9e"]["BackgroundTransparency"] = 1;
				Section["9e"]["Position"] = UDim2.new(0.32025688886642456, 0, 0, 0);

				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Title.Title.UIPadding
				Section["9f"] = Instance.new("UIPadding", Section["9e"]);
				Section["9f"]["PaddingBottom"] = UDim.new(0, 5);

				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Line
				Section["a0"] = Instance.new("Frame", Section["95"]);
				Section["a0"]["BorderSizePixel"] = 0;
				Section["a0"]["BackgroundColor3"] = Color3.fromRGB(131, 0, 201);
				Section["a0"]["Size"] = UDim2.new(0.8999999761581421, 0, 0, 3);
				Section["a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Section["a0"]["Position"] = UDim2.new(0.04399999976158142, 0, 1, 0);
				Section["a0"]["Name"] = [[Line]];

				-- StarterGui.Land Hub.Main.Options Holder.Options.Section Off.Line.UICorner
				Section["a1"] = Instance.new("UICorner", Section["a0"]);
			end

			--// Section Script \\--

			do
				function Section:Refresh()
					local Labels_Count = #Section["96"]:GetChildren()-2
					if Labels_Count > 0 then
						Section["95"].Size = UDim2.new(1,0,0.20000000298023224,Section["97"].AbsoluteContentSize.Y);
					else
						Section["95"].Size = UDim2.new(1,0,0.2,0)
					end
				end
			end

			function Section:Label(Label_Info)
				local Label_Settings = Library:Get_Defaults({"Label",14360843421},Label_Info)
				local Label = {}

				do
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Label
					Label["2f"] = Instance.new("Frame", Section["96"]);
					Label["2f"]["BorderSizePixel"] = 0;
					Label["2f"]["BackgroundColor3"] = Color3.fromRGB(101, 51, 151);
					Label["2f"]["BackgroundTransparency"] = 0.6000000238418579;
					Label["2f"]["Size"] = UDim2.new(0, 270, 0, 32);
					Label["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Label["2f"]["Position"] = UDim2.new(0.056105609983205795, 0, 0.21881194412708282, 0);
					Label["2f"]["Name"] = [[Label]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Label.UIPadding
					Label["30"] = Instance.new("UIPadding", Label["2f"]);
					Label["30"]["PaddingTop"] = UDim.new(0, 2);
					Label["30"]["PaddingRight"] = UDim.new(0, 5);
					Label["30"]["PaddingBottom"] = UDim.new(0, 5);
					Label["30"]["PaddingLeft"] = UDim.new(0, 5);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Label.UICorner
					Label["31"] = Instance.new("UICorner", Label["2f"]);


					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Label.UIStroke
					Label["32"] = Instance.new("UIStroke", Label["2f"]);
					Label["32"]["Color"] = Color3.fromRGB(154, 0, 231);
					Label["32"]["Thickness"] = 0.699999988079071;

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Label.Title
					Label["33"] = Instance.new("TextLabel", Label["2f"]);
					Label["33"]["TextWrapped"] = true;
					Label["33"]["BorderSizePixel"] = 0;
					Label["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Label["33"]["TextXAlignment"] = Enum.TextXAlignment.Left;
					Label["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
					Label["33"]["Text"] = tostring(Label_Settings[1])
					Label["33"]["TextSize"] = 13;
					Label["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
					Label["33"]["Size"] = UDim2.new(1, 0, 1, 0);
					Label["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Label["33"]["Name"] = [[Title]];
					Label["33"]["BackgroundTransparency"] = 1;
					Label["33"]["Position"] = UDim2.new(0, 0, 0.10000000149011612, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Label.Title.UIPadding
					Label["34"] = Instance.new("UIPadding", Label["33"]);
					Label["34"]["PaddingLeft"] = UDim.new(0, 4);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Label.Title.Icon
					Label["35"] = Instance.new("ImageLabel", Label["33"]);
					Label["35"]["BorderSizePixel"] = 0;
					Label["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Label["35"]["Image"] = "http://www.roblox.com/asset/?id="..tostring(Label_Settings[2]);
					Label["35"]["Size"] = UDim2.new(0.09999999403953552, 0, 1, 0);
					Label["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Label["35"]["Name"] = [[Icon]];
					Label["35"]["BackgroundTransparency"] = 1;
					Label["35"]["Position"] = UDim2.new(0.8999999761581421, 0, -0.05000000074505806, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Label.Title.Icon.UICorner
					Label["36"] = Instance.new("UICorner", Label["35"]);
					Label["36"]["CornerRadius"] = UDim.new(0, 6);

					Section:Refresh()
				end
			end

			function Section:Button(Button_Info,Callback)
				local Button_Settings = Library:Get_Defaults({"Button",14360843421},Button_Info)
				if type(Callback) == "function" then else Callback = function() print("Clicked") end end
				local Button = {IsHovering = false;IsDown = false;Callback = Callback}

				do
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button
					Button["37"] = Instance.new("Frame", Section["96"]);
					Button["37"]["BorderSizePixel"] = 0;
					Button["37"]["BackgroundColor3"] = Color3.fromRGB(101, 51, 151);
					Button["37"]["BackgroundTransparency"] = 0.6000000238418579;
					Button["37"]["Size"] = UDim2.new(0, 270, 0, 32);
					Button["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Button["37"]["Position"] = UDim2.new(0.05000000074505806, 0, 0, 0);
					Button["37"]["Name"] = [[Button]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.UIPadding
					Button["38"] = Instance.new("UIPadding", Button["37"]);
					Button["38"]["PaddingTop"] = UDim.new(0, 2);
					Button["38"]["PaddingRight"] = UDim.new(0, 5);
					Button["38"]["PaddingBottom"] = UDim.new(0, 5);
					Button["38"]["PaddingLeft"] = UDim.new(0, 5);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.UICorner
					Button["39"] = Instance.new("UICorner", Button["37"]);


					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.UIStroke
					Button["3a"] = Instance.new("UIStroke", Button["37"]);
					Button["3a"]["Color"] = Color3.fromRGB(154, 0, 231);
					Button["3a"]["Thickness"] = 0.699999988079071;

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.Title
					Button["3b"] = Instance.new("TextLabel", Button["37"]);
					Button["3b"]["TextWrapped"] = true;
					Button["3b"]["BorderSizePixel"] = 0;
					Button["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Button["3b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
					Button["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
					Button["3b"]["TextSize"] = 13;
					Button["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
					Button["3b"]["Size"] = UDim2.new(1, 0, 1, 0);
					Button["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Button["3b"]["Text"] = tostring(Button_Settings[1]);
					Button["3b"]["Name"] = [[Title]];
					Button["3b"]["BackgroundTransparency"] = 1;
					Button["3b"]["Position"] = UDim2.new(0, 0, 0.10000000149011612, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.Title.UIPadding
					Button["3c"] = Instance.new("UIPadding", Button["3b"]);
					Button["3c"]["PaddingLeft"] = UDim.new(0, 4);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.Title.Icon
					Button["3d"] = Instance.new("ImageLabel", Button["3b"]);
					Button["3d"]["BorderSizePixel"] = 0;
					Button["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Button["3d"]["Image"] = "http://www.roblox.com/asset/?id="..tostring(Button_Settings[2]);
					Button["3d"]["Size"] = UDim2.new(0.10000000149011612, 0, 1, 0);
					Button["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Button["3d"]["Name"] = [[Icon]];
					Button["3d"]["BackgroundTransparency"] = 1;
					Button["3d"]["Position"] = UDim2.new(0.8999999761581421, 0, 0, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.Title.Icon.UICorner
					Button["3e"] = Instance.new("UICorner", Button["3d"]);
					Button["3e"]["CornerRadius"] = UDim.new(0, 6);

					Section:Refresh()
				end

				--// Button Script \\--
				
				do
					function Button:Run_Script(Device)
						if Device == "PC" then
							Button["37"].MouseEnter:Connect(function()
								Button.IsHovering = true

								if not Button.IsDown then
									Library:Tween(Button["37"],{.5,"Linear"},{BackgroundTransparency = .4})
								end
							end)

							Button["37"].MouseLeave:Connect(function()
								Button.IsHovering = false

								if not Button.IsDown then
									Library:Tween(Button["37"],{.5,"Linear"},{BackgroundTransparency = .6})
								end
							end)
							
							game:GetService("UserInputService").InputBegan:Connect(function(input,gpe)
								if gpe then return end
								if Button.IsHovering then
									if Button.IsHovering then
										UI.IsIn = true
										Button.IsDown = false
										Library:Tween(Button["37"],{.3,"Linear"},{BackgroundTransparency = .2})
									end
								end
							end)

							game:GetService("UserInputService").InputEnded:Connect(function(input,gpe)
								if gpe then return end
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									if Button.IsHovering then
										UI.IsIn = false
										Button.IsDown = false
										Library:Tween(Button["37"],{.3,"Linear"},{BackgroundTransparency = .4})
										Button.Callback()
									else
										Button.IsDown = false
										Library:Tween(Button["37"],{.5,"Linear"},{BackgroundTransparency = .6})
									end
								end
							end)
						elseif Device == "Android" then
							local old_button_pos
							
							Button["37"].InputBegan:Connect(function(input)
								UI.IsIn = true
								old_button_pos = input.Position
								
								Library:Tween(Button["37"],{.5,"Linear"},{BackgroundTransparency = .4})
							end)

							Button["37"].InputEnded:Connect(function(input)
								UI.IsIn = false
								if input.UserInputType == Enum.UserInputType.Touch  then
									if input.Position == old_button_pos then
										Library:Tween(Button["37"],{.3,"Linear"},{BackgroundTransparency = .4})
										Button.Callback()
									end
								end
								
								Library:Tween(Button["37"],{.5,"Linear"},{BackgroundTransparency = .6})
								old_button_pos = nil
							end)
						end
					end
					
					Button:Run_Script(Library.Device)
				end

				return Button
			end

			function Section:Toggle(Toggle_Info,Callback)
				local Toggle_Settings = Library:Get_Defaults({"Toggle"},Toggle_Info)
				if type(Callback) == "function" then else Callback = function(IsOn) print(IsOn) end end
				local Toggle = {IsHovering = false;Second_Hover = false;IsDown = false;IsActive = false;Current = false;Callback = Callback}

				do
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Toggle Off
					Toggle["49"] = Instance.new("Frame", Section["96"]);
					Toggle["49"]["BorderSizePixel"] = 0;
					Toggle["49"]["BackgroundColor3"] = Color3.fromRGB(101, 51, 151);
					Toggle["49"]["BackgroundTransparency"] = 0.6000000238418579;
					Toggle["49"]["Size"] = UDim2.new(0, 270, 0, 32);
					Toggle["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Toggle["49"]["Position"] = UDim2.new(0.05000000074505806, 0, 0, 0);
					Toggle["49"]["Name"] = [[Toggle]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Toggle Off.UIPadding
					Toggle["4a"] = Instance.new("UIPadding", Toggle["49"]);
					Toggle["4a"]["PaddingTop"] = UDim.new(0, 2);
					Toggle["4a"]["PaddingRight"] = UDim.new(0, 5);
					Toggle["4a"]["PaddingBottom"] = UDim.new(0, 5);
					Toggle["4a"]["PaddingLeft"] = UDim.new(0, 5);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Toggle Off.UICorner
					Toggle["4b"] = Instance.new("UICorner", Toggle["49"]);


					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Toggle Off.UIStroke
					Toggle["4c"] = Instance.new("UIStroke", Toggle["49"]);
					Toggle["4c"]["Color"] = Color3.fromRGB(154, 0, 231);
					Toggle["4c"]["Thickness"] = 0.699999988079071;

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Toggle Off.Title
					Toggle["4d"] = Instance.new("TextLabel", Toggle["49"]);
					Toggle["4d"]["TextWrapped"] = true;
					Toggle["4d"]["BorderSizePixel"] = 0;
					Toggle["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Toggle["4d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
					Toggle["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
					Toggle["4d"]["TextSize"] = 13;
					Toggle["4d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
					Toggle["4d"]["Size"] = UDim2.new(1, 0, 1, 0);
					Toggle["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Toggle["4d"]["Text"] = tostring(Toggle_Settings[1]);
					Toggle["4d"]["Name"] = [[Title]];
					Toggle["4d"]["BackgroundTransparency"] = 1;
					Toggle["4d"]["Position"] = UDim2.new(0, 0, 0.10000000149011612, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Toggle Off.Title.UIPadding
					Toggle["4e"] = Instance.new("UIPadding", Toggle["4d"]);
					Toggle["4e"]["PaddingLeft"] = UDim.new(0, 4);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Toggle Off.Button
					Toggle["4f"] = Instance.new("Frame", Toggle["49"]);
					Toggle["4f"]["Active"] = false;
					Toggle["4f"]["BorderSizePixel"] = 0;
					Toggle["4f"]["BackgroundColor3"] = Color3.fromRGB(54, 0, 81);
					Toggle["4f"]["Size"] = UDim2.new(0.15965937077999115, 0, 0.9599999785423279, 0);
					Toggle["4f"]["Name"] = [[Button]];
					Toggle["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Toggle["4f"]["Position"] = UDim2.new(0.8379998803138733, 0, 0.08641725778579712, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Toggle Off.Button.UICorner
					Toggle["50"] = Instance.new("UICorner", Toggle["4f"]);
					Toggle["50"]["CornerRadius"] = UDim.new(0, 10);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Toggle Off.Button.Circle Button
					Toggle["51"] = Instance.new("Frame", Toggle["4f"]);
					Toggle["51"]["Active"] = false;
					Toggle["51"]["BorderSizePixel"] = 0;
					Toggle["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Toggle["51"]["Size"] = UDim2.new(0, 17, 0, 17);
					Toggle["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Toggle["51"]["Position"] = UDim2.new(0.10000000149011612, 0, 0.12300000339746475, 0);
					Toggle["51"]["Name"] = [[Circle Button]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Toggle Off.Button.Circle Button.UICorner
					Toggle["52"] = Instance.new("UICorner", Toggle["51"]);
					Toggle["52"]["CornerRadius"] = UDim.new(0, 10);

					Section:Refresh()
				end
				
				--// Toggle Script \\--
				
				do	
					function Toggle:Run_Script(Device)
						if Device == "PC" then
							Toggle["4f"].MouseEnter:Connect(function()
								Toggle.IsHovering = true

								if not Toggle.IsDown and not Toggle.IsActive then
									Library:Tween(Toggle["4f"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(81, 0, 125)})
								end
							end)

							Toggle["4f"].MouseLeave:Connect(function()
								Toggle.IsHovering = false

								if not Toggle.IsDown and not Toggle.IsActive then
									Library:Tween(Toggle["4f"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(54, 0, 81)})
								end
							end)

							game:GetService("UserInputService").InputBegan:Connect(function(input,gpe)
								if gpe then return end
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									if Toggle.IsHovering then
										UI.IsIn = true
										Toggle.IsDown = true
										Library:Tween(Toggle["4f"],{.3,"Linear"},{BackgroundColor3 = Color3.fromRGB(55, 0, 89)})
									end
								end
							end)

							game:GetService("UserInputService").InputEnded:Connect(function(input,gpe)
								if gpe then return end
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									if Toggle.IsHovering then
										UI.IsIn = false
										Toggle.IsDown = false
										if not Toggle.Current then
											Toggle.IsActive = true
											Library:Tween(Toggle["51"],{.2,"Linear"},{Position = UDim2.new(0.51,0,0.123,0)})
											Library:Tween(Toggle["4f"],{.2,"Linear"},{BackgroundColor3 = Color3.fromRGB(131, 0, 201)},function()
												Toggle.Callback(true)
											end)
										else
											Toggle.IsActive = false
											Library:Tween(Toggle["51"],{.2,"Linear"},{Position = UDim2.new(0.1,0,0.123,0)})
											Library:Tween(Toggle["4f"],{.2,"Linear"},{BackgroundColor3 = Color3.fromRGB(81, 0, 125)},function()
												Toggle.Callback(false)
											end)
										end
										Toggle.Current = not Toggle.Current
									else
										Toggle.IsDown = false
										if Toggle.Current then
											Library:Tween(Toggle["4f"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(131, 0, 201)})
										else
											Library:Tween(Toggle["4f"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(54, 0, 81)})
										end
									end
								end
							end)
						elseif Device == "Android" then
							
							local old_toggle_pos
							
							Toggle["4f"].InputBegan:Connect(function(input)
								UI.IsIn = true
								old_toggle_pos = input.Position
								
								if not Toggle.IsActive then
									Library:Tween(Toggle["4f"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(81, 0, 125)})
								end
							end)
							
							Toggle["4f"].InputEnded:Connect(function(input)
								UI.IsIn = false
								if input.UserInputType == Enum.UserInputType.Touch then
									if input.Position == old_toggle_pos then
										if not Toggle.Current then
											Toggle.IsActive = true
											Library:Tween(Toggle["51"],{.2,"Linear"},{Position = UDim2.new(0.51,0,0.123,0)})
											Library:Tween(Toggle["4f"],{.2,"Linear"},{BackgroundColor3 = Color3.fromRGB(131, 0, 201)},function()
												Toggle.Callback(true)
											end)
										else
											Toggle.IsActive = false
											Library:Tween(Toggle["51"],{.2,"Linear"},{Position = UDim2.new(0.1,0,0.123,0)})
											Library:Tween(Toggle["4f"],{.2,"Linear"},{BackgroundColor3 = Color3.fromRGB(81, 0, 125)},function()
												Toggle.Callback(false)
											end)
										end
										Toggle.Current = not Toggle.Current
									else
										if Toggle.Current then
											Library:Tween(Toggle["4f"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(131, 0, 201)})
										else
											Library:Tween(Toggle["4f"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(54, 0, 81)})
										end
									end
								end
								old_toggle_pos = nil
							end)
						end
					end
					Toggle:Run_Script(Library.Device)
				end
			end
			
			function Section:Keybind(Keybind_Info,Callback)
				if not game:GetService("UserInputService").KeyboardEnabled then return warn("Error : Keyboard Needed For Keybinds!") end
				local Keybind_Settings = Library:Get_Defaults({"Keybind"},Keybind_Info)
				if type(Callback) == "function" then else Callback = function(Key) print(Key) end end	
				local Keybind = {Connection = nil,IsHovering = false,Callback = Callback,Blacklist = {Enum.KeyCode.Unknown, Enum.KeyCode.CapsLock, Enum.KeyCode.Escape, Enum.KeyCode.Tab, Enum.KeyCode.Return, Enum.KeyCode.Backspace, Enum.KeyCode.Space, Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D}}
				
				do
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Keybind
					Keybind["53"] = Instance.new("Frame", Section["96"]);
					Keybind["53"]["BorderSizePixel"] = 0;
					Keybind["53"]["BackgroundColor3"] = Color3.fromRGB(101, 51, 151);
					Keybind["53"]["BackgroundTransparency"] = 0.6000000238418579;
					Keybind["53"]["Size"] = UDim2.new(0, 270, 0, 32);
					Keybind["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Keybind["53"]["Position"] = UDim2.new(0.05000000074505806, 0, 0, 0);
					Keybind["53"]["Name"] = [[Keybind]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Keybind.UIPadding
					Keybind["54"] = Instance.new("UIPadding", Keybind["53"]);
					Keybind["54"]["PaddingTop"] = UDim.new(0, 2);
					Keybind["54"]["PaddingRight"] = UDim.new(0, 5);
					Keybind["54"]["PaddingBottom"] = UDim.new(0, 5);
					Keybind["54"]["PaddingLeft"] = UDim.new(0, 5);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Keybind.UICorner
					Keybind["55"] = Instance.new("UICorner", Keybind["53"]);


					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Keybind.UIStroke
					Keybind["56"] = Instance.new("UIStroke", Keybind["53"]);
					Keybind["56"]["Color"] = Color3.fromRGB(154, 0, 231);
					Keybind["56"]["Thickness"] = 0.699999988079071;

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Keybind.Title
					Keybind["57"] = Instance.new("TextLabel", Keybind["53"]);
					Keybind["57"]["TextWrapped"] = true;
					Keybind["57"]["BorderSizePixel"] = 0;
					Keybind["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Keybind["57"]["TextXAlignment"] = Enum.TextXAlignment.Left;
					Keybind["57"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
					Keybind["57"]["TextSize"] = 13;
					Keybind["57"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
					Keybind["57"]["Size"] = UDim2.new(1, 0, 1, 0);
					Keybind["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Keybind["57"]["Text"] = tostring(Keybind_Settings[1]);
					Keybind["57"]["Name"] = [[Title]];
					Keybind["57"]["BackgroundTransparency"] = 1;
					Keybind["57"]["Position"] = UDim2.new(0, 0, 0.10000000149011612, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Keybind.Title.UIPadding
					Keybind["58"] = Instance.new("UIPadding", Keybind["57"]);
					Keybind["58"]["PaddingLeft"] = UDim.new(0, 4);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Keybind.Button_Holder
					Keybind["59"] = Instance.new("Frame", Keybind["53"]);
					Keybind["59"]["Active"] = false;
					Keybind["59"]["BorderSizePixel"] = 0;
					Keybind["59"]["BackgroundColor3"] = Color3.fromRGB(54, 0, 81);
					Keybind["59"]["Selectable"] = false;
					Keybind["59"]["Size"] = UDim2.new(0.15486954152584076, 0, 0.9599999785423279, 0);
					Keybind["59"]["Name"] = [[Button]];
					Keybind["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Keybind["59"]["Position"] = UDim2.new(0.8427897095680237, 0, 0.08641725778579712, 0);
					
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Keybind.Button_Holder.Title
					
					Keybind["60"] = Instance.new("TextLabel", Keybind["59"]);
					Keybind["60"]["TextWrapped"] = true;
					Keybind["60"]["Active"] = false;
					Keybind["60"]["BackgroundTransparency"] = 1
					Keybind["60"]["BorderSizePixel"] = 0;
					Keybind["60"]["BackgroundColor3"] = Color3.fromRGB(54, 0, 81);
					Keybind["60"]["TextSize"] = 13;
					Keybind["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/Merriweather.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
					Keybind["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
					Keybind["60"]["Selectable"] = false;
					Keybind["60"]["Size"] = UDim2.new(1,0,1,0);
					Keybind["60"]["Name"] = [[Button]];
					Keybind["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Keybind["60"]["Text"] = [[]];
					Keybind["60"]["Position"] = UDim2.new(0,0,0,0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Keybind.Button_Holder.UICorner
					Keybind["5a"] = Instance.new("UICorner", Keybind["59"]);
					Keybind["5a"]["CornerRadius"] = UDim.new(0, 10);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Keybind.Button_Holder.UIPadding
					Keybind["5b"] = Instance.new("UIPadding", Keybind["59"]);
					Keybind["5b"]["PaddingTop"] = UDim.new(0, 2);
					
					Section:Refresh()
				end
				
				--// Keybind Script \\--
				
				do
					Keybind["60"].MouseEnter:Connect(function()
						Keybind.IsHovering = true

						Library:Tween(Keybind["59"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(81, 0, 125)})
					end)

					Keybind["60"].MouseLeave:Connect(function()
						Keybind.IsHovering = false
						
						if not Keybind.Connection then
							Library:Tween(Keybind["59"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(54, 0, 81)})
						end
					end)
					
					game:GetService("UserInputService").InputBegan:Connect(function(input,gpe)
						if gpe then return end
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if Keybind.IsHovering then
								UI.IsIn = true
								Library:Tween(Keybind["59"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(54, 0, 81)})
							end
						end
					end)
					
					game:GetService("UserInputService").InputEnded:Connect(function(input,gpe)
						if gpe then return end
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if Keybind.IsHovering then
								UI.IsIn = false
								Library:Tween(Keybind["59"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(81, 0, 125)})
								if Keybind.Connection then Keybind.Connection:Disconnect();Keybind.Connection = nil end
								Keybind["60"].Text = "..."
								Keybind.Connection = game:GetService("UserInputService").InputBegan:Connect(function(input,gpe)
									if gpe then return end
									if not table.find(Keybind.Blacklist,input.KeyCode) then
										Keybind["60"].Text = input.KeyCode.Name
										Library:Tween(Keybind["59"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(54, 0, 81)},function()
											Keybind.Callback(input.KeyCode)
											Keybind.Connection:Disconnect();Keybind.Connection = nil
										end)
									end
								end)
							end
						end
					end)
				end
				
				return Keybind
				
			end
			
			function Section:TextBox(TextBox_Info,Callback)
				local TextBox_Settings = Library:Get_Defaults({"Text Box",""},TextBox_Info)
				if type(Callback) == "function" then else Callback = function(Text) print(Text) end end
				local TextBox = {IsHovering = false,IsFocus = false,Callback = Callback}
				
				do
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Text Box
					TextBox["5c"] = Instance.new("Frame", Section["96"]);
					TextBox["5c"]["BorderSizePixel"] = 0;
					TextBox["5c"]["BackgroundColor3"] = Color3.fromRGB(101, 51, 151);
					TextBox["5c"]["BackgroundTransparency"] = 0.6000000238418579;
					TextBox["5c"]["Size"] = UDim2.new(0, 270, 0, 32);
					TextBox["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					TextBox["5c"]["Position"] = UDim2.new(0.05000000074505806, 0, 0, 0);
					TextBox["5c"]["Name"] = [[Text Box]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Text Box.UIPadding
					TextBox["5d"] = Instance.new("UIPadding", TextBox["5c"]);
					TextBox["5d"]["PaddingTop"] = UDim.new(0, 2);
					TextBox["5d"]["PaddingRight"] = UDim.new(0, 5);
					TextBox["5d"]["PaddingBottom"] = UDim.new(0, 5);
					TextBox["5d"]["PaddingLeft"] = UDim.new(0, 5);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Text Box.UICorner
					TextBox["5e"] = Instance.new("UICorner", TextBox["5c"]);


					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Text Box.UIStroke
					TextBox["5f"] = Instance.new("UIStroke", TextBox["5c"]);
					TextBox["5f"]["Color"] = Color3.fromRGB(154, 0, 231);
					TextBox["5f"]["Thickness"] = 0.699999988079071;

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Text Box.Title
					TextBox["60"] = Instance.new("TextLabel", TextBox["5c"]);
					TextBox["60"]["TextWrapped"] = true;
					TextBox["60"]["BorderSizePixel"] = 0;
					TextBox["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					TextBox["60"]["TextXAlignment"] = Enum.TextXAlignment.Left;
					TextBox["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
					TextBox["60"]["TextSize"] = 13;
					TextBox["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
					TextBox["60"]["Size"] = UDim2.new(1, 0, 1, 0);
					TextBox["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					TextBox["60"]["Text"] = tostring(TextBox_Settings[1]);
					TextBox["60"]["Name"] = [[Title]];
					TextBox["60"]["BackgroundTransparency"] = 1;
					TextBox["60"]["Position"] = UDim2.new(0, 0, 0.10000000149011612, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Text Box.Title.UIPadding
					TextBox["61"] = Instance.new("UIPadding", TextBox["60"]);
					TextBox["61"]["PaddingLeft"] = UDim.new(0, 4);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Text Box.Text Box
					TextBox["62"] = Instance.new("TextBox", TextBox["5c"]);
					TextBox["62"]["Active"] = false;
					TextBox["62"]["BorderSizePixel"] = 0;
					TextBox["62"]["TextSize"] = 13;
					TextBox["62"]["TextWrapped"] = true;
					TextBox["62"]["BackgroundColor3"] = Color3.fromRGB(54, 0, 81);
					TextBox["62"]["TextColor3"] = Color3.fromRGB(178, 178, 178);
					TextBox["62"]["PlaceholderColor3"] = Color3.fromRGB(178, 178, 178)
					TextBox["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/Merriweather.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
					TextBox["62"]["Size"] = UDim2.new(0.2699003517627716, 0, 0.9599999785423279, 0);
					TextBox["62"]["Selectable"] = false;
					TextBox["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					TextBox["62"]["Text"] = [[]];
					TextBox["62"]["PlaceholderText"] = tostring(TextBox_Settings[2])
					TextBox["62"]["Position"] = UDim2.new(0.7277588844299316, 0, 0.08641725778579712, 0);
					TextBox["62"]["Name"] = [[Text Box]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Text Box.Text Box.UICorner
					TextBox["63"] = Instance.new("UICorner", TextBox["62"]);
					TextBox["63"]["CornerRadius"] = UDim.new(0, 10);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Text Box.Text Box.UIPadding
					TextBox["64"] = Instance.new("UIPadding", TextBox["62"]);
					TextBox["64"]["PaddingTop"] = UDim.new(0, 2);
					
					Section:Refresh()
				end
				
				--// TextBox Script \\--
				
				do
					function TextBox:Run_Script(Device)
						if Device == "PC" then
							TextBox["62"].MouseEnter:Connect(function()

								Library:Tween(TextBox["62"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(81, 0, 125)})
							end)

							TextBox["62"].MouseLeave:Connect(function()

								if not TextBox.IsFocus then
									Library:Tween(TextBox["62"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(54, 0, 81)})
								end
							end)
							
						elseif Device == "Android" then
							
							local old_textbox_pos
							
							TextBox["62"].InputBegan:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.Touch then
									old_textbox_pos = input.Position
								
									Library:Tween(TextBox["62"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(81, 0, 125)})
								end
							end)

							TextBox["62"].InputEnded:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.Touch then
									if input.Position == old_textbox_pos then
										TextBox["62"]:CaptureFocus()
									end
									if not TextBox.IsFocus then
										Library:Tween(TextBox["62"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(54, 0, 81)})
									end
								end
								Library:Tween(TextBox["62"],{.5,"Linear"},{BackgroundTransparency = .6})
								old_textbox_pos = nil
							end)
						end
					end
					
					TextBox["62"].Focused:Connect(function()
						TextBox.IsFocus = true
						UI.IsIn = true
					end)
					
					TextBox["62"].FocusLost:Connect(function()
						TextBox.IsFocus = false
						UI.IsIn = false
						Library:Tween(TextBox["62"],{.5,"Linear"},{BackgroundColor3 = Color3.fromRGB(54, 0, 81)},function()
							TextBox.Callback(tostring(TextBox["62"].Text))
						end)
					end)
					
					
					TextBox:Run_Script(Library.Device)
				end
				
				return TextBox
			end
			
			function Section:Slider(Slider_Info,Callback)
				local Slider_Settings = Library:Get_Defaults({"Slider",0,100},Slider_Info)
				if type(Callback) == "function" then else Callback = function(Text) print(Text) end end
				local Slider = {IsHovering = false,IsDown = false,Callback = Callback}
				
				do
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider
					Slider["65"] = Instance.new("Frame", Section["96"]);
					Slider["65"]["BorderSizePixel"] = 0;
					Slider["65"]["BackgroundColor3"] = Color3.fromRGB(101, 51, 151);
					Slider["65"]["BackgroundTransparency"] = 0.6000000238418579;
					Slider["65"]["Size"] = UDim2.new(0.8999999761581421, 0, 0, 44);
					Slider["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Slider["65"]["Position"] = UDim2.new(0.049999941140413284, 0, 0.6385536789894104, 0);
					Slider["65"]["Name"] = [[Slider]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.UIPadding
					Slider["66"] = Instance.new("UIPadding", Slider["65"]);
					Slider["66"]["PaddingTop"] = UDim.new(0, 2);
					Slider["66"]["PaddingRight"] = UDim.new(0, 5);
					Slider["66"]["PaddingBottom"] = UDim.new(0, 5);
					Slider["66"]["PaddingLeft"] = UDim.new(0, 5);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.UICorner
					Slider["67"] = Instance.new("UICorner", Slider["65"]);


					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.UIStroke
					Slider["68"] = Instance.new("UIStroke", Slider["65"]);
					Slider["68"]["Color"] = Color3.fromRGB(154, 0, 231);
					Slider["68"]["Thickness"] = 0.699999988079071;

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Title
					Slider["69"] = Instance.new("TextLabel", Slider["65"]);
					Slider["69"]["TextWrapped"] = true;
					Slider["69"]["BorderSizePixel"] = 0;
					Slider["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Slider["69"]["TextXAlignment"] = Enum.TextXAlignment.Left;
					Slider["69"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
					Slider["69"]["TextSize"] = 13;
					Slider["69"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
					Slider["69"]["Size"] = UDim2.new(0.8427895307540894, 0, 0.6528225541114807, 0);
					Slider["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Slider["69"]["Text"] = tostring(Slider_Settings[1]);
					Slider["69"]["Name"] = [[Title]];
					Slider["69"]["BackgroundTransparency"] = 1;
					Slider["69"]["Position"] = UDim2.new(-2.320198575489485e-07, 0, -0.011447371914982796, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Title.UIPadding
					Slider["6a"] = Instance.new("UIPadding", Slider["69"]);
					Slider["6a"]["PaddingLeft"] = UDim.new(0, 4);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Title.Icon
					Slider["6b"] = Instance.new("ImageLabel", Slider["69"]);
					Slider["6b"]["BorderSizePixel"] = 0;
					Slider["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Slider["6b"]["Size"] = UDim2.new(0.10000000149011612, 0, 1, 0);
					Slider["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Slider["6b"]["Name"] = [[Icon]];
					Slider["6b"]["BackgroundTransparency"] = 1;
					Slider["6b"]["Position"] = UDim2.new(0.8999999761581421, 0, 0, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Title.Icon.UICorner
					Slider["6c"] = Instance.new("UICorner", Slider["6b"]);
					Slider["6c"]["CornerRadius"] = UDim.new(0, 6);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Value
					Slider["6d"] = Instance.new("TextLabel", Slider["65"]);
					Slider["6d"]["TextWrapped"] = true;
					Slider["6d"]["BorderSizePixel"] = 0;
					Slider["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Slider["6d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
					Slider["6d"]["TextSize"] = 11;
					Slider["6d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
					Slider["6d"]["Size"] = UDim2.new(0.15445144474506378, 0, 0.35537514090538025, 0);
					Slider["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Slider["6d"]["Text"] = tostring(Slider_Settings[3]);
					Slider["6d"]["Name"] = [[Value]];
					Slider["6d"]["BackgroundTransparency"] = 1;
					Slider["6d"]["Position"] = UDim2.new(0.8237825632095337, 0, 0.11569942533969879, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Value.UIPadding
					Slider["6e"] = Instance.new("UIPadding", Slider["6d"]);
					Slider["6e"]["PaddingLeft"] = UDim.new(0, 4);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Value.Icon
					Slider["6f"] = Instance.new("ImageLabel", Slider["6d"]);
					Slider["6f"]["BorderSizePixel"] = 0;
					Slider["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Slider["6f"]["Size"] = UDim2.new(0.10000000149011612, 0, 1, 0);
					Slider["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Slider["6f"]["Name"] = [[Icon]];
					Slider["6f"]["BackgroundTransparency"] = 1;
					Slider["6f"]["Position"] = UDim2.new(0.8999999761581421, 0, 0, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Value.Icon.UICorner
					Slider["70"] = Instance.new("UICorner", Slider["6f"]);
					Slider["70"]["CornerRadius"] = UDim.new(0, 6);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Drag Holder
					Slider["71"] = Instance.new("Frame", Slider["65"]);
					Slider["71"]["BorderSizePixel"] = 0;
					Slider["71"]["BackgroundColor3"] = Color3.fromRGB(54, 0, 81);
					Slider["71"]["Size"] = UDim2.new(0.9600000381469727, 0, 0.18000003695487976, 0);
					Slider["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Slider["71"]["Position"] = UDim2.new(0.01600000075995922, 0, 0.699999988079071, 0);
					Slider["71"]["Name"] = [[Drag Holder]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Drag Holder.UICorner
					Slider["72"] = Instance.new("UICorner", Slider["71"]);


					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Drag Holder.Drag
					Slider["73"] = Instance.new("Frame", Slider["71"]);
					Slider["73"]["BorderSizePixel"] = 0;
					Slider["73"]["BackgroundColor3"] = Color3.fromRGB(131, 0, 201);
					Slider["73"]["Size"] = UDim2.new(1, 0, 1, 0);
					Slider["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Slider["73"]["Name"] = [[Drag]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Slider.Drag Holder.Drag.UICorner
					Slider["74"] = Instance.new("UICorner", Slider["73"]);
					
					Section:Refresh()
				end
				
				--//Slider Script\\--
				
				do
					if Slider_Settings[2] > Slider_Settings[3] then return print("Error : Min Is Higer Then Max") end
					
					function Slider:Run_Script(Device)
						if Device == "PC" then
							Slider["65"].MouseEnter:Connect(function()
								Slider.IsHovering = true

								Library:Tween(Slider["65"],{.5,"Linear"},{BackgroundTransparency = .4})
							end)

							Slider["65"].MouseLeave:Connect(function()
								Slider.IsHovering = false

								Library:Tween(Slider["65"],{.5,"Linear"},{BackgroundTransparency = .6})
							end)



							game:GetService("UserInputService").InputBegan:Connect(function(input,gpe)
								if gpe then return end
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									if Slider.IsHovering then
										Slider.IsDown = true
										UI.IsIn = true
										repeat task.wait()
											local Px = math.clamp((game:GetService("Players").LocalPlayer:GetMouse().X-Slider["71"].AbsolutePosition.X)/Slider["71"].AbsoluteSize.X,0,1)
											Slider["6d"].Text = tostring(math.round((Slider_Settings[3]-Slider_Settings[2])*Px+Slider_Settings[2]))
											Slider["73"].Size = UDim2.fromScale(Px,Slider["73"].Size.Y.Scale)
											Slider.Callback(tonumber(Slider["6d"].Text))
										until not Slider.IsDown
									end
								end
							end)

							game:GetService("UserInputService").InputEnded:Connect(function(input,gpe)
								if gpe then return end
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									Slider.IsDown = false
									UI.IsIn = false
								end
							end)
						elseif Device == "Android" then
							Slider["65"].InputBegan:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.Touch then
									Slider.IsDown = true
									UI.IsIn = true
									repeat task.wait()
										local Px = math.clamp((game:GetService("Players").LocalPlayer:GetMouse().X-Slider["71"].AbsolutePosition.X)/Slider["71"].AbsoluteSize.X,0,1)
										Slider["6d"].Text = tostring(math.round((Slider_Settings[3]-Slider_Settings[2])*Px+Slider_Settings[2]))
										Slider["73"].Size = UDim2.fromScale(Px,Slider["73"].Size.Y.Scale)
										Slider.Callback(tonumber(Slider["6d"].Text))
									until not Slider.IsDown
								end
								Library:Tween(Slider["65"],{.5,"Linear"},{BackgroundTransparency = .4})
							end)

							Slider["65"].InputEnded:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.Touch then
									Slider.IsDown = false
									UI.IsIn = false
								end
								Library:Tween(Slider["65"],{.5,"Linear"},{BackgroundTransparency = .6})
							end)
						end
					end
					
					Slider:Run_Script(Library.Device)
					
				end
			end
			
			function Section:Dropdown(Dropdown_Info,Callback)
				local Dropdown_Settings = Library:Get_Defaults({"Dropdown",{"One","Two","Three"},15439120192,15439120192},Dropdown_Info)
				if type(Callback) == "function" then else Callback = function(Text) print(Text) end end
				local Dropdown = {IsHovering = false,Current = false,Callback = Callback,Buttons_Holder = {}}
				
				do
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Closed Dropdown
					Dropdown["75"] = Instance.new("Frame", Section["96"]);
					Dropdown["75"]["BorderSizePixel"] = 0;
					Dropdown["75"]["BackgroundColor3"] = Color3.fromRGB(101, 51, 151);
					Dropdown["75"]["BackgroundTransparency"] = 0.6000000238418579;
					Dropdown["75"]["Size"] = UDim2.new(0, 270, 0, 32);
					Dropdown["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Dropdown["75"]["Position"] = UDim2.new(0.05000000074505806, 0, 0, 0);
					Dropdown["75"]["Name"] = [[Dropdown]];

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Closed Dropdown.UIPadding
					Dropdown["76"] = Instance.new("UIPadding", Dropdown["75"]);
					Dropdown["76"]["PaddingTop"] = UDim.new(0, 2);
					Dropdown["76"]["PaddingRight"] = UDim.new(0, 5);
					Dropdown["76"]["PaddingBottom"] = UDim.new(0, 6);
					Dropdown["76"]["PaddingLeft"] = UDim.new(0, 5);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Closed Dropdown.UICorner
					Dropdown["77"] = Instance.new("UICorner", Dropdown["75"]);


					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Closed Dropdown.UIStroke
					Dropdown["78"] = Instance.new("UIStroke", Dropdown["75"]);
					Dropdown["78"]["Color"] = Color3.fromRGB(154, 0, 231);
					Dropdown["78"]["Thickness"] = 0.699999988079071;

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Closed Dropdown.Title
					Dropdown["79"] = Instance.new("TextLabel", Dropdown["75"]);
					Dropdown["79"]["TextWrapped"] = true;
					Dropdown["79"]["BorderSizePixel"] = 0;
					Dropdown["79"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Dropdown["79"]["TextXAlignment"] = Enum.TextXAlignment.Left;
					Dropdown["79"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
					Dropdown["79"]["TextSize"] = 13;
					Dropdown["79"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
					Dropdown["79"]["Size"] = UDim2.new(1, 0, 1, 0);
					Dropdown["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Dropdown["79"]["Text"] = tostring(Dropdown_Settings[1]).." : ";
					Dropdown["79"]["Name"] = [[Title]];
					Dropdown["79"]["BackgroundTransparency"] = 1;
					Dropdown["79"]["Position"] = UDim2.new(0, 0, 0.10000000149011612, 0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Closed Dropdown.Title.UIPadding
					Dropdown["7a"] = Instance.new("UIPadding", Dropdown["79"]);
					Dropdown["7a"]["PaddingLeft"] = UDim.new(0, 4);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Closed Dropdown.Title.Icon
					Dropdown["7b"] = Instance.new("ImageLabel", Dropdown["79"]);
					Dropdown["7b"]["BorderSizePixel"] = 0;
					Dropdown["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Dropdown["7b"]["ImageColor3"] = Color3.fromRGB(171, 0, 255);
					Dropdown["7b"]["Image"] = "http://www.roblox.com/asset/?id="..tostring(Dropdown_Settings[3]);
					Dropdown["7b"]["Size"] = UDim2.new(0.07699999958276749, 0, 0, 21.792);
					Dropdown["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Dropdown["7b"]["Name"] = [[Icon]];
					Dropdown["7b"]["BackgroundTransparency"] = 1;
					Dropdown["7b"]["Position"] = UDim2.new(0.93,0, 0.05,0);

					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Closed Dropdown.Title.Icon.UICorner
					Dropdown["7c"] = Instance.new("UICorner", Dropdown["7b"]);
					Dropdown["7c"]["CornerRadius"] = UDim.new(0, 6);
					
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Open Dropdown.Line
					Dropdown["81"] = Instance.new("Frame", Dropdown["75"]);
					Dropdown["81"]["Visible"] = false
					Dropdown["81"]["BorderSizePixel"] = 0;
					Dropdown["81"]["BackgroundColor3"] = Color3.fromRGB(131, 0, 201);
					Dropdown["81"]["Size"] = UDim2.new(1.0379999876022339, 0, 0.007000000216066837, 0);
					Dropdown["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Dropdown["81"]["Position"] = UDim2.new(-0.01899999938905239, 0, 0.6460000276565552, 0);
					Dropdown["81"]["Name"] = [[Line]];
					
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Open Dropdown.Buttons Holder
					Dropdown["82"] = Instance.new("ScrollingFrame", Dropdown["75"]);
					Dropdown["82"]["Visible"] = false
					Dropdown["82"]["Active"] = false;
					Dropdown["82"]["BorderSizePixel"] = 0;
					Dropdown["82"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
					Dropdown["82"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Dropdown["82"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
					Dropdown["82"]["BackgroundTransparency"] = 1;
					Dropdown["82"]["Size"] = UDim2.new(1, 0, 0.30545926094055176, 0);
					Dropdown["82"]["ScrollBarImageColor3"] = Color3.fromRGB(148, 74, 221);
					Dropdown["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Dropdown["82"]["ScrollBarThickness"] = 1;
					Dropdown["82"]["Position"] = UDim2.new(0, 0, 0.6833390593528748, 0);
					Dropdown["82"]["Name"] = [[Buttons Holder]];
					
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Open Dropdown.Buttons Holder.UIListLayout
					Dropdown["83"] = Instance.new("UIListLayout", Dropdown["82"]);
					Dropdown["83"]["VerticalAlignment"] = Enum.VerticalAlignment.Top;
					Dropdown["83"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
					Dropdown["83"]["Padding"] = UDim.new(0, 8);
					Dropdown["83"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
					
					-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Open Dropdown.Buttons Holder.UIPadding
					Dropdown["87"] = Instance.new("UIPadding", Dropdown["82"]);
					Dropdown["87"]["PaddingTop"] = UDim.new(0, 3);

					if UI.Dropdown_List == nil then 
						UI.Dropdown_List = Dropdown["83"]:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
							Dropdown["82"]["CanvasSize"] = UDim2.fromOffset(0,Dropdown["83"].AbsoluteContentSize.Y+5)
						end)
					end
					
					Section:Refresh()
				end
				
				--//Dropdown Script\\--
				
				local Cooldown = false
				
				function Dropdown:Refresh(New_Options)
					if type(New_Options) ~= "table" then New_Options = {"One","Two","Three"} end
					for i,v in pairs(Dropdown["82"]:GetChildren()) do if v:IsA("Frame") then v:Destroy() end end
					for remove,connection in pairs(Dropdown.Buttons_Holder) do if connection.Connections then for dis,con in pairs(connection.Connections) do con:Disconnect() end end end
					table.clear(Dropdown.Buttons_Holder)
					for i = 1,#New_Options do

						Dropdown.Buttons_Holder[i] = {IsHovering = false,IsDown = false,Connections = {},Callback = New_Options[i]}

						-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button
						Dropdown.Buttons_Holder[i]["37"] = Instance.new("Frame", Dropdown["82"]);
						Dropdown.Buttons_Holder[i]["37"]["BorderSizePixel"] = 0;
						Dropdown.Buttons_Holder[i]["37"]["BackgroundColor3"] = Color3.fromRGB(101, 51, 151);
						Dropdown.Buttons_Holder[i]["37"]["BackgroundTransparency"] = 0.6000000238418579;
						Dropdown.Buttons_Holder[i]["37"]["Size"] = UDim2.new(0.96, 0, 0.25, 0);
						Dropdown.Buttons_Holder[i]["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
						Dropdown.Buttons_Holder[i]["37"]["Name"] = [[Button]];

						-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.UIPadding
						Dropdown.Buttons_Holder[i]["38"] = Instance.new("UIPadding", Dropdown.Buttons_Holder[i]["37"]);
						Dropdown.Buttons_Holder[i]["38"]["PaddingTop"] = UDim.new(0, 0);
						Dropdown.Buttons_Holder[i]["38"]["PaddingRight"] = UDim.new(0, 0);
						Dropdown.Buttons_Holder[i]["38"]["PaddingBottom"] = UDim.new(0, 1);
						Dropdown.Buttons_Holder[i]["38"]["PaddingLeft"] = UDim.new(0, 0);

						-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.UICorner
						Dropdown.Buttons_Holder[i]["39"] = Instance.new("UICorner", Dropdown.Buttons_Holder[i]["37"]);
						Dropdown.Buttons_Holder[i]["39"]["CornerRadius"] = UDim.new(0,6)


						-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.UIStroke
						Dropdown.Buttons_Holder[i]["3a"] = Instance.new("UIStroke", Dropdown.Buttons_Holder[i]["37"]);
						Dropdown.Buttons_Holder[i]["3a"]["Color"] = Color3.fromRGB(154, 0, 231);
						Dropdown.Buttons_Holder[i]["3a"]["Thickness"] = 0.699999988079071;

						-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.Title
						Dropdown.Buttons_Holder[i]["3b"] = Instance.new("TextLabel", Dropdown.Buttons_Holder[i]["37"]);
						Dropdown.Buttons_Holder[i]["3b"]["TextWrapped"] = true;
						Dropdown.Buttons_Holder[i]["3b"]["BorderSizePixel"] = 0;
						Dropdown.Buttons_Holder[i]["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
						Dropdown.Buttons_Holder[i]["3b"]["TextXAlignment"] = Enum.TextXAlignment.Center;
						Dropdown.Buttons_Holder[i]["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Jura.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
						Dropdown.Buttons_Holder[i]["3b"]["TextSize"] = 13;
						Dropdown.Buttons_Holder[i]["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
						Dropdown.Buttons_Holder[i]["3b"]["Size"] = UDim2.new(1, 0, 1, 0);
						Dropdown.Buttons_Holder[i]["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
						Dropdown.Buttons_Holder[i]["3b"]["Text"] = tostring(New_Options[i]);
						Dropdown.Buttons_Holder[i]["3b"]["Name"] = [[Title]];
						Dropdown.Buttons_Holder[i]["3b"]["BackgroundTransparency"] = 1;
						Dropdown.Buttons_Holder[i]["3b"]["Position"] = UDim2.new(0, 0, 0.10000000149011612, 0);

						-- StarterGui.Land Hub.Main.Options Holder.Options.Section.Items.Button.Title.UIPadding
						Dropdown.Buttons_Holder[i]["3c"] = Instance.new("UIPadding", Dropdown.Buttons_Holder[i]["3b"]);
						Dropdown.Buttons_Holder[i]["3c"]["PaddingLeft"] = UDim.new(0, 4);
					end
					for i2,v2 in pairs(Dropdown.Buttons_Holder) do
						if not v2["37"] then return end
						if Library.Device == "PC" then
							v2.Connections[1] = v2["37"].MouseEnter:Connect(function()
								Dropdown.IsHovering = false
								Library:Tween(Dropdown["75"],{.5,"Linear"},{BackgroundTransparency = .6})
								v2.IsHovering = true

								if not v2.IsDown then
									Library:Tween(v2["37"],{.5,"Linear"},{BackgroundTransparency = .4})
								end
							end)

							v2.Connections[2] = v2["37"].MouseLeave:Connect(function()
								Dropdown.IsHovering = true
								Library:Tween(Dropdown["75"],{.5,"Linear"},{BackgroundTransparency = .4})
								v2.IsHovering = false

								if not v2.IsDown then
									Library:Tween(v2["37"],{.5,"Linear"},{BackgroundTransparency = .6})
								end
							end)

							v2.Connections[3] = game:GetService("UserInputService").InputBegan:Connect(function(input,gpe)
								if gpe then return end
								if v2.IsHovering then
									if input.UserInputType == Enum.UserInputType.MouseButton1 then
										UI.IsIn = true
										v2.IsDown = true
										Library:Tween(v2["37"],{.3,"Linear"},{BackgroundTransparency = .2})
									end
								end
							end)

							v2.Connections[4] = game:GetService("UserInputService").InputEnded:Connect(function(input,gpe)
								if gpe then return end
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									if v2.IsHovering then
										UI.IsIn = false
										v2.IsDown = false
										Library:Tween(v2["37"],{.3,"Linear"},{BackgroundTransparency = .4})
										Dropdown["79"]["Text"] = tostring(Dropdown_Settings[1]).." : "..tostring(v2.Callback)
										Dropdown.Callback(tostring(v2.Callback))
									else
										v2.IsDown = false
										Library:Tween(v2["37"],{.5,"Linear"},{BackgroundTransparency = .6})
									end
								end
							end)
						elseif Library.Device == "Android" then
							local old_buttons_pos
							
							v2.Connections[1] = v2["37"].InputBegan:Connect(function(input)		
								UI.IsIn = true
								if input.UserInputType == Enum.UserInputType.Touch then
									old_buttons_pos = input.Position
									Dropdown.IsHovering = false
									Library:Tween(v2["37"],{.3,"Linear"},{BackgroundTransparency = .2})
								end
							end)

							v2.Connections[2] = v2["37"].InputEnded:Connect(function(input)
								UI.IsIn = false
								if input.UserInputType == Enum.UserInputType.Touch then
									if input.Position == old_buttons_pos then
										Dropdown.IsHovering = true
										Library:Tween(v2["37"],{.3,"Linear"},{BackgroundTransparency = .4})
										Dropdown["79"]["Text"] = tostring(Dropdown_Settings[1]).." : "..tostring(v2.Callback)
										Dropdown.Callback(tostring(v2.Callback))
									end
								end
								Library:Tween(v2["37"],{.5,"Linear"},{BackgroundTransparency = .6})
								old_buttons_pos = nil
							end)
						end
					end
				end
				
				function Dropdown:Run_Script(Device)
					if Device == "PC" then
						Dropdown["75"].MouseEnter:Connect(function()
							Dropdown.IsHovering = true

							Library:Tween(Dropdown["75"],{.5,"Linear"},{BackgroundTransparency = .4})
						end)

						Dropdown["75"].MouseLeave:Connect(function()
							Dropdown.IsHovering = false

							Library:Tween(Dropdown["75"],{.5,"Linear"},{BackgroundTransparency = .6})
						end)

						game:GetService("UserInputService").InputBegan:Connect(function(input,gpe)
							if gpe then return end
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								if Dropdown.IsHovering then
									UI.IsIn = true
									Library:Tween(Dropdown["75"],{.3,"Linear"},{BackgroundTransparency = .2})
								end
							end
						end)

						game:GetService("UserInputService").InputEnded:Connect(function(input,gpe)
							if gpe then return end
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								if Dropdown.IsHovering then
									UI.IsIn = false
									if not Dropdown.Current and not Cooldown then
										Cooldown = true
										Dropdown.Current = true
										Dropdown["7b"]["Position"] = UDim2.new(0.93,0,0.46,0)
										Dropdown["7b"]["Image"] = "http://www.roblox.com/asset/?id="..tostring(Dropdown_Settings[4]);
										local IsDone = false
										Library:Tween(Dropdown["75"],{.5,"Linear"},{BackgroundTransparency = .4})
										task.spawn(function()
											repeat task.wait()
												Section:Refresh()
											until IsDone == true
										end)
										task.delay(.2,function()
											Dropdown["81"]["Visible"] = true
										end)
										Library:Tween(Dropdown["76"],{.3,"Linear"},{PaddingTop = UDim.new(0, -145)})
										Library:Tween(Dropdown["75"],{.3,"Linear"},{Size = UDim2.new(0,270,0,126)},function()
											IsDone = true
											Dropdown["82"]["Visible"] = true
											Cooldown = false
										end)
									elseif Dropdown.Current and not Cooldown then
										Cooldown = true
										Dropdown.Current = false
										Dropdown["7b"]["Image"] = "http://www.roblox.com/asset/?id="..tostring(Dropdown_Settings[3]);
										Dropdown["81"]["Visible"] = false
										Dropdown["82"]["Visible"] = false
										local IsDone = false
										task.spawn(function()
											repeat task.wait()
												Section:Refresh()
											until IsDone == true
										end)
										task.delay(.25,function()
											Dropdown["7b"]["Position"] = UDim2.new(0.93,0, 0.05,0)
										end)

										Library:Tween(Dropdown["75"],{.5,"Linear"},{BackgroundTransparency = .6})
										Library:Tween(Dropdown["76"],{.3,"Linear"},{PaddingTop = UDim.new(0, 2)})
										Library:Tween(Dropdown["75"],{.3,"Linear"},{Size = UDim2.new(0, 270, 0, 32)},function()
											Cooldown = false
										end)
									end
								end
							end
						end)
					elseif Device == "Android" then
						
						local old_dropdown_pos
						
						Dropdown["75"].InputBegan:Connect(function(input)
							UI.IsIn = true
							if input.UserInputType == Enum.UserInputType.Touch then
								old_dropdown_pos = input.Position
								Library:Tween(Dropdown["75"],{.3,"Linear"},{BackgroundTransparency = .2})
							end
						end)
						
						Dropdown["75"].InputEnded:Connect(function(input)
							UI.IsIn = false
							if input.UserInputType == Enum.UserInputType.Touch then
								if input.Position == old_dropdown_pos then
									if not Dropdown.Current and not Cooldown then
										Cooldown = true
										Dropdown.Current = true
										Dropdown["7b"]["Position"] = UDim2.new(0.93,0,0.46,0)
										Dropdown["7b"]["Image"] = "http://www.roblox.com/asset/?id="..tostring(Dropdown_Settings[4]);
										local IsDone = false
										Library:Tween(Dropdown["75"],{.5,"Linear"},{BackgroundTransparency = .4})
										task.spawn(function()
											repeat task.wait()
												Section:Refresh()
											until IsDone == true
										end)
										task.delay(.2,function()
											Dropdown["81"]["Visible"] = true
										end)
										Library:Tween(Dropdown["76"],{.3,"Linear"},{PaddingTop = UDim.new(0, -145)})
										Library:Tween(Dropdown["75"],{.3,"Linear"},{Size = UDim2.new(0,270,0,126)},function()
											IsDone = true
											Dropdown["82"]["Visible"] = true
											Cooldown = false
										end)
									elseif Dropdown.Current and not Cooldown then
										Cooldown = true
										Dropdown.Current = false
										Dropdown["7b"]["Image"] = "http://www.roblox.com/asset/?id="..tostring(Dropdown_Settings[3]);
										Dropdown["81"]["Visible"] = false
										Dropdown["82"]["Visible"] = false
										local IsDone = false
										task.spawn(function()
											repeat task.wait()
												Section:Refresh()
											until IsDone == true
										end)
										task.delay(.25,function()
											Dropdown["7b"]["Position"] = UDim2.new(0.93,0, 0.05,0)
										end)

										Library:Tween(Dropdown["75"],{.5,"Linear"},{BackgroundTransparency = .6})
										Library:Tween(Dropdown["76"],{.3,"Linear"},{PaddingTop = UDim.new(0, 2)})
										Library:Tween(Dropdown["75"],{.3,"Linear"},{Size = UDim2.new(0, 270, 0, 32)},function()
											Cooldown = false
										end)
									end
								end
							end
							Library:Tween(Dropdown["75"],{.5,"Linear"},{BackgroundTransparency = .6})
							old_dropdown_pos = nil
						end)
					end
				end
				
				Dropdown:Run_Script(Library.Device)
				Dropdown:Refresh(Dropdown_Settings[2])
				
				return Dropdown
			end
			
			return Section
		end

		return Tab
	end
	
	UI:MakeDrag(UI["2"])
	UI:MakeDrag(UI["Logo1"])
	
	return UI
end

local Lib = Library:New()
local Tab = Lib:Tab()
local Sec = Tab:Section()
Sec:Label()
Sec:Button()
Sec:Toggle()
Sec:Keybind()
Sec:TextBox()
Sec:Slider()
Sec:Dropdown()