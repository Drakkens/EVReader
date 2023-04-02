local Quickslot = {} 
--- Sets the background color of the control.  
--- (Inherited from Control) 
function Quickslot:SetBackColor() 
end 
--- Gets the position of the control.  
--- (Inherited from Control) 
function Quickslot:GetPosition() 
end 
--- Sets the blend mode applied to the background color.  
--- (Inherited from Control) 
function Quickslot:SetBackColorBlendMode() 
end 
--- Gets the mouse position relative to this control.  
--- (Inherited from Control) 
function Quickslot:GetMousePosition() 
end 
--- Sets the visible flag of a control.  
--- (Inherited from Control) 
function Quickslot:SetVisible() 
end 
--- Sets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function Quickslot:SetAllowDrop() 
end 
--- Gets the opacity of the window.  
--- (Inherited from Control) 
function Quickslot:GetOpacity() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function Quickslot:IsMouseVisible() 
end 
--- Gets the left coordinate of the control.  
--- (Inherited from Control) 
function Quickslot:GetLeft() 
end 
--- Sets the width of the control.  
--- (Inherited from Control) 
function Quickslot:SetWidth() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function Quickslot:PointToScreen() 
end 
--- Sets the Z order of the control.  
--- (Inherited from Control) 
function Quickslot:SetZOrder() 
end 
--- Gets a flag indicating if the control is visible.  
--- (Inherited from Control) 
function Quickslot:IsVisible() 
end 
--- Gets the height of the control.  
--- (Inherited from Control) 
function Quickslot:GetHeight() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function Quickslot:PointToClient() 
end 
--- Gets the list of child controls.  
--- (Inherited from Control) 
function Quickslot:GetControls() 
end 
--- Sets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function Quickslot:SetWantsKeyEvents() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications.  
--- (Inherited from Control) 
function Quickslot:SetWantsUpdates() 
end 
--- Test if the shift key is pressed.  
--- (Inherited from Control) 
function Quickslot:IsShiftKeyDown() 
end 
--- Gets the blend mode applied to the background image.  
--- (Inherited from Control) 
function Quickslot:GetBlendMode() 
end 
--- Gets whether right clicks will activate the quickslot. 
function Quickslot:IsUseOnRightClick() 
end 
--- Gets the background graphic of the control.  
--- (Inherited from Control) 
function Quickslot:GetBackground() 
end 
--- Gets the blend mode applied to the background color.  
--- (Inherited from Control) 
function Quickslot:GetBackColorBlendMode() 
end 
--- Sets whether right clicks will activate the quickslot. 
function Quickslot:SetUseOnRightClick() 
end 
--- Gets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function Quickslot:IsEnabled() 
end 
--- Sets the top coordinate of the window.  
--- (Inherited from Control) 
function Quickslot:SetTop() 
end 
--- Sets the shortcut on the quickslot. 
function Quickslot:SetShortcut() 
end 
--- Gets a flag indicating if the control is displayed.  
--- (Inherited from Control) 
function Quickslot:IsDisplayed() 
end 
--- Sets the size of the control.  
--- (Inherited from Control) 
function Quickslot:SetSize() 
end 
--- Test if the alt key is pressed.  
--- (Inherited from Control) 
function Quickslot:IsAltKeyDown() 
end 
--- Test if the control key is pressed.  
--- (Inherited from Control) 
function Quickslot:IsControlKeyDown() 
end 
--- Sets the position of the control.  
--- (Inherited from Control) 
function Quickslot:SetPosition() 
end 
--- Sets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function Quickslot:SetEnabled() 
end 
--- Returns true if the control has focus.  
--- (Inherited from Control) 
function Quickslot:HasFocus() 
end 
--- Gets the solid background color of the control.  
--- (Inherited from Control) 
function Quickslot:GetBackColor() 
end 
--- Gets the size of the control.  
--- (Inherited from Control) 
function Quickslot:GetSize() 
end 
--- Sets the parent of the control.  
--- (Inherited from Control) 
function Quickslot:SetParent() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function Quickslot:SetMouseVisible() 
end 
--- Gets the Z ordering index of the control.  
--- (Inherited from Control) 
function Quickslot:GetZOrder() 
end 
--- Sets the opacity of the window.  
--- (Inherited from Control) 
function Quickslot:SetOpacity() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications.  
--- (Inherited from Control) 
function Quickslot:GetWantsUpdates() 
end 
--- Gets the width of the control.  
--- (Inherited from Control) 
function Quickslot:GetWidth() 
end 
--- Sets the height of the control.  
--- (Inherited from Control) 
function Quickslot:SetHeight() 
end 
--- Request that the control take focus.  
--- (Inherited from Control) 
function Quickslot:Focus() 
end 
--- Gets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function Quickslot:GetAllowDrop() 
end 
--- Sets the left coordinate of the window.  
--- (Inherited from Control) 
function Quickslot:SetLeft() 
end 
--- Gets the top coordinate of the window.  
--- (Inherited from Control) 
function Quickslot:GetTop() 
end 
--- Gets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function Quickslot:GetWantsKeyEvents() 
end 
--- Sets the blend mode applied to the background image.  
--- (Inherited from Control) 
function Quickslot:SetBlendMode() 
end 
--- Gets the shortcut on the quickslot. 
function Quickslot:GetShortcut() 
end 
--- Gets the parent of the control.  
--- (Inherited from Control) 
function Quickslot:GetParent() 
end 
--- Sets the background image of the control.  
--- (Inherited from Control) 
function Quickslot:SetBackground() 
end 
--- Event fired when the visible state of the control changes.  
--- (Inherited from Control) 
function Quickslot:VisibleChanged() 
end 
--- Event fired when a drag drop operation is completed.  
--- (Inherited from Control) 
function Quickslot:DragDrop() 
end 
--- Event fired when the shortcut changes. 
function Quickslot:ShortcutChanged() 
end 
--- Event fired when the position of the control changes.  
--- (Inherited from Control) 
function Quickslot:PositionChanged() 
end 
--- Event fired when a mouse button is released.  
--- (Inherited from Control) 
function Quickslot:MouseUp() 
end 
--- Event fired when a mouse wheel moves.  
--- (Inherited from Control) 
function Quickslot:MouseWheel() 
end 
--- Event fired when the mouse moves.  
--- (Inherited from Control) 
function Quickslot:MouseMove() 
end 
--- Event fired when a mouse button is clicked.  
--- (Inherited from Control) 
function Quickslot:MouseClick() 
end 
--- Event fired when the mouse leaves the cotnrol.  
--- (Inherited from Control) 
function Quickslot:MouseLeave() 
end 
--- Event fired when the mouse enters the control.  
--- (Inherited from Control) 
function Quickslot:MouseEnter() 
end 
--- Event fired when the mouse is hovering over the control.  
--- (Inherited from Control) 
function Quickslot:MouseHover() 
end 
--- Event fired when a mouse button is double clicked.  
--- (Inherited from Control) 
function Quickslot:MouseDoubleClick() 
end 
--- Event fired when a mouse button is pressed.  
--- (Inherited from Control) 
function Quickslot:MouseDown() 
end 
--- Event fired when a key is released.  
--- (Inherited from Control) 
function Quickslot:KeyUp() 
end 
--- Event fired when a key is pressed down.  
--- (Inherited from Control) 
function Quickslot:KeyDown() 
end 
--- Event fired when the control gains focus.  
--- (Inherited from Control) 
function Quickslot:FocusGained() 
end 
--- Event fired when the control loses focus.  
--- (Inherited from Control) 
function Quickslot:FocusLost() 
end 
--- Event fired when a drag drop operation is completed. 
function Quickslot:DragDrop() 
end 
--- Event fired when the size of the control changes.  
--- (Inherited from Control) 
function Quickslot:SizeChanged() 
end 
--- Event fired when the enabled state of the control changes.  
--- (Inherited from Control) 
function Quickslot:EnabledChanged() 
end 
--- Event fired when a drag drop operation starts the control.  
--- (Inherited from Control) 
function Quickslot:DragStart() 
end 
--- Event fired when a drag drop operation enters the control.  
--- (Inherited from Control) 
function Quickslot:DragEnter() 
end 
--- Event fired when a drag drop operation leaves the control.  
--- (Inherited from Control) 
function Quickslot:DragLeave() 
end 
--- Event fired every frame when WantsUpdates is enabled.  
--- (Inherited from Control) 
function Quickslot:Update() 
end 
return Quickslot