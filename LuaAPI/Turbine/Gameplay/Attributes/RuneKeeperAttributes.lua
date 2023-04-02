local RuneKeeperAttributes = {} 
--- Returns true if the Rune-Keeper is charged. 
function RuneKeeperAttributes:IsCharged() 
end 
--- Gets the current attunement of a Rune-Keeper. 
function RuneKeeperAttributes:GetAttunement() 
end 
--- Event fired when the attunement of a Rune-Keeper has changed. 
function RuneKeeperAttributes:AttunementChanged() 
end 
--- Event fired when the charge state of the Rune-Keeper changes. 
function RuneKeeperAttributes:IsChargedChanged() 
end 
return RuneKeeperAttributes