local ScrollableControl = {} 
--- Sets the background color of the control.  
--- (Inherited from Control) 
function ScrollableControl:SetBackColor() 
end 
--- Gets the opacity of the window.  
--- (Inherited from Control) 
function ScrollableControl:GetOpacity() 
end 
--- Sets the blend mode applied to the background color.  
--- (Inherited from Control) 
function ScrollableControl:SetBackColorBlendMode() 
end 
--- Gets the parent of the control.  
--- (Inherited from Control) 
function ScrollableControl:GetParent() 
end 
--- Sets the background image of the control.  
--- (Inherited from Control) 
function ScrollableControl:SetBackground() 
end 
--- Gets the position of the control.  
--- (Inherited from Control) 
function ScrollableControl:GetPosition() 
end 
--- Request that the control take focus.  
--- (Inherited from Control) 
function ScrollableControl:Focus() 
end 
--- Sets the blend mode applied to the background image.  
--- (Inherited from Control) 
function ScrollableControl:SetBlendMode() 
end 
--- Gets the size of the control.  
--- (Inherited from Control) 
function ScrollableControl:GetSize() 
end 
--- Sets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function ScrollableControl:SetEnabled() 
end 
--- Gets the top coordinate of the window.  
--- (Inherited from Control) 
function ScrollableControl:GetTop() 
end 
--- Sets the height of the control.  
--- (Inherited from Control) 
function ScrollableControl:SetHeight() 
end 
--- Gets the vertical scroll bar. 
function ScrollableControl:GetVerticalScrollBar() 
end 
--- Sets the horizontal scroll bar. 
function ScrollableControl:SetHorizontalScrollBar() 
end 
--- Gets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function ScrollableControl:GetWantsKeyEvents() 
end 
--- Sets the left coordinate of the window.  
--- (Inherited from Control) 
function ScrollableControl:SetLeft() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications.  
--- (Inherited from Control) 
function ScrollableControl:GetWantsUpdates() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function ScrollableControl:SetMouseVisible() 
end 
--- Gets the width of the control.  
--- (Inherited from Control) 
function ScrollableControl:GetWidth() 
end 
--- Sets the opacity of the window.  
--- (Inherited from Control) 
function ScrollableControl:SetOpacity() 
end 
--- Gets the Z ordering index of the control.  
--- (Inherited from Control) 
function ScrollableControl:GetZOrder() 
end 
--- Sets the parent of the control.  
--- (Inherited from Control) 
function ScrollableControl:SetParent() 
end 
--- Returns true if the control has focus.  
--- (Inherited from Control) 
function ScrollableControl:HasFocus() 
end 
--- Gets the background graphic of the control.  
--- (Inherited from Control) 
function ScrollableControl:GetBackground() 
end 
--- Sets the position of the control.  
--- (Inherited from Control) 
function ScrollableControl:SetPosition() 
end 
--- Test if the alt key is pressed.  
--- (Inherited from Control) 
function ScrollableControl:IsAltKeyDown() 
end 
--- Sets the size of the control.  
--- (Inherited from Control) 
function ScrollableControl:SetSize() 
end 
--- Test if the control key is pressed.  
--- (Inherited from Control) 
function ScrollableControl:IsControlKeyDown() 
end 
--- Sets the top coordinate of the window.  
--- (Inherited from Control) 
function ScrollableControl:SetTop() 
end 
--- Gets a flag indicating if the control is displayed.  
--- (Inherited from Control) 
function ScrollableControl:IsDisplayed() 
end 
--- Sets the vertical scroll bar. 
function ScrollableControl:SetVerticalScrollBar() 
end 
--- Gets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function ScrollableControl:IsEnabled() 
end 
--- Sets the visible flag of a control.  
--- (Inherited from Control) 
function ScrollableControl:SetVisible() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function ScrollableControl:IsMouseVisible() 
end 
--- Gets the mouse position relative to this control.  
--- (Inherited from Control) 
function ScrollableControl:GetMousePosition() 
end 
--- Sets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function ScrollableControl:SetWantsKeyEvents() 
end 
--- Gets the blend mode applied to the background color.  
--- (Inherited from Control) 
function ScrollableControl:GetBackColorBlendMode() 
end 
--- Gets the solid background color of the control.  
--- (Inherited from Control) 
function ScrollableControl:GetBackColor() 
end 
--- Gets the height of the control.  
--- (Inherited from Control) 
function ScrollableControl:GetHeight() 
end 
--- Test if the shift key is pressed.  
--- (Inherited from Control) 
function ScrollableControl:IsShiftKeyDown() 
end 
--- Gets the horizontal scroll bar. 
function ScrollableControl:GetHorizontalScrollBar() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications.  
--- (Inherited from Control) 
function ScrollableControl:SetWantsUpdates() 
end 
--- Gets a flag indicating if the control is visible.  
--- (Inherited from Control) 
function ScrollableControl:IsVisible() 
end 
--- Gets the blend mode applied to the background image.  
--- (Inherited from Control) 
function ScrollableControl:GetBlendMode() 
end 
--- Sets the width of the control.  
--- (Inherited from Control) 
function ScrollableControl:SetWidth() 
end 
--- Gets the list of child controls.  
--- (Inherited from Control) 
function ScrollableControl:GetControls() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function ScrollableControl:PointToClient() 
end 
--- Gets the left coordinate of the control.  
--- (Inherited from Control) 
function ScrollableControl:GetLeft() 
end 
--- Sets the Z order of the control.  
--- (Inherited from Control) 
function ScrollableControl:SetZOrder() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function ScrollableControl:PointToScreen() 
end 
--- Gets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function ScrollableControl:GetAllowDrop() 
end 
--- Sets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function ScrollableControl:SetAllowDrop() 
end 
--- Event fired when a drag drop operation leaves the control.  
--- (Inherited from Control) 
function ScrollableControl:DragLeave() 
end 
--- Event fired when a drag drop operation starts the control.  
--- (Inherited from Control) 
function ScrollableControl:DragStart() 
end 
--- Event fired when the enabled state of the control changes.  
--- (Inherited from Control) 
function ScrollableControl:EnabledChanged() 
end 
--- Event fired when the control gains focus.  
--- (Inherited from Control) 
function ScrollableControl:FocusGained() 
end 
--- Event fired when the control loses focus.  
--- (Inherited from Control) 
function ScrollableControl:FocusLost() 
end 
--- Event fired when a key is pressed down.  
--- (Inherited from Control) 
function ScrollableControl:KeyDown() 
end 
--- Event fired when a key is released.  
--- (Inherited from Control) 
function ScrollableControl:KeyUp() 
end 
--- Event fired when a mouse button is clicked.  
--- (Inherited from Control) 
function ScrollableControl:MouseClick() 
end 
--- Event fired when a mouse button is double clicked.  
--- (Inherited from Control) 
function ScrollableControl:MouseDoubleClick() 
end 
--- Event fired when a mouse button is pressed.  
--- (Inherited from Control) 
function ScrollableControl:MouseDown() 
end 
--- Event fired when the mouse enters the control.  
--- (Inherited from Control) 
function ScrollableControl:MouseEnter() 
end 
--- Event fired when the mouse is hovering over the control.  
--- (Inherited from Control) 
function ScrollableControl:MouseHover() 
end 
--- Event fired when the mouse leaves the cotnrol.  
--- (Inherited from Control) 
function ScrollableControl:MouseLeave() 
end 
--- Event fired when the mouse moves.  
--- (Inherited from Control) 
function ScrollableControl:MouseMove() 
end 
--- Event fired when a mouse button is released.  
--- (Inherited from Control) 
function ScrollableControl:MouseUp() 
end 
--- Event fired when a mouse wheel moves.  
--- (Inherited from Control) 
function ScrollableControl:MouseWheel() 
end 
--- Event fired when the position of the control changes.  
--- (Inherited from Control) 
function ScrollableControl:PositionChanged() 
end 
--- Event fired when the size of the control changes.  
--- (Inherited from Control) 
function ScrollableControl:SizeChanged() 
end 
--- Event fired when a drag drop operation is completed.  
--- (Inherited from Control) 
function ScrollableControl:DragDrop() 
end 
--- Event fired every frame when WantsUpdates is enabled.  
--- (Inherited from Control) 
function ScrollableControl:Update() 
end 
--- Event fired when the visible state of the control changes.  
--- (Inherited from Control) 
function ScrollableControl:VisibleChanged() 
end 
--- Event fired when a drag drop operation enters the control.  
--- (Inherited from Control) 
function ScrollableControl:DragEnter() 
end 
return ScrollableControl