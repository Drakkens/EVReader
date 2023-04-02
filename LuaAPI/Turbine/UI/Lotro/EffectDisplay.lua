local EffectDisplay = {} 
--- Sets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function EffectDisplay:SetWantsKeyEvents() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function EffectDisplay:IsMouseVisible() 
end 
--- Gets the background graphic of the control.  
--- (Inherited from Control) 
function EffectDisplay:GetBackground() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications.  
--- (Inherited from Control) 
function EffectDisplay:SetWantsUpdates() 
end 
--- Test if the shift key is pressed.  
--- (Inherited from Control) 
function EffectDisplay:IsShiftKeyDown() 
end 
--- Gets the blend mode applied to the background image.  
--- (Inherited from Control) 
function EffectDisplay:GetBlendMode() 
end 
--- Sets the width of the control.  
--- (Inherited from Control) 
function EffectDisplay:SetWidth() 
end 
--- Gets a flag indicating if the control is visible.  
--- (Inherited from Control) 
function EffectDisplay:IsVisible() 
end 
--- Gets the list of child controls.  
--- (Inherited from Control) 
function EffectDisplay:GetControls() 
end 
--- Sets the Z order of the control.  
--- (Inherited from Control) 
function EffectDisplay:SetZOrder() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function EffectDisplay:PointToClient() 
end 
--- Gets the effect displayed by the control. 
function EffectDisplay:GetEffect() 
end 
--- Gets the solid background color of the control.  
--- (Inherited from Control) 
function EffectDisplay:GetBackColor() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function EffectDisplay:PointToScreen() 
end 
--- Gets the height of the control.  
--- (Inherited from Control) 
function EffectDisplay:GetHeight() 
end 
--- Sets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function EffectDisplay:SetAllowDrop() 
end 
--- Gets the left coordinate of the control.  
--- (Inherited from Control) 
function EffectDisplay:GetLeft() 
end 
--- Sets the background color of the control.  
--- (Inherited from Control) 
function EffectDisplay:SetBackColor() 
end 
--- Gets the mouse position relative to this control.  
--- (Inherited from Control) 
function EffectDisplay:GetMousePosition() 
end 
--- Request that the control take focus.  
--- (Inherited from Control) 
function EffectDisplay:Focus() 
end 
--- Sets the blend mode applied to the background color.  
--- (Inherited from Control) 
function EffectDisplay:SetBackColorBlendMode() 
end 
--- Gets the blend mode applied to the background color.  
--- (Inherited from Control) 
function EffectDisplay:GetBackColorBlendMode() 
end 
--- Gets the opacity of the window.  
--- (Inherited from Control) 
function EffectDisplay:GetOpacity() 
end 
--- Sets the background image of the control.  
--- (Inherited from Control) 
function EffectDisplay:SetBackground() 
end 
--- Gets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function EffectDisplay:GetAllowDrop() 
end 
--- Gets the parent of the control.  
--- (Inherited from Control) 
function EffectDisplay:GetParent() 
end 
--- Sets the blend mode applied to the background image.  
--- (Inherited from Control) 
function EffectDisplay:SetBlendMode() 
end 
--- Gets the position of the control.  
--- (Inherited from Control) 
function EffectDisplay:GetPosition() 
end 
--- Sets the effect displayed by the control. 
function EffectDisplay:SetEffect() 
end 
--- Gets the size of the control.  
--- (Inherited from Control) 
function EffectDisplay:GetSize() 
end 
--- Sets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function EffectDisplay:SetEnabled() 
end 
--- Gets the top coordinate of the window.  
--- (Inherited from Control) 
function EffectDisplay:GetTop() 
end 
--- Sets the height of the control.  
--- (Inherited from Control) 
function EffectDisplay:SetHeight() 
end 
--- Gets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function EffectDisplay:GetWantsKeyEvents() 
end 
--- Sets the left coordinate of the window.  
--- (Inherited from Control) 
function EffectDisplay:SetLeft() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications.  
--- (Inherited from Control) 
function EffectDisplay:GetWantsUpdates() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function EffectDisplay:SetMouseVisible() 
end 
--- Gets the width of the control.  
--- (Inherited from Control) 
function EffectDisplay:GetWidth() 
end 
--- Sets the opacity of the window.  
--- (Inherited from Control) 
function EffectDisplay:SetOpacity() 
end 
--- Gets the Z ordering index of the control.  
--- (Inherited from Control) 
function EffectDisplay:GetZOrder() 
end 
--- Sets the parent of the control.  
--- (Inherited from Control) 
function EffectDisplay:SetParent() 
end 
--- Returns true if the control has focus.  
--- (Inherited from Control) 
function EffectDisplay:HasFocus() 
end 
--- Sets the position of the control.  
--- (Inherited from Control) 
function EffectDisplay:SetPosition() 
end 
--- Test if the alt key is pressed.  
--- (Inherited from Control) 
function EffectDisplay:IsAltKeyDown() 
end 
--- Sets the size of the control.  
--- (Inherited from Control) 
function EffectDisplay:SetSize() 
end 
--- Test if the control key is pressed.  
--- (Inherited from Control) 
function EffectDisplay:IsControlKeyDown() 
end 
--- Sets the top coordinate of the window.  
--- (Inherited from Control) 
function EffectDisplay:SetTop() 
end 
--- Gets a flag indicating if the control is displayed.  
--- (Inherited from Control) 
function EffectDisplay:IsDisplayed() 
end 
--- Sets the visible flag of a control.  
--- (Inherited from Control) 
function EffectDisplay:SetVisible() 
end 
--- Gets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function EffectDisplay:IsEnabled() 
end 
--- Event fired when a mouse wheel moves.  
--- (Inherited from Control) 
function EffectDisplay:MouseWheel() 
end 
--- Event fired when the position of the control changes.  
--- (Inherited from Control) 
function EffectDisplay:PositionChanged() 
end 
--- Event fired when the size of the control changes.  
--- (Inherited from Control) 
function EffectDisplay:SizeChanged() 
end 
--- Event fired every frame when WantsUpdates is enabled.  
--- (Inherited from Control) 
function EffectDisplay:Update() 
end 
--- Event fired when the visible state of the control changes.  
--- (Inherited from Control) 
function EffectDisplay:VisibleChanged() 
end 
--- Event fired when a drag drop operation is completed.  
--- (Inherited from Control) 
function EffectDisplay:DragDrop() 
end 
--- Event fired when a drag drop operation leaves the control.  
--- (Inherited from Control) 
function EffectDisplay:DragLeave() 
end 
--- Event fired when a drag drop operation starts the control.  
--- (Inherited from Control) 
function EffectDisplay:DragStart() 
end 
--- Event fired when the enabled state of the control changes.  
--- (Inherited from Control) 
function EffectDisplay:EnabledChanged() 
end 
--- Event fired when the control gains focus.  
--- (Inherited from Control) 
function EffectDisplay:FocusGained() 
end 
--- Event fired when the control loses focus.  
--- (Inherited from Control) 
function EffectDisplay:FocusLost() 
end 
--- Event fired when a key is pressed down.  
--- (Inherited from Control) 
function EffectDisplay:KeyDown() 
end 
--- Event fired when a key is released.  
--- (Inherited from Control) 
function EffectDisplay:KeyUp() 
end 
--- Event fired when a mouse button is clicked.  
--- (Inherited from Control) 
function EffectDisplay:MouseClick() 
end 
--- Event fired when a mouse button is double clicked.  
--- (Inherited from Control) 
function EffectDisplay:MouseDoubleClick() 
end 
--- Event fired when a mouse button is pressed.  
--- (Inherited from Control) 
function EffectDisplay:MouseDown() 
end 
--- Event fired when the mouse enters the control.  
--- (Inherited from Control) 
function EffectDisplay:MouseEnter() 
end 
--- Event fired when the mouse is hovering over the control.  
--- (Inherited from Control) 
function EffectDisplay:MouseHover() 
end 
--- Event fired when the mouse leaves the cotnrol.  
--- (Inherited from Control) 
function EffectDisplay:MouseLeave() 
end 
--- Event fired when a drag drop operation enters the control.  
--- (Inherited from Control) 
function EffectDisplay:DragEnter() 
end 
--- Event fired when the mouse moves.  
--- (Inherited from Control) 
function EffectDisplay:MouseMove() 
end 
--- Event fired when a mouse button is released.  
--- (Inherited from Control) 
function EffectDisplay:MouseUp() 
end 
return EffectDisplay