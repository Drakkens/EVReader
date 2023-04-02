local Bank = {} 
--- Gets a flag indicating if the bank is currently available. 
function Bank:IsAvailable() 
end 
--- Gets the numbers of items in the bank. 
function Bank:GetCount() 
end 
--- Gets the name of a chest. 
function Bank:GetChestName() 
end 
--- Gets the number of items that the bank can hold. 
function Bank:GetCapacity() 
end 
--- Gets and item from the player's bank. 
function Bank:GetItem() 
end 
--- Gets the number of chest that are available. 
function Bank:GetChestCount() 
end 
--- Handles the dropping of items into a bank. 
function Bank:PerformShortcutDrop() 
end 
--- Event fired when an item is added to a bank. 
function Bank:ItemAdded() 
end 
--- Event fired when an item is removed from a bank. 
function Bank:ItemRemoved() 
end 
--- Event fired when the availability of the bank changes. 
function Bank:IsAvailableChanged() 
end 
--- Event fired when the count of items in the bank changes. 
function Bank:CountChanged() 
end 
--- Event fired when the capacity of the bank has changed. 
function Bank:CapacityChanged() 
end 
--- Event fired when the contents of the bank has been refreshed. 
function Bank:ItemsRefreshed() 
end 
--- Event fired when the name of a chest has changed. 
function Bank:ChestNameChanged() 
end 
--- Event fired when an item is moved from one chest to another. 
function Bank:ItemMoved() 
end 
return Bank