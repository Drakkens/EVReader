local Plugin = {} 
--- Gets the name of the plugin. 
function Plugin:GetName() 
end 
--- Gets the plugin configuration information. 
function Plugin:GetConfiguration() 
end 
--- Gets the author of the plugin. 
function Plugin:GetAuthor() 
end 
--- Gets the version of the plugin. 
function Plugin:GetVersion() 
end 
--- Event fired when a plugin's main package has finished loading. 
function Plugin:Load() 
end 
--- Event fired before a plugin is unloaded. 
function Plugin:Unload() 
end 
return Plugin