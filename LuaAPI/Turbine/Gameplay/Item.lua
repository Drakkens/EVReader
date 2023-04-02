local Item = {} 
--- Gets information about the item. 
function Item:GetItemInfo() 
end 
--- Gets the name of the entity.  
--- (Inherited from Entity) 
function Item:GetName() 
end 
--- Returns true if this entity is the local player entity. (Deprecated).  
--- (Inherited from Entity) 
function Item:IsLocalPlayer() 
end 
--- Event fired when the actor's name changes.  
--- (Inherited from Entity) 
function Item:NameChanged() 
end 
return Item