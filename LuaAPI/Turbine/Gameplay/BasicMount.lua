local BasicMount = {} 
--- Gets the name of the entity.  
--- (Inherited from Entity) 
function BasicMount:GetName() 
end 
--- Gets the max morale of a basic mount. 
function BasicMount:GetMaxMorale() 
end 
--- Gets the name of the entity.  
--- (Inherited from Mount) 
function BasicMount:GetName() 
end 
--- Returns true if this entity is the local player entity. (Deprecated).  
--- (Inherited from Entity) 
function BasicMount:IsLocalPlayer() 
end 
--- Gets the morale of a basic mount. 
function BasicMount:GetMorale() 
end 
--- Event fired when the mount's max morale changes. 
function BasicMount:MaxMoraleChanged() 
end 
--- Event fired when the mount's morale changes. 
function BasicMount:MoraleChanged() 
end 
--- Event fired when the actor's name changes.  
--- (Inherited from Entity) 
function BasicMount:NameChanged() 
end 
return BasicMount