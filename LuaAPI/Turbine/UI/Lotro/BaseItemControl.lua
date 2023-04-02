local BaseItemControl = {} 
--- Gets the position of the control.  
--- (Inherited from Control) 
function BaseItemControl:GetPosition() 
end 
--- Sets the blend mode applied to the background image.  
--- (Inherited from Control) 
function BaseItemControl:SetBlendMode() 
end 
--- Gets the parent of the control.  
--- (Inherited from Control) 
function BaseItemControl:GetParent() 
end 
--- Sets the background image of the control.  
--- (Inherited from Control) 
function BaseItemControl:SetBackground() 
end 
--- Gets the opacity of the window.  
--- (Inherited from Control) 
function BaseItemControl:GetOpacity() 
end 
--- Sets the blend mode applied to the background color.  
--- (Inherited from Control) 
function BaseItemControl:SetBackColorBlendMode() 
end 
--- Gets the mouse position relative to this control.  
--- (Inherited from Control) 
function BaseItemControl:GetMousePosition() 
end 
--- Sets the background color of the control.  
--- (Inherited from Control) 
function BaseItemControl:SetBackColor() 
end 
--- Sets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function BaseItemControl:SetAllowDrop() 
end 
--- Gets the left coordinate of the control.  
--- (Inherited from Control) 
function BaseItemControl:GetLeft() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function BaseItemControl:PointToScreen() 
end 
--- Gets the height of the control.  
--- (Inherited from Control) 
function BaseItemControl:GetHeight() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function BaseItemControl:PointToClient() 
end 
--- Gets the list of child controls.  
--- (Inherited from Control) 
function BaseItemControl:GetControls() 
end 
--- Gets a flag indicating if the control is visible.  
--- (Inherited from Control) 
function BaseItemControl:IsVisible() 
end 
--- Sets the Z order of the control.  
--- (Inherited from Control) 
function BaseItemControl:SetZOrder() 
end 
--- Test if the shift key is pressed.  
--- (Inherited from Control) 
function BaseItemControl:IsShiftKeyDown() 
end 
--- Sets the width of the control.  
--- (Inherited from Control) 
function BaseItemControl:SetWidth() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function BaseItemControl:IsMouseVisible() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications.  
--- (Inherited from Control) 
function BaseItemControl:SetWantsUpdates() 
end 
--- Gets the blend mode applied to the background color.  
--- (Inherited from Control) 
function BaseItemControl:GetBackColorBlendMode() 
end 
--- Gets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function BaseItemControl:IsEnabled() 
end 
--- Sets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function BaseItemControl:SetWantsKeyEvents() 
end 
--- Gets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function BaseItemControl:GetAllowDrop() 
end 
--- Gets a flag indicating if the control is displayed.  
--- (Inherited from Control) 
function BaseItemControl:IsDisplayed() 
end 
--- Sets the visible flag of a control.  
--- (Inherited from Control) 
function BaseItemControl:SetVisible() 
end 
--- Test if the control key is pressed.  
--- (Inherited from Control) 
function BaseItemControl:IsControlKeyDown() 
end 
--- Sets the top coordinate of the window.  
--- (Inherited from Control) 
function BaseItemControl:SetTop() 
end 
--- Gets the blend mode applied to the background image.  
--- (Inherited from Control) 
function BaseItemControl:GetBlendMode() 
end 
--- Test if the alt key is pressed.  
--- (Inherited from Control) 
function BaseItemControl:IsAltKeyDown() 
end 
--- Sets the size of the control.  
--- (Inherited from Control) 
function BaseItemControl:SetSize() 
end 
--- Gets the solid background color of the control.  
--- (Inherited from Control) 
function BaseItemControl:GetBackColor() 
end 
--- Request that the control take focus.  
--- (Inherited from Control) 
function BaseItemControl:Focus() 
end 
--- Returns true if the control has focus.  
--- (Inherited from Control) 
function BaseItemControl:HasFocus() 
end 
--- Sets the position of the control.  
--- (Inherited from Control) 
function BaseItemControl:SetPosition() 
end 
--- Gets the Z ordering index of the control.  
--- (Inherited from Control) 
function BaseItemControl:GetZOrder() 
end 
--- Sets the parent of the control.  
--- (Inherited from Control) 
function BaseItemControl:SetParent() 
end 
--- Gets the width of the control.  
--- (Inherited from Control) 
function BaseItemControl:GetWidth() 
end 
--- Sets the opacity of the window.  
--- (Inherited from Control) 
function BaseItemControl:SetOpacity() 
end 
--- Gets the background graphic of the control.  
--- (Inherited from Control) 
function BaseItemControl:GetBackground() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications.  
--- (Inherited from Control) 
function BaseItemControl:GetWantsUpdates() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function BaseItemControl:SetMouseVisible() 
end 
--- Gets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function BaseItemControl:GetWantsKeyEvents() 
end 
--- Sets the left coordinate of the window.  
--- (Inherited from Control) 
function BaseItemControl:SetLeft() 
end 
--- Gets the top coordinate of the window.  
--- (Inherited from Control) 
function BaseItemControl:GetTop() 
end 
--- Sets the height of the control.  
--- (Inherited from Control) 
function BaseItemControl:SetHeight() 
end 
--- Gets the size of the control.  
--- (Inherited from Control) 
function BaseItemControl:GetSize() 
end 
--- Sets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function BaseItemControl:SetEnabled() 
end 
--- Event fired when the visible state of the control changes.  
--- (Inherited from Control) 
function BaseItemControl:VisibleChanged() 
end 
--- Event fired every frame when WantsUpdates is enabled.  
--- (Inherited from Control) 
function BaseItemControl:Update() 
end 
--- Event fired when the size of the control changes.  
--- (Inherited from Control) 
function BaseItemControl:SizeChanged() 
end 
--- Event fired when the position of the control changes.  
--- (Inherited from Control) 
function BaseItemControl:PositionChanged() 
end 
--- Event fired when a mouse wheel moves.  
--- (Inherited from Control) 
function BaseItemControl:MouseWheel() 
end 
--- Event fired when a mouse button is released.  
--- (Inherited from Control) 
function BaseItemControl:MouseUp() 
end 
--- Event fired when the mouse moves.  
--- (Inherited from Control) 
function BaseItemControl:MouseMove() 
end 
--- Event fired when a mouse button is pressed.  
--- (Inherited from Control) 
function BaseItemControl:MouseDown() 
end 
--- Event fired when the mouse leaves the cotnrol.  
--- (Inherited from Control) 
function BaseItemControl:MouseLeave() 
end 
--- Event fired when a drag drop operation is completed.  
--- (Inherited from Control) 
function BaseItemControl:DragDrop() 
end 
--- Event fired when a key is released.  
--- (Inherited from Control) 
function BaseItemControl:KeyUp() 
end 
--- Event fired when the mouse enters the control.  
--- (Inherited from Control) 
function BaseItemControl:MouseEnter() 
end 
--- Event fired when a key is pressed down.  
--- (Inherited from Control) 
function BaseItemControl:KeyDown() 
end 
--- Event fired when the control loses focus.  
--- (Inherited from Control) 
function BaseItemControl:FocusLost() 
end 
--- Event fired when the control gains focus.  
--- (Inherited from Control) 
function BaseItemControl:FocusGained() 
end 
--- Event fired when the enabled state of the control changes.  
--- (Inherited from Control) 
function BaseItemControl:EnabledChanged() 
end 
--- Event fired when a drag drop operation starts the control.  
--- (Inherited from Control) 
function BaseItemControl:DragStart() 
end 
--- Event fired when a drag drop operation leaves the control.  
--- (Inherited from Control) 
function BaseItemControl:DragLeave() 
end 
--- Event fired when a mouse button is double clicked.  
--- (Inherited from Control) 
function BaseItemControl:MouseDoubleClick() 
end 
--- Event fired when a drag drop operation enters the control.  
--- (Inherited from Control) 
function BaseItemControl:DragEnter() 
end 
--- Event fired when a mouse button is clicked.  
--- (Inherited from Control) 
function BaseItemControl:MouseClick() 
end 
--- Event fired when the mouse is hovering over the control.  
--- (Inherited from Control) 
function BaseItemControl:MouseHover() 
end 
return BaseItemControl