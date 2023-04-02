local ScrollBar = {} 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function ScrollBar:PointToClient() 
end 
--- Gets a flag indicating if the control is visible.  
--- (Inherited from Control) 
function ScrollBar:IsVisible() 
end 
--- Test if the shift key is pressed.  
--- (Inherited from Control) 
function ScrollBar:IsShiftKeyDown() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function ScrollBar:IsMouseVisible() 
end 
--- Gets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function ScrollBar:IsEnabled() 
end 
--- Gets a flag indicating if the control is displayed.  
--- (Inherited from Control) 
function ScrollBar:IsDisplayed() 
end 
--- Test if the control key is pressed.  
--- (Inherited from Control) 
function ScrollBar:IsControlKeyDown() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function ScrollBar:SetMouseVisible() 
end 
--- Test if the alt key is pressed.  
--- (Inherited from Control) 
function ScrollBar:IsAltKeyDown() 
end 
--- Sets the maximum value of the scrollbar. 
function ScrollBar:SetMaximum() 
end 
--- Returns true if the control has focus.  
--- (Inherited from Control) 
function ScrollBar:HasFocus() 
end 
--- Gets the Z ordering index of the control.  
--- (Inherited from Control) 
function ScrollBar:GetZOrder() 
end 
--- Gets the width of the control.  
--- (Inherited from Control) 
function ScrollBar:GetWidth() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications.  
--- (Inherited from Control) 
function ScrollBar:GetWantsUpdates() 
end 
--- Sets the orientation of the scroll bar. 
function ScrollBar:SetOrientation() 
end 
--- Gets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function ScrollBar:GetWantsKeyEvents() 
end 
--- Gets the current value of the scrollbar. 
function ScrollBar:GetValue() 
end 
--- Sets the parent of the control.  
--- (Inherited from Control) 
function ScrollBar:SetParent() 
end 
--- Gets the top coordinate of the window.  
--- (Inherited from Control) 
function ScrollBar:GetTop() 
end 
--- Gets the thumb button. 
function ScrollBar:GetThumbButton() 
end 
--- Sets the position of the control.  
--- (Inherited from Control) 
function ScrollBar:SetPosition() 
end 
--- Gets the small change value of the scrollbar. 
function ScrollBar:GetSmallChange() 
end 
--- Gets the size of the control.  
--- (Inherited from Control) 
function ScrollBar:GetSize() 
end 
--- Sets the size of the control.  
--- (Inherited from Control) 
function ScrollBar:SetSize() 
end 
--- Gets the position of the control.  
--- (Inherited from Control) 
function ScrollBar:GetPosition() 
end 
--- Gets the parent of the control.  
--- (Inherited from Control) 
function ScrollBar:GetParent() 
end 
--- Sets the small change value of the scrollbar. 
function ScrollBar:SetSmallChange() 
end 
--- Gets the orientation of the scroll bar. 
function ScrollBar:GetOrientation() 
end 
--- Gets the opacity of the window.  
--- (Inherited from Control) 
function ScrollBar:GetOpacity() 
end 
--- Sets the thumb button. 
function ScrollBar:SetThumbButton() 
end 
--- Sets the minimum value of the scrollbar. 
function ScrollBar:SetMinimum() 
end 
--- Gets the mouse position relative to this control.  
--- (Inherited from Control) 
function ScrollBar:GetMousePosition() 
end 
--- Gets the minimum value of the scrollbar. 
function ScrollBar:GetMinimum() 
end 
--- Sets the top coordinate of the window.  
--- (Inherited from Control) 
function ScrollBar:SetTop() 
end 
--- Sets the button that is used to decrement the value. 
function ScrollBar:SetDecrementButton() 
end 
--- Gets the maximum value of the scrollbar. 
function ScrollBar:GetMaximum() 
end 
--- Gets the left coordinate of the control.  
--- (Inherited from Control) 
function ScrollBar:GetLeft() 
end 
--- Gets the background graphic of the control.  
--- (Inherited from Control) 
function ScrollBar:GetBackground() 
end 
--- Sets the current value of the scrollbar. 
function ScrollBar:SetValue() 
end 
--- Gets the blend mode applied to the background color.  
--- (Inherited from Control) 
function ScrollBar:GetBackColorBlendMode() 
end 
--- Gets the large change value of the scrollbar. 
function ScrollBar:GetLargeChange() 
end 
--- Gets the button that is used to increment the value. 
function ScrollBar:GetIncrementButton() 
end 
--- Gets the solid background color of the control.  
--- (Inherited from Control) 
function ScrollBar:GetBackColor() 
end 
--- Sets the visible flag of a control.  
--- (Inherited from Control) 
function ScrollBar:SetVisible() 
end 
--- Gets the height of the control.  
--- (Inherited from Control) 
function ScrollBar:GetHeight() 
end 
--- Gets the button that is used to decrement the value. 
function ScrollBar:GetDecrementButton() 
end 
--- Sets the background image of the control.  
--- (Inherited from Control) 
function ScrollBar:SetBackground() 
end 
--- Sets the blend mode applied to the background image.  
--- (Inherited from Control) 
function ScrollBar:SetBlendMode() 
end 
--- Sets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function ScrollBar:SetWantsKeyEvents() 
end 
--- Gets the list of child controls.  
--- (Inherited from Control) 
function ScrollBar:GetControls() 
end 
--- Gets the blend mode applied to the background image.  
--- (Inherited from Control) 
function ScrollBar:GetBlendMode() 
end 
--- Request that the control take focus.  
--- (Inherited from Control) 
function ScrollBar:Focus() 
end 
--- Sets the left coordinate of the window.  
--- (Inherited from Control) 
function ScrollBar:SetLeft() 
end 
--- Sets the button that is used to increment the value. 
function ScrollBar:SetIncrementButton() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications.  
--- (Inherited from Control) 
function ScrollBar:SetWantsUpdates() 
end 
--- Sets the height of the control.  
--- (Inherited from Control) 
function ScrollBar:SetHeight() 
end 
--- Sets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function ScrollBar:SetEnabled() 
end 
--- Sets the width of the control.  
--- (Inherited from Control) 
function ScrollBar:SetWidth() 
end 
--- Sets the large change value of the scrollbar. 
function ScrollBar:SetLargeChange() 
end 
--- Sets the Z order of the control.  
--- (Inherited from Control) 
function ScrollBar:SetZOrder() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function ScrollBar:PointToScreen() 
end 
--- Sets the blend mode applied to the background color.  
--- (Inherited from Control) 
function ScrollBar:SetBackColorBlendMode() 
end 
--- Gets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function ScrollBar:GetAllowDrop() 
end 
--- Sets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function ScrollBar:SetAllowDrop() 
end 
--- Sets the opacity of the window.  
--- (Inherited from Control) 
function ScrollBar:SetOpacity() 
end 
--- Sets the background color of the control.  
--- (Inherited from Control) 
function ScrollBar:SetBackColor() 
end 
--- Event fired when the mouse leaves the cotnrol.  
--- (Inherited from Control) 
function ScrollBar:MouseLeave() 
end 
--- Event fired when the size of the control changes.  
--- (Inherited from Control) 
function ScrollBar:SizeChanged() 
end 
--- Event fired when the mouse is hovering over the control.  
--- (Inherited from Control) 
function ScrollBar:MouseHover() 
end 
--- Event fired when the mouse enters the control.  
--- (Inherited from Control) 
function ScrollBar:MouseEnter() 
end 
--- Event fired when a mouse button is pressed.  
--- (Inherited from Control) 
function ScrollBar:MouseDown() 
end 
--- Event fired when a mouse button is double clicked.  
--- (Inherited from Control) 
function ScrollBar:MouseDoubleClick() 
end 
--- Event fired when a mouse button is clicked.  
--- (Inherited from Control) 
function ScrollBar:MouseClick() 
end 
--- Event fired when a key is released.  
--- (Inherited from Control) 
function ScrollBar:KeyUp() 
end 
--- Event fired when a key is pressed down.  
--- (Inherited from Control) 
function ScrollBar:KeyDown() 
end 
--- Event fired when the control loses focus.  
--- (Inherited from Control) 
function ScrollBar:FocusLost() 
end 
--- Event fired when the control gains focus.  
--- (Inherited from Control) 
function ScrollBar:FocusGained() 
end 
--- Event fired when the enabled state of the control changes.  
--- (Inherited from Control) 
function ScrollBar:EnabledChanged() 
end 
--- Event fired when a drag drop operation starts the control.  
--- (Inherited from Control) 
function ScrollBar:DragStart() 
end 
--- Event fired when a drag drop operation leaves the control.  
--- (Inherited from Control) 
function ScrollBar:DragLeave() 
end 
--- Event fired when the value has changed. 
function ScrollBar:ValueChanged() 
end 
--- Event fired when the orientation has changed. 
function ScrollBar:OrientationChanged() 
end 
--- Event fired when a drag drop operation enters the control.  
--- (Inherited from Control) 
function ScrollBar:DragEnter() 
end 
--- Event fired when a drag drop operation is completed.  
--- (Inherited from Control) 
function ScrollBar:DragDrop() 
end 
--- Event fired when the mouse moves.  
--- (Inherited from Control) 
function ScrollBar:MouseMove() 
end 
--- Event fired when the position of the control changes.  
--- (Inherited from Control) 
function ScrollBar:PositionChanged() 
end 
--- Event fired when a mouse button is released.  
--- (Inherited from Control) 
function ScrollBar:MouseUp() 
end 
--- Event fired when the visible state of the control changes.  
--- (Inherited from Control) 
function ScrollBar:VisibleChanged() 
end 
--- Event fired every frame when WantsUpdates is enabled.  
--- (Inherited from Control) 
function ScrollBar:Update() 
end 
--- Event fired when a mouse wheel moves.  
--- (Inherited from Control) 
function ScrollBar:MouseWheel() 
end 
return ScrollBar