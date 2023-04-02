local Party = {} 
--- Test if the given play is an assist target of this party. 
function Party:IsAssistTarget() 
end 
--- Test if the given play is a member of this party. 
function Party:IsMember() 
end 
--- Gets the specified assist target. 
function Party:GetAssistTarget() 
end 
--- Gets the leader of the fellowship. 
function Party:GetLeader() 
end 
--- Gets the number of assist targets for the party. 
function Party:GetAssistTargetCount() 
end 
--- Gets the specified member. 
function Party:GetMember() 
end 
--- Gets the number of members in the party. 
function Party:GetMemberCount() 
end 
--- Event fired when a member has joined the party. 
function Party:MemberAdded() 
end 
--- Event fired when a member has been removed from the party. 
function Party:MemberRemoved() 
end 
--- Event fired when an assist target has been added. 
function Party:AssistTargetAdded() 
end 
--- Event fired when an assist target has been removed. 
function Party:AssistTargetRemoved() 
end 
--- Event fired when the leader of the fellowship has changed. 
function Party:LeaderChanged() 
end 
return Party