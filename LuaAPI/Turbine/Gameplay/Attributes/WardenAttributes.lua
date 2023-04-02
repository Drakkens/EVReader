local WardenAttributes = {} 
--- Gets the list of trained gambits. 
function WardenAttributes:GetTrainedGambits() 
end 
--- Gets the number of gambits active. 
function WardenAttributes:GetGambitCount() 
end 
--- Gets the list of untrained gambits. 
function WardenAttributes:GetUntrainedGambits() 
end 
--- Gets the active gambit at the specified index. 
function WardenAttributes:GetGambit() 
end 
--- Gets the maximum gambits the warden can use. 
function WardenAttributes:GetMaxGambitCount() 
end 
--- Gets the current stance. 
function WardenAttributes:GetStance() 
end 
--- Event fired when the stance changes. 
function WardenAttributes:StanceChanged() 
end 
--- Event fired when the number of gambit slots has changed. 
function WardenAttributes:MaxGambitCountChanged() 
end 
--- Event fired when the gambit has changed. 
function WardenAttributes:GambitChanged() 
end 
return WardenAttributes