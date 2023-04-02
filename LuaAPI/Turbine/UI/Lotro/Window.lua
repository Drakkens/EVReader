local Window = {} 
--- Gets the minimum height of the window.  
--- (Inherited from Window) 
function Window:GetMinimumHeight() 
end 
--- Test if the shift key is pressed.  
--- (Inherited from Control) 
function Window:IsShiftKeyDown() 
end 
--- Gets the maximum width of the window.  
--- (Inherited from Window) 
function Window:GetMaximumWidth() 
end 
--- Gets if the window is resizable. 
function Window:IsResizable() 
end 
--- Gets the maximum size of the window.  
--- (Inherited from Window) 
function Window:GetMaximumSize() 
end 
--- Sets the minimum size of the window.  
--- (Inherited from Window) 
function Window:SetMinimumSize() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function Window:IsMouseVisible() 
end 
--- Gets the maximum height of the window.  
--- (Inherited from Window) 
function Window:GetMaximumHeight() 
end 
--- Gets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function Window:IsEnabled() 
end 
--- Gets the left coordinate of the control.  
--- (Inherited from Control) 
function Window:GetLeft() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function Window:SetMouseVisible() 
end 
--- Gets a flag indicating if the control is displayed.  
--- (Inherited from Control) 
function Window:IsDisplayed() 
end 
--- Gets the height of the control.  
--- (Inherited from Control) 
function Window:GetHeight() 
end 
--- Sets the minimum width of the window.  
--- (Inherited from Window) 
function Window:SetMinimumWidth() 
end 
--- Test if the control key is pressed.  
--- (Inherited from Control) 
function Window:IsControlKeyDown() 
end 
--- Gets the list of child controls.  
--- (Inherited from Control) 
function Window:GetControls() 
end 
--- Test if the alt key is pressed.  
--- (Inherited from Control) 
function Window:IsAltKeyDown() 
end 
--- Sets the minimum height of the window.  
--- (Inherited from Window) 
function Window:SetMinimumHeight() 
end 
--- Gets the blend mode applied to the background image.  
--- (Inherited from Control) 
function Window:GetBlendMode() 
end 
--- Returns true if the control has focus.  
--- (Inherited from Control) 
function Window:HasFocus() 
end 
--- Sets the maximum width of the window.  
--- (Inherited from Window) 
function Window:SetMaximumWidth() 
end 
--- Sets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function Window:SetWantsKeyEvents() 
end 
--- Gets the background graphic of the control.  
--- (Inherited from Control) 
function Window:GetBackground() 
end 
--- Sets the Z order of the control.  
--- (Inherited from Control) 
function Window:SetZOrder() 
end 
--- Gets the Z ordering index of the control.  
--- (Inherited from Control) 
function Window:GetZOrder() 
end 
--- Sets the maximum size of the window.  
--- (Inherited from Window) 
function Window:SetMaximumSize() 
end 
--- Sets the visible flag of a control.  
--- (Inherited from Control) 
function Window:SetVisible() 
end 
--- Gets the blend mode applied to the background color.  
--- (Inherited from Control) 
function Window:GetBackColorBlendMode() 
end 
--- Sets the width of the control.  
--- (Inherited from Control) 
function Window:SetWidth() 
end 
--- Gets the width of the control.  
--- (Inherited from Control) 
function Window:GetWidth() 
end 
--- Sets the maximum height of the window.  
--- (Inherited from Window) 
function Window:SetMaximumHeight() 
end 
--- Sets the top coordinate of the window.  
--- (Inherited from Control) 
function Window:SetTop() 
end 
--- Gets the solid background color of the control.  
--- (Inherited from Control) 
function Window:GetBackColor() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications.  
--- (Inherited from Control) 
function Window:SetWantsUpdates() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications.  
--- (Inherited from Control) 
function Window:GetWantsUpdates() 
end 
--- Sets the left coordinate of the window.  
--- (Inherited from Control) 
function Window:SetLeft() 
end 
--- Sets the text of the window.  
--- (Inherited from Window) 
function Window:SetText() 
end 
--- Gets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function Window:GetAllowDrop() 
end 
--- Gets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function Window:GetWantsKeyEvents() 
end 
--- Sets the height of the control.  
--- (Inherited from Control) 
function Window:SetHeight() 
end 
--- Sets the text of the window. 
function Window:SetText() 
end 
--- Request that the control take focus.  
--- (Inherited from Control) 
function Window:Focus() 
end 
--- Gets the top coordinate of the window.  
--- (Inherited from Control) 
function Window:GetTop() 
end 
--- Sets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function Window:SetEnabled() 
end 
--- Sets the size of the control.  
--- (Inherited from Control) 
function Window:SetSize() 
end 
--- Gets the text of the window.  
--- (Inherited from Window) 
function Window:GetText() 
end 
--- Sets the blend mode applied to the background image.  
--- (Inherited from Control) 
function Window:SetBlendMode() 
end 
--- Sets if the window is resizable. 
function Window:SetResizable() 
end 
--- Gets the size of the control.  
--- (Inherited from Control) 
function Window:GetSize() 
end 
--- Sets the background image of the control.  
--- (Inherited from Control) 
function Window:SetBackground() 
end 
--- Sets the position of the control.  
--- (Inherited from Control) 
function Window:SetPosition() 
end 
--- Gets the position of the control.  
--- (Inherited from Control) 
function Window:GetPosition() 
end 
--- Sets the blend mode applied to the background color.  
--- (Inherited from Control) 
function Window:SetBackColorBlendMode() 
end 
--- Sets the parent of the control.  
--- (Inherited from Control) 
function Window:SetParent() 
end 
--- Gets the parent of the control.  
--- (Inherited from Control) 
function Window:GetParent() 
end 
--- Sets the background color of the control.  
--- (Inherited from Control) 
function Window:SetBackColor() 
end 
--- Sets the opacity of the window.  
--- (Inherited from Control) 
function Window:SetOpacity() 
end 
--- Activates a window, bringing it to the front.  
--- (Inherited from Window) 
function Window:Activate() 
end 
--- Gets the opacity of the window.  
--- (Inherited from Control) 
function Window:GetOpacity() 
end 
--- Closes the window.  
--- (Inherited from Window) 
function Window:Close() 
end 
--- Sets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function Window:SetAllowDrop() 
end 
--- Gets the mouse position relative to this control.  
--- (Inherited from Control) 
function Window:GetMousePosition() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function Window:PointToScreen() 
end 
--- Gets the minimum width of the window.  
--- (Inherited from Window) 
function Window:GetMinimumWidth() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function Window:PointToClient() 
end 
--- Gets the minimum size of the window.  
--- (Inherited from Window) 
function Window:GetMinimumSize() 
end 
--- Gets a flag indicating if the control is visible.  
--- (Inherited from Control) 
function Window:IsVisible() 
end 
--- Event fired when the mouse moves.  
--- (Inherited from Control) 
function Window:MouseMove() 
end 
--- Event fired when the mouse leaves the cotnrol.  
--- (Inherited from Control) 
function Window:MouseLeave() 
end 
--- Event fired when the mouse is hovering over the control.  
--- (Inherited from Control) 
function Window:MouseHover() 
end 
--- Event fired when the mouse enters the control.  
--- (Inherited from Control) 
function Window:MouseEnter() 
end 
--- Event fired when a mouse button is pressed.  
--- (Inherited from Control) 
function Window:MouseDown() 
end 
--- Event fired when a mouse button is double clicked.  
--- (Inherited from Control) 
function Window:MouseDoubleClick() 
end 
--- Event fired when a mouse button is clicked.  
--- (Inherited from Control) 
function Window:MouseClick() 
end 
--- Event fired when a key is released.  
--- (Inherited from Control) 
function Window:KeyUp() 
end 
--- Event fired when the visible state of the control changes.  
--- (Inherited from Control) 
function Window:VisibleChanged() 
end 
--- Event fired when a key is pressed down.  
--- (Inherited from Control) 
function Window:KeyDown() 
end 
--- Event fired when a mouse button is released.  
--- (Inherited from Control) 
function Window:MouseUp() 
end 
--- Event fired every frame when WantsUpdates is enabled.  
--- (Inherited from Control) 
function Window:Update() 
end 
--- Event fired when the size of the control changes.  
--- (Inherited from Control) 
function Window:SizeChanged() 
end 
--- Event fired when the control loses focus.  
--- (Inherited from Control) 
function Window:FocusLost() 
end 
--- Event fired when the control gains focus.  
--- (Inherited from Control) 
function Window:FocusGained() 
end 
--- Event fired when the enabled state of the control changes.  
--- (Inherited from Control) 
function Window:EnabledChanged() 
end 
--- Event fired when a drag drop operation starts the control.  
--- (Inherited from Control) 
function Window:DragStart() 
end 
--- Event fired when a drag drop operation leaves the control.  
--- (Inherited from Control) 
function Window:DragLeave() 
end 
--- Event fired when a drag drop operation enters the control.  
--- (Inherited from Control) 
function Window:DragEnter() 
end 
--- Event fired when a drag drop operation is completed.  
--- (Inherited from Control) 
function Window:DragDrop() 
end 
--- Event fired when a window is deactivated.  
--- (Inherited from Window) 
function Window:Deactivated() 
end 
--- Event fired when the position of the control changes.  
--- (Inherited from Control) 
function Window:PositionChanged() 
end 
--- Event fired when a window is closed.  
--- (Inherited from Window) 
function Window:Closed() 
end 
--- Event fired when a window is closing.  
--- (Inherited from Window) 
function Window:Closing() 
end 
--- Event fired when a window is activated.  
--- (Inherited from Window) 
function Window:Activated() 
end 
--- Event fired when a mouse wheel moves.  
--- (Inherited from Control) 
function Window:MouseWheel() 
end 
return Window