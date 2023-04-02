local GuardianAttributes = {} 
--- Returns true if the first tier parry skills are usable. 
function GuardianAttributes:IsParryTier1Available() 
end 
--- Gets the current stance. 
function GuardianAttributes:GetStance() 
end 
--- Returns true if the third tier block skills are usable. 
function GuardianAttributes:IsBlockTier3Available() 
end 
--- Returns true if the first tier block skills are usable. 
function GuardianAttributes:IsBlockTier1Available() 
end 
--- Returns true if the second tier block skills are usable. 
function GuardianAttributes:IsBlockTier2Available() 
end 
--- Returns true if the third tier parry skills are usable. 
function GuardianAttributes:IsParryTier3Available() 
end 
--- Returns true if the second tier parry skills are usable. 
function GuardianAttributes:IsParryTier2Available() 
end 
--- Event fired when the parry tier 1 availability has changed. 
function GuardianAttributes:IsParryTier1AvailableChanged() 
end 
--- Event fired when the block tier 2 availability has changed. 
function GuardianAttributes:IsBlockTier3AvailableChanged() 
end 
--- Event fired when the block tier 2 availability has changed. 
function GuardianAttributes:IsBlockTier2AvailableChanged() 
end 
--- Event fired when the stance changes. 
function GuardianAttributes:StanceChanged() 
end 
--- Event fired when the parry tier 2 availability has changed. 
function GuardianAttributes:IsParryTier3AvailableChanged() 
end 
--- Event fired when the block tier 1 availability has changed. 
function GuardianAttributes:IsBlockTier1AvailableChanged() 
end 
--- Event fired when the parry tier 2 availability has changed. 
function GuardianAttributes:IsParryTier2AvailableChanged() 
end 
return GuardianAttributes