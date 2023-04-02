local Backpack = {} 
--- Gets an item from the player's backpack. 
function Backpack:GetItem() 
end 
--- Function to handle moving or swapping an item in our inventory. This DOES NOT handle dragging items from any of the character banks or housing hooks. For that functionality please use "PerformShortcutDrop.". 
function Backpack:PerformItemDrop() 
end 
--- Function to handle dropping any kind of item into the backpack. If the item is already in the backpack or is coming from a housing hook, it will perform a swap with anything at the destination index. 
function Backpack:PerformShortcutDrop() 
end 
--- Gets the size of the player's backpack. 
function Backpack:GetSize() 
end 
--- Event fired when an item is removed from the backpack. 
function Backpack:ItemRemoved() 
end 
--- Event fired when the size of the backpack has changed. 
function Backpack:SizeChanged() 
end 
--- Event fired when an item is moved in the backpack. 
function Backpack:ItemMoved() 
end 
--- Event fired when an item is added to the backpack. 
function Backpack:ItemAdded() 
end 
return Backpack