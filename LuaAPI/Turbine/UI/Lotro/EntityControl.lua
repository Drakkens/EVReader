local EntityControl = {} 
--- Sets the visible flag of a control.  
--- (Inherited from Control) 
function EntityControl:SetVisible() 
end 
--- Sets the top coordinate of the window.  
--- (Inherited from Control) 
function EntityControl:SetTop() 
end 
--- Sets the size of the control.  
--- (Inherited from Control) 
function EntityControl:SetSize() 
end 
--- Sets the position of the control.  
--- (Inherited from Control) 
function EntityControl:SetPosition() 
end 
--- Sets the parent of the control.  
--- (Inherited from Control) 
function EntityControl:SetParent() 
end 
--- Sets the opacity of the window.  
--- (Inherited from Control) 
function EntityControl:SetOpacity() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function EntityControl:SetMouseVisible() 
end 
--- Sets the left coordinate of the window.  
--- (Inherited from Control) 
function EntityControl:SetLeft() 
end 
--- Sets the height of the control.  
--- (Inherited from Control) 
function EntityControl:SetHeight() 
end 
--- Sets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function EntityControl:SetEnabled() 
end 
--- Sets the blend mode applied to the background image.  
--- (Inherited from Control) 
function EntityControl:SetBlendMode() 
end 
--- Sets the background image of the control.  
--- (Inherited from Control) 
function EntityControl:SetBackground() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function EntityControl:IsMouseVisible() 
end 
--- Sets the blend mode applied to the background color.  
--- (Inherited from Control) 
function EntityControl:SetBackColorBlendMode() 
end 
--- Sets the width of the control.  
--- (Inherited from Control) 
function EntityControl:SetWidth() 
end 
--- Sets the background color of the control.  
--- (Inherited from Control) 
function EntityControl:SetBackColor() 
end 
--- Gets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function EntityControl:IsEnabled() 
end 
--- Gets a flag indicating if the control is displayed.  
--- (Inherited from Control) 
function EntityControl:IsDisplayed() 
end 
--- Sets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function EntityControl:SetAllowDrop() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function EntityControl:PointToScreen() 
end 
--- Test if the control key is pressed.  
--- (Inherited from Control) 
function EntityControl:IsControlKeyDown() 
end 
--- Test if the alt key is pressed.  
--- (Inherited from Control) 
function EntityControl:IsAltKeyDown() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function EntityControl:PointToClient() 
end 
--- Gets a flag indicating if the control is visible.  
--- (Inherited from Control) 
function EntityControl:IsVisible() 
end 
--- Returns true if the control has focus.  
--- (Inherited from Control) 
function EntityControl:HasFocus() 
end 
--- Gets the Z ordering index of the control.  
--- (Inherited from Control) 
function EntityControl:GetZOrder() 
end 
--- Test if the shift key is pressed.  
--- (Inherited from Control) 
function EntityControl:IsShiftKeyDown() 
end 
--- Gets the width of the control.  
--- (Inherited from Control) 
function EntityControl:GetWidth() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications.  
--- (Inherited from Control) 
function EntityControl:GetWantsUpdates() 
end 
--- Request that the control take focus.  
--- (Inherited from Control) 
function EntityControl:Focus() 
end 
--- Gets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function EntityControl:GetWantsKeyEvents() 
end 
--- Gets the top coordinate of the window.  
--- (Inherited from Control) 
function EntityControl:GetTop() 
end 
--- Gets the size of the control.  
--- (Inherited from Control) 
function EntityControl:GetSize() 
end 
--- Gets the position of the control.  
--- (Inherited from Control) 
function EntityControl:GetPosition() 
end 
--- Gets the parent of the control.  
--- (Inherited from Control) 
function EntityControl:GetParent() 
end 
--- Gets the opacity of the window.  
--- (Inherited from Control) 
function EntityControl:GetOpacity() 
end 
--- Gets the mouse position relative to this control.  
--- (Inherited from Control) 
function EntityControl:GetMousePosition() 
end 
--- Sets the Z order of the control.  
--- (Inherited from Control) 
function EntityControl:SetZOrder() 
end 
--- Gets the left coordinate of the control.  
--- (Inherited from Control) 
function EntityControl:GetLeft() 
end 
--- Gets the height of the control.  
--- (Inherited from Control) 
function EntityControl:GetHeight() 
end 
--- Gets the list of child controls.  
--- (Inherited from Control) 
function EntityControl:GetControls() 
end 
--- Gets the blend mode applied to the background image.  
--- (Inherited from Control) 
function EntityControl:GetBlendMode() 
end 
--- Gets the background graphic of the control.  
--- (Inherited from Control) 
function EntityControl:GetBackground() 
end 
--- Gets the blend mode applied to the background color.  
--- (Inherited from Control) 
function EntityControl:GetBackColorBlendMode() 
end 
--- Gets the solid background color of the control.  
--- (Inherited from Control) 
function EntityControl:GetBackColor() 
end 
--- Sets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function EntityControl:SetWantsKeyEvents() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications.  
--- (Inherited from Control) 
function EntityControl:SetWantsUpdates() 
end 
--- Gets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function EntityControl:GetAllowDrop() 
end 
--- Event fired when the position of the control changes.  
--- (Inherited from Control) 
function EntityControl:PositionChanged() 
end 
--- Event fired when a mouse wheel moves.  
--- (Inherited from Control) 
function EntityControl:MouseWheel() 
end 
--- Event fired when a mouse button is released.  
--- (Inherited from Control) 
function EntityControl:MouseUp() 
end 
--- Event fired when the mouse moves.  
--- (Inherited from Control) 
function EntityControl:MouseMove() 
end 
--- Event fired when the mouse leaves the cotnrol.  
--- (Inherited from Control) 
function EntityControl:MouseLeave() 
end 
--- Event fired when the size of the control changes.  
--- (Inherited from Control) 
function EntityControl:SizeChanged() 
end 
--- Event fired when a drag drop operation is completed.  
--- (Inherited from Control) 
function EntityControl:DragDrop() 
end 
--- Event fired when the mouse is hovering over the control.  
--- (Inherited from Control) 
function EntityControl:MouseHover() 
end 
--- Event fired when the mouse enters the control.  
--- (Inherited from Control) 
function EntityControl:MouseEnter() 
end 
--- Event fired when a mouse button is pressed.  
--- (Inherited from Control) 
function EntityControl:MouseDown() 
end 
--- Event fired when a mouse button is double clicked.  
--- (Inherited from Control) 
function EntityControl:MouseDoubleClick() 
end 
--- Event fired when a mouse button is clicked.  
--- (Inherited from Control) 
function EntityControl:MouseClick() 
end 
--- Event fired when a key is released.  
--- (Inherited from Control) 
function EntityControl:KeyUp() 
end 
--- Event fired when a key is pressed down.  
--- (Inherited from Control) 
function EntityControl:KeyDown() 
end 
--- Event fired when the control loses focus.  
--- (Inherited from Control) 
function EntityControl:FocusLost() 
end 
--- Event fired when the control gains focus.  
--- (Inherited from Control) 
function EntityControl:FocusGained() 
end 
--- Event fired when the enabled state of the control changes.  
--- (Inherited from Control) 
function EntityControl:EnabledChanged() 
end 
--- Event fired when a drag drop operation enters the control.  
--- (Inherited from Control) 
function EntityControl:DragEnter() 
end 
--- Event fired when a drag drop operation starts the control.  
--- (Inherited from Control) 
function EntityControl:DragStart() 
end 
--- Event fired when a drag drop operation leaves the control.  
--- (Inherited from Control) 
function EntityControl:DragLeave() 
end 
--- Event fired when the visible state of the control changes.  
--- (Inherited from Control) 
function EntityControl:VisibleChanged() 
end 
--- Event fired every frame when WantsUpdates is enabled.  
--- (Inherited from Control) 
function EntityControl:Update() 
end 
return EntityControl