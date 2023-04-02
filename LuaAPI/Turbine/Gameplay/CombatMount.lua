local CombatMount = {} 
--- Gets the armor value of the mount. 
function CombatMount:GetArmor() 
end 
--- Gets the base armor value of the mount. 
function CombatMount:GetBaseArmor() 
end 
--- Gets the name of the entity.  
--- (Inherited from Entity) 
function CombatMount:GetName() 
end 
--- Returns true if this entity is the local player entity. (Deprecated).  
--- (Inherited from Entity) 
function CombatMount:IsLocalPlayer() 
end 
--- Gets the base max morale of the mount. 
function CombatMount:GetBaseMaxMorale() 
end 
--- Gets the base max power of the mount. 
function CombatMount:GetBaseMaxPower() 
end 
--- Gets the name of the entity.  
--- (Inherited from Mount) 
function CombatMount:GetName() 
end 
--- Gets the unmodified agility of the mount. 
function CombatMount:GetBaseAgility() 
end 
--- Gets the unmodified strength of the mount. 
function CombatMount:GetBaseStrength() 
end 
--- Gets the max fury of the combat horse. 
function CombatMount:GetMaxFury() 
end 
--- Gets the current fury of the combat horse. 
function CombatMount:GetFury() 
end 
--- Gets the max morale of the mount. 
function CombatMount:GetMaxMorale() 
end 
--- Gets the modified agility of the player. 
function CombatMount:GetAgility() 
end 
--- Gets the maximum temporary morale of the mount. 
function CombatMount:GetMaxTemporaryMorale() 
end 
--- Gets the max power of the mount. 
function CombatMount:GetMaxPower() 
end 
--- Gets the max temporary power of the mount. 
function CombatMount:GetMaxTemporaryPower() 
end 
--- Gets the current morale of the mount. 
function CombatMount:GetMorale() 
end 
--- Gets the current power of the mount. 
function CombatMount:GetPower() 
end 
--- Gets the temporary morale of the mount. 
function CombatMount:GetTemporaryMorale() 
end 
--- Gets the modified strength of the player. 
function CombatMount:GetStrength() 
end 
--- Gets the temporary power of the mount. 
function CombatMount:GetTemporaryPower() 
end 
--- Event fired when he mount's max temporary power changes. 
function CombatMount:FuryChanged() 
end 
--- Event fired when he mount's temporary power changes. 
function CombatMount:TemporaryPowerChanged() 
end 
--- Event fired when the actor's name changes.  
--- (Inherited from Entity) 
function CombatMount:NameChanged() 
end 
--- Event fired when he mount's max power changes. 
function CombatMount:MaxPowerChanged() 
end 
--- Event fired when he mount's power changes. 
function CombatMount:PowerChanged() 
end 
--- Event fired when the mount's max morale changes. 
function CombatMount:MaxMoraleChanged() 
end 
--- Event fired when he mount's max temporary power changes. 
function CombatMount:MaxTemporaryPowerChanged() 
end 
--- Event fired when the mount's temporary morale changes. 
function CombatMount:TemporaryMoraleChanged() 
end 
--- Event fired when the mount's max temporary morale changes. 
function CombatMount:MaxTemporaryMoraleChanged() 
end 
--- Event fired when the mount's morale changes. 
function CombatMount:MoraleChanged() 
end 
--- Event fired when the mount's base max morale changes. 
function CombatMount:BaseMaxMoraleChanged() 
end 
--- Event fired when he mount's base max power changes. 
function CombatMount:BaseMaxPowerChanged() 
end 
return CombatMount