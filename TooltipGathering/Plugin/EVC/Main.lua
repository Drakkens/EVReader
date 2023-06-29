import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Turbine.Gameplay";

import "Drakkens.EVC.DropDown"
import "Drakkens.EVC.AddCallback"


loaded = false

function drawOptions()
    options = Turbine.UI.Control();
    options:SetSize(1000, 1000);

    plugin.GetOptionsPanel = function(self)
        return options;
    end;

    options:SetVisible(true);

    local classList = { "Beorning", "Burglar", "Brawler", "Captain", "Champion", "Guardian", "Hunter", "Lore-Master", "Minstrel", "Rune-Keeper", "Warden" };

    dropDown = DropDown(classList, 'Select Class');
    dropDown:SetParent(options);
    dropDown:SetPosition(30, 50);
    dropDown:SetWidth(200);
    dropDown:SetAlignment(Turbine.UI.ContentAlignment.MiddleLeft);
    dropDown:SetVisible(true)

    dropDown.ItemChanged = function(sender, args)
        class_id = args.Index;
    end

    drawEssenceWeights(options)

    drawUserControls(options)

end

function createEssenceWeightControls(essenceName, parent, index)
    local label = Turbine.UI.Label();
    label:SetText(essenceName);
    label:SetSize(200, 50)

    local scrollBar = Turbine.UI.Lotro.ScrollBar();
    scrollBar:SetVisible(true);
    scrollBar:SetSize(200, 10);
    scrollBar:SetMaximum(100);
    scrollBar:SetMinimum(0);

    local textBox = Turbine.UI.Lotro.TextBox();
    textBox:SetVisible(true);
    textBox:SetSize(50, 25);
    textBox:SetText(0);
    textBox:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);

    label:SetParent(parent);
    scrollBar:SetParent(parent);
    textBox:SetParent(parent);

    label:SetPosition(parent:GetWidth() / 2, 15 + 45 * index);
    scrollBar:SetPosition(parent:GetWidth() / 2, 30 + 45 * index);
    textBox:SetPosition(parent:GetWidth() / 2 + scrollBar:GetWidth() + 25, 30 + 45 * index);
    
    scrollBar.ValueChanged = function(sender, args)
        --Turbine.Shell.WriteLine(scrollBar:GetValue());
        textBox:SetText(scrollBar:GetValue() / 100);
    end

    textBox.TextChanged = function(sender, args)
        scrollBar:SetValue(tonumber(textBox:GetText()) * 100);

    end

    return textBox
end

function drawEssenceWeights(options)
    configScreen = Turbine.UI.Control();
    configScreen:SetSize(1000, 1000);
    statReferences = {};
    local essenceList = { 'Critical Rating',
                          'Finesse Rating',
                          'Physical Mastery Rating',
                          'Tactical Mastery Rating',
                          'Physical Mitigation',
                          'Tactical Mitigation',
                          'Critical Defence',
                          'Block Rating',
                          'Parry Rating',
                          'Evade Rating',
                          'Outgoing Healing Rating',
                          'Incoming Healing Rating',
                          'Resistance Rating' };

    for key, value in pairs(essenceList) do
        --Turbine.Shell.WriteLine(key, value);
        local textBox = createEssenceWeightControls(value, options, key);
        statReferences[value] = textBox;

    end
end

function drawUserControls(parent)
    local saveButton = Turbine.UI.Lotro.Button();
    saveButton:SetSize(50, 20);
    saveButton:SetText("Save");
    saveButton:SetVisible(true);
    saveButton:SetPosition(parent:GetWidth() / 2, parent:GetHeight() - 30);
    saveButton:SetParent(parent);

    saveButton.Click = function(sender, args)
        shellString = '';
        shellCommand = Turbine.ShellCommand();
        --Turbine.PluginManager.UnloadScriptState("EVC");
        Turbine.PluginManager.LoadPlugin('EVCDataLoader');
        dataSave = {};
        dataSave[class_id] = class_id;
        Turbine.Shell.WriteLine('Clickity')
        for key, value in pairs(statReferences) do
            Turbine.Shell.WriteLine(value:GetText())
            dataSave[key] = value:GetText();
            shellString = shellString .. ';EVC"' .. key .. '"' .. value:GetText() .. '';
        end
        Turbine.Shell.AddCommand(shellString, shellCommand);
        Turbine.Shell.WriteLine(shellString);

        cmds = Turbine.Shell.GetCommands();
        for key, value in pairs(cmds) do
            if (string.find(value, "EVC")) then
                Turbine.Shell.WriteLine(key .. value);

            end
        end

        Turbine.PluginManager.UnloadScriptState('EVCDataLoader');

        function eventHandler()
            Turbine.Shell.WriteLine('Data Saved');

            for key, value in pairs(dataSave) do
                Turbine.Shell.WriteLine(key .. ": " .. value);
            end

        end
        --Plugins['EVC'].Unload()
        --Turbine.PluginData.Save(Turbine.DataScope.Character, "EVCTest", dataSave, eventHandler);
    end

end


function UnloadPlugin()
    Turbine.PluginData.Save(Turbine.DataScope.Character, "EVCTest", dataSave, eventHandler);
    Turbine.Shell.RemoveCommand(shellCommand);
    Turbine.Shell.WriteLine('Plugin Unloading...');


end

drawOptions()


