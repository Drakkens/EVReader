local Vault = {} 
--- Gets a flag indicating if the bank is currently available.  
--- (Inherited from Bank) 
function Vault:IsAvailable() 
end 
--- Handles the dropping of items into a bank.  
--- (Inherited from Bank) 
function Vault:PerformShortcutDrop() 
end 
--- Gets the number of items that the bank can hold.  
--- (Inherited from Bank) 
function Vault:GetCapacity() 
end 
--- Gets the name of a chest.  
--- (Inherited from Bank) 
function Vault:GetChestName() 
end 
--- Gets the number of chest that are available.  
--- (Inherited from Bank) 
function Vault:GetChestCount() 
end 
--- Gets and item from the player's bank.  
--- (Inherited from Bank) 
function Vault:GetItem() 
end 
--- Gets the numbers of items in the bank.  
--- (Inherited from Bank) 
function Vault:GetCount() 
end 
--- Event fired when the name of a chest has changed.  
--- (Inherited from Bank) 
function Vault:ChestNameChanged() 
end 
--- Event fired when the count of items in the bank changes.  
--- (Inherited from Bank) 
function Vault:CountChanged() 
end 
--- Event fired when the capacity of the bank has changed.  
--- (Inherited from Bank) 
function Vault:CapacityChanged() 
end 
--- Event fired when an item is removed from a bank.  
--- (Inherited from Bank) 
function Vault:ItemRemoved() 
end 
--- Event fired when the availability of the bank changes.  
--- (Inherited from Bank) 
function Vault:IsAvailableChanged() 
end 
--- Event fired when an item is moved from one chest to another.  
--- (Inherited from Bank) 
function Vault:ItemMoved() 
end 
--- Event fired when an item is added to a bank.  
--- (Inherited from Bank) 
function Vault:ItemAdded() 
end 
--- Event fired when the contents of the bank has been refreshed.  
--- (Inherited from Bank) 
function Vault:ItemsRefreshed() 
end 
return Vault