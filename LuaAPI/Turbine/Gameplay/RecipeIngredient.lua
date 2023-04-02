local RecipeIngredient = {} 
--- Gets the quantity required for the recipe. 
function RecipeIngredient:GetRequiredQuantity() 
end 
--- Gets the item information for the ingredient. 
function RecipeIngredient:GetItemInfo() 
end 
--- Gets the critical chance this ingredient adds when used as part of a recipe. 
function RecipeIngredient:GetCriticalChanceBonus() 
end 
return RecipeIngredient