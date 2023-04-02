local GambitSkillInfo = {} 
--- Gets the image ID for the icon of the item.  
--- (Inherited from SkillInfo) 
function GambitSkillInfo:GetIconImageID() 
end 
--- Gets the description of the item.  
--- (Inherited from SkillInfo) 
function GambitSkillInfo:GetDescription() 
end 
--- Gets the number of gambits required to use the gambit skill. 
function GambitSkillInfo:GetGambitCount() 
end 
--- Gets the type of the skill.  
--- (Inherited from SkillInfo) 
function GambitSkillInfo:GetType() 
end 
--- Gets the name of the item.  
--- (Inherited from SkillInfo) 
function GambitSkillInfo:GetName() 
end 
--- Gets the required gambit at the specified index. 
function GambitSkillInfo:GetGambit() 
end 
return GambitSkillInfo