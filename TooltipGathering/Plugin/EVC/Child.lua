import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Turbine.Gameplay";

Turbine.Shell.WriteLine('DataLoader!')

local loaded = false;

local essenceList = { 'Maximum Morale',
                      'Vitality',
                      'Critical Rating',
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

function readData()
    relevantData = {};

    local cmds = Turbine.Shell.GetCommands();

    for command_id, EVCData in pairs(cmds) do
        if (string.find(EVCData, "EVC")) then
            EVCData = string.gsub(EVCData, 'EVC', '')

            local hyphenIndex = string.find(EVCData, '-');

            local EVCStatName = string.sub(EVCData, 0, hyphenIndex - 1)
            local EVCStatValue = string.sub(EVCData, hyphenIndex + 1, -1)

            relevantData[EVCStatName] = EVCStatValue;
        end
    end
end

readData();

function UnloadPlugin()
    function eventHandler()
        Turbine.Shell.WriteLine('Data Saved');

    end

    --Turbine.PluginData.Save(Turbine.DataScope.Character, "EVCTest", relevantData, eventHandler);
    Turbine.PluginData.Save(Turbine.DataScope.Character, "EVCData", relevantData, eventHandler);


end


if (Plugins['EVCDataLoader'] ~= nil and not loaded) then
    loaded = true;
    Plugins['EVCDataLoader'].Unload = function()
        UnloadPlugin();

    end
end
