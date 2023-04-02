local SharedStorage = {} 
--- Gets and item from the player's bank.  
--- (Inherited from Bank) 
function SharedStorage:GetItem() 
end 
--- Gets the number of items that the bank can hold.  
--- (Inherited from Bank) 
function SharedStorage:GetCapacity() 
end 
--- Gets the number of chest that are available.  
--- (Inherited from Bank) 
function SharedStorage:GetChestCount() 
end 
--- Gets a flag indicating if the bank is currently available.  
--- (Inherited from Bank) 
function SharedStorage:IsAvailable() 
end 
--- Gets the numbers of items in the bank.  
--- (Inherited from Bank) 
function SharedStorage:GetCount() 
end 
--- Gets the name of a chest.  
--- (Inherited from Bank) 
function SharedStorage:GetChestName() 
end 
--- Handles the dropping of items into a bank.  
--- (Inherited from Bank) 
function SharedStorage:PerformShortcutDrop() 
end 
--- Event fired when the contents of the bank has been refreshed.  
--- (Inherited from Bank) 
function SharedStorage:ItemsRefreshed() 
end 
--- Event fired when an item is removed from a bank.  
--- (Inherited from Bank) 
function SharedStorage:ItemRemoved() 
end 
--- Event fired when an item is moved from one chest to another.  
--- (Inherited from Bank) 
function SharedStorage:ItemMoved() 
end 
--- Event fired when the name of a chest has changed.  
--- (Inherited from Bank) 
function SharedStorage:ChestNameChanged() 
end 
--- Event fired when the availability of the bank changes.  
--- (Inherited from Bank) 
function SharedStorage:IsAvailableChanged() 
end 
--- Event fired when the count of items in the bank changes.  
--- (Inherited from Bank) 
function SharedStorage:CountChanged() 
end 
--- Event fired when the capacity of the bank has changed.  
--- (Inherited from Bank) 
function SharedStorage:CapacityChanged() 
end 
--- Event fired when an item is added to a bank.  
--- (Inherited from Bank) 
function SharedStorage:ItemAdded() 
end 
return SharedStorage