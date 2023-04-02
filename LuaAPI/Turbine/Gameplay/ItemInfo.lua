local ItemInfo = {} 
--- Gets a flag indicating if the item is unique. 
function ItemInfo:IsUnique() 
end 
--- Gets the quality of the item. 
function ItemInfo:GetQuality() 
end 
--- Gets the image ID for the underlay of the item. 
function ItemInfo:GetUnderlayImageID() 
end 
--- Gets the name of the item. 
function ItemInfo:GetName() 
end 
--- Gets a flag indicating if the item is considered magical. 
function ItemInfo:IsMagic() 
end 
--- Gets the category of the item. 
function ItemInfo:GetCategory() 
end 
--- Gets the maximum number of instances that can be contained at one time. 
function ItemInfo:GetMaxQuantity() 
end 
--- Gets the image ID for the quality of the item. 
function ItemInfo:GetQualityImageID() 
end 
--- Gets the image ID for the shadow of the item. 
function ItemInfo:GetShadowImageID() 
end 
--- Gets the image ID for the icon of the item. 
function ItemInfo:GetIconImageID() 
end 
--- Gets the image ID for the background of the item. 
function ItemInfo:GetBackgroundImageID() 
end 
--- Gets the maximum number of instances that can be stacked together. 
function ItemInfo:GetMaxStackSize() 
end 
--- Gets the description of the item. 
function ItemInfo:GetDescription() 
end 
--- Gets the name of the item including quantity information. 
function ItemInfo:GetNameWithQuantity() 
end 
--- Gets the durability of the item. 
function ItemInfo:GetDurability() 
end 
return ItemInfo