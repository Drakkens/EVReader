import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Turbine.Gameplay";

Turbine.Shell.WriteLine('DataLoader!')

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

function UnloadPlugin()
    Turbine.PluginData.Save(Turbine.DataScope.Character, "EVCTest", statWeights, eventHandler);
    Turbine.Shell.WriteLine('Data Loader Plugin Unloading...');


end

Plugins['EVCDataLoader'].Unload = function()
    UnloadPlugin();

end