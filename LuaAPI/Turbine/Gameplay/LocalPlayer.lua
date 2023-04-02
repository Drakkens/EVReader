local LocalPlayer = {} 
--- Gets the effects on the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetEffects() 
end 
--- Gets the level of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetLevel() 
end 
--- Gets the temporary power of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetTemporaryPower() 
end 
--- Gets the player's shared storage. 
function LocalPlayer:GetSharedStorage() 
end 
--- Gets the temporary morale of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetTemporaryMorale() 
end 
--- Gets the general attributes of a player. 
function LocalPlayer:GetAttributes() 
end 
--- Gets the player's vault. 
function LocalPlayer:GetVault() 
end 
--- Gets the base max morale of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetBaseMaxMorale() 
end 
--- Gets a flag indicating if the player is in combat. 
function LocalPlayer:IsInCombat() 
end 
--- Gets the player's mount. 
function LocalPlayer:GetMount() 
end 
--- Gets the max power of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetMaxPower() 
end 
--- Gets the race of the player. 
--- (Inherited from Player) 
function LocalPlayer:GetRace() 
end 
--- Gets a flag indicating if the player has voice communication enabled. 
function LocalPlayer:IsVoiceEnabled() 
end 
--- Gets the name of the entity. 
--- (Inherited from Entity) 
function LocalPlayer:GetName() 
end 
--- Gets the class of the player. 
--- (Inherited from Player) 
function LocalPlayer:GetClass() 
end 
--- Gets the instance of the Local Player. 
function LocalPlayer:GetInstance() 
end 
--- Gets a flag indicating if the player has voice communication enabled. 
--- (Inherited from Player) 
function LocalPlayer:IsVoiceEnabled() 
end 
--- Gets the maximum temporary morale of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetMaxTemporaryMorale() 
end 
--- Gets the max morale of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetMaxMorale() 
end 
--- Gets the current morale of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetMorale() 
end 
--- Gets the party the player is a member of. 
--- (Inherited from Player) 
function LocalPlayer:GetParty() 
end 
--- Gets the pet of the player. 
--- (Inherited from Player) 
function LocalPlayer:GetPet() 
end 
--- Gets a flag indicating if the player is disconnected. 
--- (Inherited from Player) 
function LocalPlayer:IsLinkDead() 
end 
--- Gets attribute information specific to a class. 
function LocalPlayer:GetClassAttributes() 
end 
--- Returns true if this entity is the local player entity. (Deprecated). 
--- (Inherited from Entity) 
function LocalPlayer:IsLocalPlayer() 
end 
--- Gets the player's equipment. 
function LocalPlayer:GetEquipment() 
end 
--- Gets the player's backpack. 
function LocalPlayer:GetBackpack() 
end 
--- Gets the current power of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetPower() 
end 
--- Gets the ready state of a player based on the result of a ready check. 
function LocalPlayer:GetReadyState() 
end 
--- Gets a flag indicating if the player is currently transmitting voice data. 
--- (Inherited from Player) 
function LocalPlayer:IsVoiceActive() 
end 
--- Gets the base max power of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetBaseMaxPower() 
end 
--- Gets attribute information specific to a race. 
function LocalPlayer:GetRaceAttributes() 
end 
--- Gets the max temporary power of the actor. 
--- (Inherited from Actor) 
function LocalPlayer:GetMaxTemporaryPower() 
end 
--- Gets the ready state of a player based on the result of a ready check. 
--- (Inherited from Player) 
function LocalPlayer:GetReadyState() 
end 
--- Gets a flag indicating if the player is disconnected. 
function LocalPlayer:IsLinkDead() 
end 
--- Gets the alignment of the player. 
--- (Inherited from Player) 
function LocalPlayer:GetAlignment() 
end 
--- Gets the actor's target. 
--- (Inherited from Actor) 
function LocalPlayer:GetTarget() 
end 
--- Gets the list of trained skills. 
function LocalPlayer:GetTrainedSkills() 
end 
--- Gets the player's wallet. 
function LocalPlayer:GetWallet() 
end 
--- Gets the list of untrained skills. 
function LocalPlayer:GetUntrainedSkills() 
end 
--- Event fired when the party of the player has changed. 
--- (Inherited from Player) 
function LocalPlayer:PartyChanged() 
end 
--- Event fired when the link dead state of the player has changed. 
--- (Inherited from Player) 
function LocalPlayer:IsLinkDeadChanged() 
end 
--- Event fired when the player's in combat state changes. 
function LocalPlayer:InCombatChanged() 
end 
--- Event fired when the state of the player transmitting voice data has changed. 
--- (Inherited from Player) 
function LocalPlayer:IsVoiceActiveChanged() 
end 
--- Event fired when the pet of the player has changed. 
--- (Inherited from Player) 
function LocalPlayer:PetChanged() 
end 
--- Event fired when the voice enabled state of the player has changed. 
--- (Inherited from Player) 
function LocalPlayer:IsVoiceEnabledChanged() 
end 
--- Event fired when he actor's power changes. 
--- (Inherited from Actor) 
function LocalPlayer:PowerChanged() 
end 
--- Event fired when the actor's max morale changes. 
--- (Inherited from Actor) 
function LocalPlayer:MaxMoraleChanged() 
end 
--- Event fired when the raid of the player has changed. 
--- (Inherited from Player) 
function LocalPlayer:RaidChanged() 
end 
--- Event fired when the ready state of the player has changed. 
--- (Inherited from Player) 
function LocalPlayer:ReadyStateChanged() 
end 
--- Event fired when the actor's level changes. 
--- (Inherited from Actor) 
function LocalPlayer:LevelChanged() 
end 
--- Event fired when he actor's base max power changes. 
--- (Inherited from Actor) 
function LocalPlayer:BaseMaxPowerChanged() 
end 
--- Event fired when the actor's temporary morale changes. 
--- (Inherited from Actor) 
function LocalPlayer:TemporaryMoraleChanged() 
end 
--- Event fired when he actor's temporary power changes. 
--- (Inherited from Actor) 
function LocalPlayer:TemporaryPowerChanged() 
end 
--- Event fired when he actor's max power changes. 
--- (Inherited from Actor) 
function LocalPlayer:MaxPowerChanged() 
end 
--- Event fired when the actor's name changes. 
--- (Inherited from Entity) 
function LocalPlayer:NameChanged() 
end 
--- Event fired when the actor's morale changes. 
--- (Inherited from Actor) 
function LocalPlayer:MoraleChanged() 
end 
--- Event fired when the actor's target changes. 
--- (Inherited from Actor) 
function LocalPlayer:TargetChanged() 
end 
--- Event fired when the actor's base max morale changes. 
--- (Inherited from Actor) 
function LocalPlayer:BaseMaxMoraleChanged() 
end 
--- Event fired when he actor's max temporary power changes. 
--- (Inherited from Actor) 
function LocalPlayer:MaxTemporaryPowerChanged() 
end 
--- Event fired when the actor's max temporary morale changes. 
--- (Inherited from Actor) 
function LocalPlayer:MaxTemporaryMoraleChanged() 
end 
--- Event fired when the player's mount has changed. 
function LocalPlayer:MountChanged() 
end 
return LocalPlayer