local Engine = {} 
--- Logs a message to the script log. 
function Engine:ScriptLog() 
end 
--- Gets the current relative game time. 
function Engine:GetGameTime() 
end 
--- Gets the current callstack. 
function Engine:GetCallStack() 
end 
--- Gets the language the client is using. 
function Engine:GetLanguage() 
end 
--- Gets a string identify the locale the application is set to. 
function Engine:GetLocale() 
end 
--- Gets the current date. 
function Engine:GetDate() 
end 
--- Gets the number of seconds since 1/1/1970. 
function Engine:GetLocalTime() 
end 
--- Gets the major and minor versions numbers for the Lua script system. 
function Engine:GetScriptVersion() 
end 
return Engine