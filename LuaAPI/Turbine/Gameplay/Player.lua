local Player = {} 
--- Gets the current morale of the actor.  
--- (Inherited from Actor) 
function Player:GetMorale() 
end 
--- Gets the maximum temporary morale of the actor.  
--- (Inherited from Actor) 
function Player:GetMaxTemporaryMorale() 
end 
--- Gets the pet of the player. 
function Player:GetPet() 
end 
--- Gets the party the player is a member of. 
function Player:GetParty() 
end 
--- Gets the base max morale of the actor.  
--- (Inherited from Actor) 
function Player:GetBaseMaxMorale() 
end 
--- Gets the level of the actor.  
--- (Inherited from Actor) 
function Player:GetLevel() 
end 
--- Gets the base max power of the actor.  
--- (Inherited from Actor) 
function Player:GetBaseMaxPower() 
end 
--- Gets a flag indicating if the player is currently transmitting voice data. 
function Player:IsVoiceActive() 
end 
--- Gets the max power of the actor.  
--- (Inherited from Actor) 
function Player:GetMaxPower() 
end 
--- Returns true if this entity is the local player entity. (Deprecated).  
--- (Inherited from Entity) 
function Player:IsLocalPlayer() 
end 
--- Gets the temporary power of the actor.  
--- (Inherited from Actor) 
function Player:GetTemporaryPower() 
end 
--- Gets the race of the player. 
function Player:GetRace() 
end 
--- Gets a flag indicating if the player has voice communication enabled. 
function Player:IsVoiceEnabled() 
end 
--- Gets a flag indicating if the player is disconnected. 
function Player:IsLinkDead() 
end 
--- Gets the effects on the actor.  
--- (Inherited from Actor) 
function Player:GetEffects() 
end 
--- Gets the temporary morale of the actor.  
--- (Inherited from Actor) 
function Player:GetTemporaryMorale() 
end 
--- Gets the actor's target.  
--- (Inherited from Actor) 
function Player:GetTarget() 
end 
--- Gets the current power of the actor.  
--- (Inherited from Actor) 
function Player:GetPower() 
end 
--- Gets the name of the entity.  
--- (Inherited from Entity) 
function Player:GetName() 
end 
--- Gets the alignment of the player. 
function Player:GetAlignment() 
end 
--- Gets the max morale of the actor.  
--- (Inherited from Actor) 
function Player:GetMaxMorale() 
end 
--- Gets the ready state of a player based on the result of a ready check. 
function Player:GetReadyState() 
end 
--- Gets the max temporary power of the actor.  
--- (Inherited from Actor) 
function Player:GetMaxTemporaryPower() 
end 
--- Gets the class of the player. 
function Player:GetClass() 
end 
--- Event fired when he actor's temporary power changes.  
--- (Inherited from Actor) 
function Player:TemporaryPowerChanged() 
end 
--- Event fired when he actor's base max power changes.  
--- (Inherited from Actor) 
function Player:BaseMaxPowerChanged() 
end 
--- Event fired when the actor's target changes.  
--- (Inherited from Actor) 
function Player:TargetChanged() 
end 
--- Event fired when the actor's temporary morale changes.  
--- (Inherited from Actor) 
function Player:TemporaryMoraleChanged() 
end 
--- Event fired when the raid of the player has changed. 
function Player:RaidChanged() 
end 
--- Event fired when the actor's level changes.  
--- (Inherited from Actor) 
function Player:LevelChanged() 
end 
--- Event fired when the state of the player transmitting voice data has changed. 
function Player:IsVoiceActiveChanged() 
end 
--- Event fired when he actor's power changes.  
--- (Inherited from Actor) 
function Player:PowerChanged() 
end 
--- Event fired when the link dead state of the player has changed. 
function Player:IsLinkDeadChanged() 
end 
--- Event fired when the pet of the player has changed. 
function Player:PetChanged() 
end 
--- Event fired when the actor's max temporary morale changes.  
--- (Inherited from Actor) 
function Player:MaxTemporaryMoraleChanged() 
end 
--- Event fired when the actor's base max morale changes.  
--- (Inherited from Actor) 
function Player:BaseMaxMoraleChanged() 
end 
--- Event fired when the party of the player has changed. 
function Player:PartyChanged() 
end 
--- Event fired when the actor's max morale changes.  
--- (Inherited from Actor) 
function Player:MaxMoraleChanged() 
end 
--- Event fired when the actor's morale changes.  
--- (Inherited from Actor) 
function Player:MoraleChanged() 
end 
--- Event fired when he actor's max power changes.  
--- (Inherited from Actor) 
function Player:MaxPowerChanged() 
end 
--- Event fired when the voice enabled state of the player has changed. 
function Player:IsVoiceEnabledChanged() 
end 
--- Event fired when he actor's max temporary power changes.  
--- (Inherited from Actor) 
function Player:MaxTemporaryPowerChanged() 
end 
--- Event fired when the ready state of the player has changed. 
function Player:ReadyStateChanged() 
end 
--- Event fired when the actor's name changes.  
--- (Inherited from Entity) 
function Player:NameChanged() 
end 
return Player