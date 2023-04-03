import "Turbine"; -- this imports the base Turbine namespace (needed for the objects under it)
import "Turbine.UI"; -- this will expose the label control that we will implement
import "Turbine.UI.Lotro";
import "Turbine.Gameplay";

essenceValueWindow = Turbine.UI.Window();
essenceValueText = Turbine.UI.Label()

--local Window = require("Turbine/UI/Window");
--essenceValueWindow = Window();
--
--local Label = require("Turbine/UI/Label");
--essenceValueText = Label();
--
--local Shortcut = require("Turbine/UI/Lotro/Shortcut");
--essenceIcon = Shortcut();
--

essenceValueWindow:SetSize(64, 64);
essenceValueWindow:SetBackColor(Turbine.UI.Color(0, 0, 0))
essenceValueWindow:SetPosition(500, 500);

essenceValueText:SetText(3.41)
essenceValueText:SetParent(essenceValueWindow)
essenceValueText:SetPosition(15, essenceValueWindow:GetHeight() / 2)

essenceValueWindow:SetVisible(true);

essenceValueWindow.MouseEnter = function()
    --Turbine.Shell.WriteLine(essenceIconID);

end



