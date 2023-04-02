local ActiveSkill = {} 
--- Gets the time that the skill will come off of cooldown. 
function ActiveSkill:GetResetTime() 
end 
--- Gets if the skill is currently usable. 
function ActiveSkill:IsUsable() 
end 
--- Gets the base cooldown of the skill. 
function ActiveSkill:GetBaseCooldown() 
end 
--- Gets information about the skill.  
--- (Inherited from Skill) 
function ActiveSkill:GetSkillInfo() 
end 
--- Gets the cooldown of the skill. 
function ActiveSkill:GetCooldown() 
end 
--- Event fired when the reset time of a skill changes. 
function ActiveSkill:ResetTimeChanged() 
end 
return ActiveSkill