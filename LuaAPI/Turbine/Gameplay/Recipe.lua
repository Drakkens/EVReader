local Recipe = {} 
--- Gets the name of category of the recipe. 
function Recipe:GetCategoryName() 
end 
--- Gets the tier of the recipe. 
function Recipe:GetTier() 
end 
--- Gets the base chance to crit when crafting this recipe. 
function Recipe:GetBaseCriticalSuccessChance() 
end 
--- Gets a flag indicating if the recipe is a single use recipe. 
function Recipe:IsSingleUse() 
end 
--- Gets if the recipe supports critical result items. 
function Recipe:HasCriticalResultItem() 
end 
--- Gets the number of optional ingredients for the recipe. 
function Recipe:GetOptionalIngredientCount() 
end 
--- Gets the quantity of the result item actually crafted. 
function Recipe:GetResultItemQuantity() 
end 
--- Gets the item information for the item crafted by this recipe. 
function Recipe:GetResultItemInfo() 
end 
--- Gets the profession of the recipe. 
function Recipe:GetProfession() 
end 
--- Gets the number of ingredients required for the recipe. 
function Recipe:GetIngredientCount() 
end 
--- Gets the information for the specified optional ingredient. 
function Recipe:GetOptionalIngredient() 
end 
--- Gets the name of the recipe. 
function Recipe:GetName() 
end 
--- Gets the recipe ingredient information for an ingredient pack that can be used instead of the recipe ingredients. 
function Recipe:GetIngredientPack() 
end 
--- Gets the information for the specified ingredient. 
function Recipe:GetIngredient() 
end 
--- Gets the quantity of the critical result item actually crafted when the player crits. 
function Recipe:GetCriticalResultItemQuantity() 
end 
--- Gets the amount of crafting experience rewarded for crafting this recipe. 
function Recipe:GetExperienceReward() 
end 
--- Gets the item information for the item crafted by this recipe when the player crits. 
function Recipe:GetCriticalResultItemInfo() 
end 
--- Gets the category of the recipe. 
function Recipe:GetCategory() 
end 
--- Gets the cooldown between using this recipe. 
function Recipe:GetCooldown() 
end 
return Recipe