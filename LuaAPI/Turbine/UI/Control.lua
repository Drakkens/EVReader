local Control = {} 
--- Sets the background image of the control. 
function Control:SetBackground() 
end 
--- Sets the position of the control. 
function Control:SetPosition() 
end 
--- Sets the parent of the control. 
function Control:SetParent() 
end 
--- Returns true if the control has focus. 
function Control:HasFocus() 
end 
--- Sets the size of the control. 
function Control:SetSize() 
end 
--- Sets the opacity of the window. 
function Control:SetOpacity() 
end 
--- Gets the Z ordering index of the control. 
function Control:GetZOrder() 
end 
--- Gets a flag indicating if the mouse will see this control. 
function Control:SetMouseVisible() 
end 
--- Gets the background graphic of the control. 
function Control:GetBackground() 
end 
--- Gets the width of the control. 
function Control:GetWidth() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications. 
function Control:GetWantsUpdates() 
end 
--- Sets the left coordinate of the window. 
function Control:SetLeft() 
end 
--- Gets a flag indicating if the control wants to receive key events. 
function Control:GetWantsKeyEvents() 
end 
--- Sets the height of the control. 
function Control:SetHeight() 
end 
--- Sets a flag indicating if the control is enabled. 
function Control:SetEnabled() 
end 
--- Gets the size of the control. 
function Control:GetSize() 
end 
--- Gets the top coordinate of the window. 
function Control:GetTop() 
end 
--- Sets the blend mode applied to the background image. 
function Control:SetBlendMode() 
end 
--- Gets the parent of the control. 
function Control:GetParent() 
end 
--- Gets the opacity of the window. 
function Control:GetOpacity() 
end 
--- Sets the blend mode applied to the background color. 
function Control:SetBackColorBlendMode() 
end 
--- Sets the background color of the control. 
function Control:SetBackColor() 
end 
--- Gets the mouse position relative to this control. 
function Control:GetMousePosition() 
end 
--- Gets the list of child controls. 
function Control:GetControls() 
end 
--- Sets if the control supports drop operations from drag and drop. 
function Control:SetAllowDrop() 
end 
--- Gets the left coordinate of the control. 
function Control:GetLeft() 
end 
--- Converts a coordinate from control space to screen space. 
function Control:PointToScreen() 
end 
--- Gets the height of the control. 
function Control:GetHeight() 
end 
--- Converts a coordinate from control space to screen space. 
function Control:PointToClient() 
end 
--- Test if the alt key is pressed. 
function Control:IsAltKeyDown() 
end 
--- Gets the blend mode applied to the background image. 
function Control:GetBlendMode() 
end 
--- Request that the control take focus. 
function Control:Focus() 
end 
--- Test if the shift key is pressed. 
function Control:IsShiftKeyDown() 
end 
--- Gets a flag indicating if the control is visible. 
function Control:IsVisible() 
end 
--- Gets if the control supports drop operations from drag and drop. 
function Control:GetAllowDrop() 
end 
--- Gets the blend mode applied to the background color. 
function Control:GetBackColorBlendMode() 
end 
--- Gets a flag indicating if the mouse will see this control. 
function Control:IsMouseVisible() 
end 
--- Sets the width of the control. 
function Control:SetWidth() 
end 
--- Sets the top coordinate of the window. 
function Control:SetTop() 
end 
--- Sets the visible flag of a control. 
function Control:SetVisible() 
end 
--- Sets the Z order of the control. 
function Control:SetZOrder() 
end 
--- Gets a flag indicating if the control is enabled. 
function Control:IsEnabled() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications. 
function Control:SetWantsUpdates() 
end 
--- Test if the control key is pressed. 
function Control:IsControlKeyDown() 
end 
--- Gets the solid background color of the control. 
function Control:GetBackColor() 
end 
--- Gets a flag indicating if the control is displayed. 
function Control:IsDisplayed() 
end 
--- Sets a flag indicating if the control wants to receive key events. 
function Control:SetWantsKeyEvents() 
end 
--- Gets the position of the control. 
function Control:GetPosition() 
end 
--- Event fired when the control loses focus. 
function Control:FocusLost() 
end 
--- Event fired when the enabled state of the control changes. 
function Control:EnabledChanged() 
end 
--- Event fired when the control gains focus. 
function Control:FocusGained() 
end 
--- Event fired when a key is released. 
function Control:KeyUp() 
end 
--- Event fired when a mouse button is released. 
function Control:MouseUp() 
end 
--- Event fired when a drag drop operation starts the control. 
function Control:DragStart() 
end 
--- Event fired when the visible state of the control changes. 
function Control:VisibleChanged() 
end 
--- Event fired every frame when WantsUpdates is enabled. 
function Control:Update() 
end 
--- Event fired when a mouse button is pressed. 
function Control:MouseDown() 
end 
--- Event fired when the position of the control changes. 
function Control:PositionChanged() 
end 
--- Event fired when a drag drop operation enters the control. 
function Control:DragEnter() 
end 
--- Event fired when a key is pressed down. 
function Control:KeyDown() 
end 
--- Event fired when a mouse button is double clicked. 
function Control:MouseDoubleClick() 
end 
--- Event fired when the mouse enters the control. 
function Control:MouseEnter() 
end 
--- Event fired when the size of the control changes. 
function Control:SizeChanged() 
end 
--- Event fired when a mouse wheel moves. 
function Control:MouseWheel() 
end 
--- Event fired when a drag drop operation leaves the control. 
function Control:DragLeave() 
end 
--- Event fired when a mouse button is clicked. 
function Control:MouseClick() 
end 
--- Event fired when the mouse leaves the cotnrol. 
function Control:MouseLeave() 
end 
--- Event fired when the mouse is hovering over the control. 
function Control:MouseHover() 
end 
--- Event fired when a drag drop operation is completed. 
function Control:DragDrop() 
end 
--- Event fired when the mouse moves. 
function Control:MouseMove() 
end 
return Control