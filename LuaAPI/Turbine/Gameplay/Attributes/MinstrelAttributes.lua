local MinstrelAttributes = {} 
--- Gets the current stance. 
function MinstrelAttributes:GetStance() 
end 
--- Returns true if the second tier serenade skills are usable. 
function MinstrelAttributes:IsSerenadeTier2Available() 
end 
--- Returns true if the first tier serenade skills are usable. 
function MinstrelAttributes:IsSerenadeTier1Available() 
end 
--- Returns true if the third tier serenade skills are usable. 
function MinstrelAttributes:IsSerenadeTier3Available() 
end 
--- Event fired when the stance changes. 
function MinstrelAttributes:StanceChanged() 
end 
--- Event fired when the serenade tier 1 availability has changed. 
function MinstrelAttributes:IsSerenadeTier1Changed() 
end 
--- Event fired when the serenade tier 2 availability has changed. 
function MinstrelAttributes:IsSerenadeTier3Changed() 
end 
--- Event fired when the serenade tier 2 availability has changed. 
function MinstrelAttributes:IsSerenadeTier2Changed() 
end 
return MinstrelAttributes