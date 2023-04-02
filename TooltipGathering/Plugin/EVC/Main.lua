import "Turbine"; -- this imports the base Turbine namespace (needed for the objects under it)
import "Turbine.UI"; -- this will expose the label control that we will implement
import "Turbine.UI.Lotro";
import "Turbine.Gameplay";


greenEssenceID = 0x70048F2B
redEssenceID = 0x70048F2F

essenceValueWindow = Turbine.UI.Window();

essenceValueText = Turbine.UI.Label()

function GetItemFromID(itemID)
    if itemID == nil then return end;

    local function GetHex(IN)
        local B,K,OUT,I,D=16,"0123456789ABCDEF","",0,0;
        if IN == 0 or IN == "0" then return "00" end;

        while IN>0 do
            I=I+1
            IN,D=math.floor(IN/B),math.mod(IN,B)+1
            OUT=string.sub(K,D,D)..OUT
        end

        if string.len(OUT)==1 then OUT="0"..OUT end;
        return OUT

    end
    local itemHex = GetHex(itemID);
    local cItemInspect = Turbine.UI.Lotro.Quickslot();
    cItemInspect:SetSize(1,1);
    cItemInspect:SetVisible(false);
    local function SetItemShortcut() 	-- PCALL THIS incase item does not exist
        cItemInspect:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Item, "0x0,0x" .. itemHex));
    end
    if pcall(SetItemShortcut) then
        SetItemShortcut();
        local item = cItemInspect:GetShortcut():GetItem();
        cItemInspect = nil;
        return item;
    end
    cItemInspect = nil;
end


Turbine.Shell.WriteLine(GetItemFromID(1879417694):GetItemInfo():GetName())



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



