local Shell = {} 
--- Gets the list of commands available by the shell. 
function Shell:GetCommands() 
end 
--- Test if the specified name is a registered shell command. 
function Shell:IsCommand() 
end 
--- Writes a line of text to the chat window. 
function Shell:WriteLine() 
end 
--- Removes a command that has been added using AddCommand. 
function Shell:RemoveCommand() 
end 
--- Adds a command that can be executed. 
function Shell:AddCommand() 
end 
return Shell