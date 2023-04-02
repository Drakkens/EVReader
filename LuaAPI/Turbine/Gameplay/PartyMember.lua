local PartyMember = {} 
--- Gets the ready state of a player based on the result of a ready check. 
function PartyMember:GetReadyState() 
end 
--- Gets the class of the player.  
--- (Inherited from Player) 
function PartyMember:GetClass() 
end 
--- Gets the temporary power of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetTemporaryPower() 
end 
--- Gets the ready state of a player based on the result of a ready check.  
--- (Inherited from Player) 
function PartyMember:GetReadyState() 
end 
--- Gets the alignment of the player.  
--- (Inherited from Player) 
function PartyMember:GetAlignment() 
end 
--- Gets the max morale of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetMaxMorale() 
end 
--- Gets the temporary morale of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetTemporaryMorale() 
end 
--- Gets the max temporary power of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetMaxTemporaryPower() 
end 
--- Gets a flag indicating if the player is disconnected. 
function PartyMember:IsLinkDead() 
end 
--- Gets the maximum temporary morale of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetMaxTemporaryMorale() 
end 
--- Gets the pet of the player.  
--- (Inherited from Player) 
function PartyMember:GetPet() 
end 
--- Gets a flag indicating if the player is disconnected.  
--- (Inherited from Player) 
function PartyMember:IsLinkDead() 
end 
--- Gets the current morale of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetMorale() 
end 
--- Gets the level of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetLevel() 
end 
--- Gets a flag indicating if the player has voice communication enabled.  
--- (Inherited from Player) 
function PartyMember:IsVoiceEnabled() 
end 
--- Gets the name of the entity. 
function PartyMember:GetName() 
end 
--- Gets a flag indicating if the player has voice communication enabled. 
function PartyMember:IsVoiceEnabled() 
end 
--- Gets the level of the actor. 
function PartyMember:GetLevel() 
end 
--- Gets the party the player is a member of. 
function PartyMember:GetParty() 
end 
--- Gets the party the player is a member of.  
--- (Inherited from Player) 
function PartyMember:GetParty() 
end 
--- Returns true if this entity is the local player entity. (Deprecated).  
--- (Inherited from Entity) 
function PartyMember:IsLocalPlayer() 
end 
--- Gets the race of the player.  
--- (Inherited from Player) 
function PartyMember:GetRace() 
end 
--- Gets the current power of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetPower() 
end 
--- Gets a flag indicating if the player is currently transmitting voice data.  
--- (Inherited from Player) 
function PartyMember:IsVoiceActive() 
end 
--- Gets the effects on the actor.  
--- (Inherited from Actor) 
function PartyMember:GetEffects() 
end 
--- Gets the name of the entity.  
--- (Inherited from Entity) 
function PartyMember:GetName() 
end 
--- Gets the class of the player. 
function PartyMember:GetClass() 
end 
--- Gets the base max morale of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetBaseMaxMorale() 
end 
--- Gets the raid the player is a member of. 
function PartyMember:GetRaid() 
end 
--- Gets the actor's target.  
--- (Inherited from Actor) 
function PartyMember:GetTarget() 
end 
--- Gets the base max power of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetBaseMaxPower() 
end 
--- Gets the max power of the actor.  
--- (Inherited from Actor) 
function PartyMember:GetMaxPower() 
end 
--- Event fired when the raid of the player has changed.  
--- (Inherited from Player) 
function PartyMember:RaidChanged() 
end 
--- Event fired when the actor's temporary morale changes.  
--- (Inherited from Actor) 
function PartyMember:TemporaryMoraleChanged() 
end 
--- Event fired when the pet of the player has changed.  
--- (Inherited from Player) 
function PartyMember:PetChanged() 
end 
--- Event fired when the state of the player transmitting voice data has changed.  
--- (Inherited from Player) 
function PartyMember:IsVoiceActiveChanged() 
end 
--- Event fired when the actor's base max morale changes.  
--- (Inherited from Actor) 
function PartyMember:BaseMaxMoraleChanged() 
end 
--- Event fired when the voice enabled state of the player has changed.  
--- (Inherited from Player) 
function PartyMember:IsVoiceEnabledChanged() 
end 
--- Event fired when he actor's temporary power changes.  
--- (Inherited from Actor) 
function PartyMember:TemporaryPowerChanged() 
end 
--- Event fired when the actor's target changes.  
--- (Inherited from Actor) 
function PartyMember:TargetChanged() 
end 
--- Event fired when the ready state of the player has changed.  
--- (Inherited from Player) 
function PartyMember:ReadyStateChanged() 
end 
--- Event fired when he actor's power changes.  
--- (Inherited from Actor) 
function PartyMember:PowerChanged() 
end 
--- Event fired when he actor's max power changes.  
--- (Inherited from Actor) 
function PartyMember:MaxPowerChanged() 
end 
--- Event fired when the actor's level changes.  
--- (Inherited from Actor) 
function PartyMember:LevelChanged() 
end 
--- Event fired when the actor's max temporary morale changes.  
--- (Inherited from Actor) 
function PartyMember:MaxTemporaryMoraleChanged() 
end 
--- Event fired when the actor's morale changes.  
--- (Inherited from Actor) 
function PartyMember:MoraleChanged() 
end 
--- Event fired when he actor's max temporary power changes.  
--- (Inherited from Actor) 
function PartyMember:MaxTemporaryPowerChanged() 
end 
--- Event fired when the link dead state of the player has changed.  
--- (Inherited from Player) 
function PartyMember:IsLinkDeadChanged() 
end 
--- Event fired when the actor's name changes.  
--- (Inherited from Entity) 
function PartyMember:NameChanged() 
end 
--- Event fired when the actor's max morale changes.  
--- (Inherited from Actor) 
function PartyMember:MaxMoraleChanged() 
end 
--- Event fired when he actor's base max power changes.  
--- (Inherited from Actor) 
function PartyMember:BaseMaxPowerChanged() 
end 
--- Event fired when the party of the player has changed.  
--- (Inherited from Player) 
function PartyMember:PartyChanged() 
end 
return PartyMember