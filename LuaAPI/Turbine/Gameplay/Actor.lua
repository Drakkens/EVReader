local Actor = {} 
--- Gets the max temporary power of the actor. 
function Actor:GetMaxTemporaryPower() 
end 
--- Gets the actor's target. 
function Actor:GetTarget() 
end 
--- Gets the temporary power of the actor. 
function Actor:GetTemporaryPower() 
end 
--- Gets the name of the entity.  
--- (Inherited from Entity) 
function Actor:GetName() 
end 
--- Gets the max power of the actor. 
function Actor:GetMaxPower() 
end 
--- Gets the base max power of the actor. 
function Actor:GetBaseMaxPower() 
end 
--- Gets the current power of the actor. 
function Actor:GetPower() 
end 
--- Returns true if this entity is the local player entity. (Deprecated).  
--- (Inherited from Entity) 
function Actor:IsLocalPlayer() 
end 
--- Gets the base max morale of the actor. 
function Actor:GetBaseMaxMorale() 
end 
--- Gets the max morale of the actor. 
function Actor:GetMaxMorale() 
end 
--- Gets the maximum temporary morale of the actor. 
function Actor:GetMaxTemporaryMorale() 
end 
--- Gets the temporary morale of the actor. 
function Actor:GetTemporaryMorale() 
end 
--- Gets the level of the actor. 
function Actor:GetLevel() 
end 
--- Gets the current morale of the actor. 
function Actor:GetMorale() 
end 
--- Gets the effects on the actor. 
function Actor:GetEffects() 
end 
--- Event fired when he actor's power changes. 
function Actor:PowerChanged() 
end 
--- Event fired when he actor's max power changes. 
function Actor:MaxPowerChanged() 
end 
--- Event fired when the actor's base max morale changes. 
function Actor:BaseMaxMoraleChanged() 
end 
--- Event fired when the actor's max temporary morale changes. 
function Actor:MaxTemporaryMoraleChanged() 
end 
--- Event fired when the actor's level changes. 
function Actor:LevelChanged() 
end 
--- Event fired when the actor's name changes.  
--- (Inherited from Entity) 
function Actor:NameChanged() 
end 
--- Event fired when he actor's temporary power changes. 
function Actor:TemporaryPowerChanged() 
end 
--- Event fired when the actor's morale changes. 
function Actor:MoraleChanged() 
end 
--- Event fired when he actor's max temporary power changes. 
function Actor:MaxTemporaryPowerChanged() 
end 
--- Event fired when the actor's max morale changes. 
function Actor:MaxMoraleChanged() 
end 
--- Event fired when he actor's base max power changes. 
function Actor:BaseMaxPowerChanged() 
end 
--- Event fired when the actor's temporary morale changes. 
function Actor:TemporaryMoraleChanged() 
end 
--- Event fired when the actor's target changes. 
function Actor:TargetChanged() 
end 
return Actor