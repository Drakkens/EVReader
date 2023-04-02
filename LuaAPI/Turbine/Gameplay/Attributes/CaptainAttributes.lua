local CaptainAttributes = {} 
--- Returns true if the champion is ready to respond to a fellow being defeated. 
function CaptainAttributes:IsInFellowDefeatResponse() 
end 
--- Returns true if the second tier readied skills are usable. 
function CaptainAttributes:IsReadiedTier2Available() 
end 
--- Returns true if the first tier readied skills are usable. 
function CaptainAttributes:IsReadiedTier1Available() 
end 
--- Returns true if the champion is ready to respond to defeating an enemy. 
function CaptainAttributes:IsInEnemyDefeatResponse() 
end 
--- Event fired when the enemy defeat response changes. 
function CaptainAttributes:IsInEnemyDefeatResponseChanged() 
end 
--- Event fired when the readied tier 1 availability has changed. 
function CaptainAttributes:IsReadiedTier1Changed() 
end 
--- Event fired when the fellow defeat response changes. 
function CaptainAttributes:IsInFellowDefeatResponseChanged() 
end 
--- Event fired when the readied tier 2 availability has changed. 
function CaptainAttributes:IsReadiedTier2Changed() 
end 
return CaptainAttributes