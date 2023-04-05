import "Turbine"; -- this imports the base Turbine namespace (needed for the objects under it)
import "Turbine.UI"; -- this will expose the label control that we will implement
import "Turbine.UI.Lotro";
import "Turbine.Gameplay";

essenceValueWindow = Turbine.UI.Window();
essenceValueText = Turbine.UI.Label()
essenceIconWindow = Turbine.UI.Window()

local resourceDirectory = "Drakkens/EVC/Resources/"
--
--local Window = require("Turbine/UI/Window");
--essenceIconWindow = Window();
--
--local Label = require("Turbine/UI/Label");
--essenceValueText = Label();
--
--local Shortcut = require("Turbine/UI/Lotro/Shortcut");
--essenceIcon = Shortcut();
--

Turbine.Shell.WriteLine(_G.myvar)

local redColor = Turbine.UI.Color(1, 0, 0)
local greenColor = Turbine.UI.Color(0, 1, 0)

local redEssence = resourceDirectory .. 'Green_Essence.tga'
local greenEssence = resourceDirectory .. 'Green_Essence.tga'

local command = "python " .. resourceDirectory .. "test.py"



essenceValueWindow:SetSize(70, 32);
essenceValueWindow:SetBackColor(Turbine.UI.Color(0, 0, 0))
essenceValueWindow:SetPosition(500, 500);
essenceValueWindow:SetZOrder(999);

essenceIconWindow:SetSize(15, 22)
essenceIconWindow:SetParent(essenceValueWindow)
essenceIconWindow:SetBackground(resourceDirectory .. 'Essence_Red.tga')
essenceIconWindow:SetPosition(essenceValueWindow:GetWidth() - 15, (essenceValueWindow:GetHeight() / 2) - 11)
essenceIconWindow:SetVisible(true)

essenceValueText:SetText(77.888)
essenceValueText:SetFont(Turbine.UI.Lotro.Font.Verdana16)
essenceValueText:SetForeColor(greenColor)
essenceValueText:SetParent(essenceValueWindow)
essenceValueText:SetPosition(5, (essenceValueWindow:GetHeight() / 2) - 8)

essenceValueWindow:SetVisible(true);

essenceValueWindow.MouseEnter = function()
    --Turbine.Shell.WriteLine(essenceIconID);

end



