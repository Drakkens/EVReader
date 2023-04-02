local ProfessionInfo = {} 
--- Gets the current proficiency level of the profession. 
function ProfessionInfo:GetProficiencyLevel() 
end 
--- Gets the number of recipes the player knows for this profession. 
function ProfessionInfo:GetRecipeCount() 
end 
--- Gets the current mastery experience earned for the profession. 
function ProfessionInfo:GetMasteryExperience() 
end 
--- Gets the target mastery experience for the profession. 
function ProfessionInfo:GetMasteryExperienceTarget() 
end 
--- Gets the current mastery title of the profession. 
function ProfessionInfo:GetMasteryTitle() 
end 
--- Gets the current proficiency title of the profession. 
function ProfessionInfo:GetProficiencyTitle() 
end 
--- Gets the current proficiency experience earned for the profession. 
function ProfessionInfo:GetProficiencyExperience() 
end 
--- Gets the name of the profession. 
function ProfessionInfo:GetName() 
end 
--- Gets the target proficiency experience for the profession. 
function ProfessionInfo:GetProficiencyExperienceTarget() 
end 
--- Gets the current mastery level of the profession. 
function ProfessionInfo:GetMasteryLevel() 
end 
--- Gets the specified recipes for this profession. 
function ProfessionInfo:GetRecipe() 
end 
--- Event fired when a recipe has been added. 
function ProfessionInfo:RecipeAdded() 
end 
--- Event fired when the current proficiency experience earned for the profession has changed. 
function ProfessionInfo:ProficiencyExperienceChanged() 
end 
--- Event fired when the current mastery experience earned for the profession has changed. 
function ProfessionInfo:MasteryExperienceChanged() 
end 
--- Event fired when a recipe has been removed. 
function ProfessionInfo:RecipeRemoved() 
end 
--- Event fired when the current proficiency title of the profession has changed. 
function ProfessionInfo:ProficiencyTitleChanged() 
end 
--- Event fired when the current mastery level of the profession has changed. 
function ProfessionInfo:MasteryLevelChanged() 
end 
--- Event fired when the current proficiency level of the profession has changed. 
function ProfessionInfo:ProficiencyLevelChanged() 
end 
--- Event fired when the target proficiency experience for the profession has changed. 
function ProfessionInfo:ProficiencyExperienceTargetChanged() 
end 
--- Event fired when the current mastery title of the profession has changed. 
function ProfessionInfo:MasteryTitleChanged() 
end 
--- Event fired when the target mastery experience for the profession has changed. 
function ProfessionInfo:MasteryExperienceTargetChanged() 
end 
return ProfessionInfo