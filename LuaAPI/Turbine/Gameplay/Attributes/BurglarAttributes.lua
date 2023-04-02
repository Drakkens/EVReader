local BurglarAttributes = {} 
--- Returns true if the second tier critical skills are usable. 
function BurglarAttributes:IsCriticalTier2Available() 
end 
--- Returns true if the first tier critical skills are usable. 
function BurglarAttributes:IsCriticalTier1Available() 
end 
--- Gets the current stance. 
function BurglarAttributes:GetStance() 
end 
--- Event fired when the critical tier 1 availability has changed. 
function BurglarAttributes:IsCriticalTier1Changed() 
end 
--- Event fired when the critical tier 2 availability has changed. 
function BurglarAttributes:IsCriticalTier2Changed() 
end 
--- Event fired when the stance changes. 
function BurglarAttributes:StanceChanged() 
end 
return BurglarAttributes