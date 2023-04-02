local Effect = {} 
--- Gets a unique ID for the effect. 
function Effect:GetID() 
end 
--- Gets a flag indicating if the effect is a dispellable effect. 
function Effect:IsDispellable() 
end 
--- Gets the category of the effect. 
function Effect:GetCategory() 
end 
--- Gets a flag indicating if the effect is a debuff. 
function Effect:IsDebuff() 
end 
--- Gets the icon for the effect. 
function Effect:GetIcon() 
end 
--- Gets a flag indicating if the effect is a curable. 
function Effect:IsCurable() 
end 
--- Gets the duration of the effect. 
function Effect:GetDuration() 
end 
--- Gets the time the effect started. 
function Effect:GetStartTime() 
end 
--- Gets the name of the effect. 
function Effect:GetName() 
end 
--- Gets the description of the effect. 
function Effect:GetDescription() 
end 
--- Event fired when the dispellable state changes. 
function Effect:IsDispellableChanged() 
end 
--- Event fired when the debuff state changes. 
function Effect:IsDebuffChanged() 
end 
--- Event fired when the curable state changes. 
function Effect:IsCurableChanged() 
end 
--- Event fired when the name changes. 
function Effect:NameChanged() 
end 
--- Event fired when the duration changes. 
function Effect:DurationChanged() 
end 
--- Event fired when the icon changes. 
function Effect:IconChanged() 
end 
--- Event fired when the description changes. 
function Effect:DescriptionChanged() 
end 
--- Event fired when the start time changes. 
function Effect:StartTimeChanged() 
end 
--- Event fired when the category changes. 
function Effect:CategoryChanged() 
end 
return Effect