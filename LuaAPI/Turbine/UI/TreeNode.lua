local TreeNode = {} 
--- Gets the size of the control.  
--- (Inherited from Control) 
function TreeNode:GetSize() 
end 
--- Sets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function TreeNode:SetAllowDrop() 
end 
--- Gets the position of the control.  
--- (Inherited from Control) 
function TreeNode:GetPosition() 
end 
--- Sets the width of the control.  
--- (Inherited from Control) 
function TreeNode:SetWidth() 
end 
--- Gets the parent node of this node. 
function TreeNode:GetParentNode() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications.  
--- (Inherited from Control) 
function TreeNode:SetWantsUpdates() 
end 
--- Sets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function TreeNode:SetWantsKeyEvents() 
end 
--- Gets the left coordinate of the control.  
--- (Inherited from Control) 
function TreeNode:GetLeft() 
end 
--- Sets the background image of the control.  
--- (Inherited from Control) 
function TreeNode:SetBackground() 
end 
--- Sets the blend mode applied to the background color.  
--- (Inherited from Control) 
function TreeNode:SetBackColorBlendMode() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function TreeNode:PointToScreen() 
end 
--- Sets the visible flag of a control.  
--- (Inherited from Control) 
function TreeNode:SetVisible() 
end 
--- Sets the blend mode applied to the background image.  
--- (Inherited from Control) 
function TreeNode:SetBlendMode() 
end 
--- Gets the height of the control.  
--- (Inherited from Control) 
function TreeNode:GetHeight() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function TreeNode:PointToClient() 
end 
--- Sets the top coordinate of the window.  
--- (Inherited from Control) 
function TreeNode:SetTop() 
end 
--- Gets the list of child controls.  
--- (Inherited from Control) 
function TreeNode:GetControls() 
end 
--- Sets the Z order of the control.  
--- (Inherited from Control) 
function TreeNode:SetZOrder() 
end 
--- Sets the size of the control.  
--- (Inherited from Control) 
function TreeNode:SetSize() 
end 
--- Gets a flag indicating if the control is visible.  
--- (Inherited from Control) 
function TreeNode:IsVisible() 
end 
--- Sets the position of the control.  
--- (Inherited from Control) 
function TreeNode:SetPosition() 
end 
--- Gets the child nodes list. 
function TreeNode:GetChildNodes() 
end 
--- Sets the parent of the control.  
--- (Inherited from Control) 
function TreeNode:SetParent() 
end 
--- Gets the blend mode applied to the background image.  
--- (Inherited from Control) 
function TreeNode:GetBlendMode() 
end 
--- Test if the shift key is pressed.  
--- (Inherited from Control) 
function TreeNode:IsShiftKeyDown() 
end 
--- Sets the opacity of the window.  
--- (Inherited from Control) 
function TreeNode:SetOpacity() 
end 
--- Gets the background graphic of the control.  
--- (Inherited from Control) 
function TreeNode:GetBackground() 
end 
--- Return true if this node is currently selected. 
function TreeNode:IsSelected() 
end 
--- Gets the blend mode applied to the background color.  
--- (Inherited from Control) 
function TreeNode:GetBackColorBlendMode() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function TreeNode:IsMouseVisible() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function TreeNode:SetMouseVisible() 
end 
--- Gets the solid background color of the control.  
--- (Inherited from Control) 
function TreeNode:GetBackColor() 
end 
--- Sets the left coordinate of the window.  
--- (Inherited from Control) 
function TreeNode:SetLeft() 
end 
--- Gets a flag indicating if this node is currently expanded. 
function TreeNode:IsExpanded() 
end 
--- Gets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function TreeNode:GetAllowDrop() 
end 
--- Sets the height of the control.  
--- (Inherited from Control) 
function TreeNode:SetHeight() 
end 
--- Request that the control take focus.  
--- (Inherited from Control) 
function TreeNode:Focus() 
end 
--- Gets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function TreeNode:IsEnabled() 
end 
--- Sets the flag indicating if this node is currently expanded. 
function TreeNode:SetExpanded() 
end 
--- Gets a flag indicating if the control is displayed.  
--- (Inherited from Control) 
function TreeNode:IsDisplayed() 
end 
--- Expands all the child tree nodes. 
function TreeNode:ExpandAll() 
end 
--- Test if the control key is pressed.  
--- (Inherited from Control) 
function TreeNode:IsControlKeyDown() 
end 
--- Sets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function TreeNode:SetEnabled() 
end 
--- Test if the alt key is pressed.  
--- (Inherited from Control) 
function TreeNode:IsAltKeyDown() 
end 
--- Collapses all the child tree nodes. 
function TreeNode:CollapseAll() 
end 
--- Returns true if the control has focus.  
--- (Inherited from Control) 
function TreeNode:HasFocus() 
end 
--- Expands the node. 
function TreeNode:Expand() 
end 
--- Ensures that the node is visible within its tree. 
function TreeNode:EnsureVisible() 
end 
--- Gets the Z ordering index of the control.  
--- (Inherited from Control) 
function TreeNode:GetZOrder() 
end 
--- Gets the width of the control.  
--- (Inherited from Control) 
function TreeNode:GetWidth() 
end 
--- Sets the background color of the control.  
--- (Inherited from Control) 
function TreeNode:SetBackColor() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications.  
--- (Inherited from Control) 
function TreeNode:GetWantsUpdates() 
end 
--- Collapses the node. 
function TreeNode:Collapse() 
end 
--- Gets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function TreeNode:GetWantsKeyEvents() 
end 
--- Gets the parent of the control.  
--- (Inherited from Control) 
function TreeNode:GetParent() 
end 
--- Gets the opacity of the window.  
--- (Inherited from Control) 
function TreeNode:GetOpacity() 
end 
--- Gets the top coordinate of the window.  
--- (Inherited from Control) 
function TreeNode:GetTop() 
end 
--- Gets the mouse position relative to this control.  
--- (Inherited from Control) 
function TreeNode:GetMousePosition() 
end 
--- Event fired when the mouse leaves the cotnrol.  
--- (Inherited from Control) 
function TreeNode:MouseLeave() 
end 
--- Event fired when the visible state of the control changes.  
--- (Inherited from Control) 
function TreeNode:VisibleChanged() 
end 
--- Event fired when a key is released.  
--- (Inherited from Control) 
function TreeNode:KeyUp() 
end 
--- Event fired when a drag drop operation leaves the control.  
--- (Inherited from Control) 
function TreeNode:DragLeave() 
end 
--- Event fired when the control loses focus.  
--- (Inherited from Control) 
function TreeNode:FocusLost() 
end 
--- Event fired when a drag drop operation is completed.  
--- (Inherited from Control) 
function TreeNode:DragDrop() 
end 
--- Event fired every frame when WantsUpdates is enabled.  
--- (Inherited from Control) 
function TreeNode:Update() 
end 
--- Event fired when the size of the control changes.  
--- (Inherited from Control) 
function TreeNode:SizeChanged() 
end 
--- Event fired when the selected state of the node has changed. 
function TreeNode:SelectedChanged() 
end 
--- Event fired when the position of the control changes.  
--- (Inherited from Control) 
function TreeNode:PositionChanged() 
end 
--- Event fired when a mouse button is double clicked.  
--- (Inherited from Control) 
function TreeNode:MouseDoubleClick() 
end 
--- Event fired when a mouse wheel moves.  
--- (Inherited from Control) 
function TreeNode:MouseWheel() 
end 
--- Event fired when a mouse button is released.  
--- (Inherited from Control) 
function TreeNode:MouseUp() 
end 
--- Event fired when the mouse is hovering over the control.  
--- (Inherited from Control) 
function TreeNode:MouseHover() 
end 
--- Event fired when the mouse moves.  
--- (Inherited from Control) 
function TreeNode:MouseMove() 
end 
--- Event fired when a mouse button is pressed.  
--- (Inherited from Control) 
function TreeNode:MouseDown() 
end 
--- Event fired when the control gains focus.  
--- (Inherited from Control) 
function TreeNode:FocusGained() 
end 
--- Event fired when a mouse button is clicked.  
--- (Inherited from Control) 
function TreeNode:MouseClick() 
end 
--- Event fired when a drag drop operation enters the control.  
--- (Inherited from Control) 
function TreeNode:DragEnter() 
end 
--- Event fired when the enabled state of the control changes.  
--- (Inherited from Control) 
function TreeNode:EnabledChanged() 
end 
--- Event fired when a drag drop operation starts the control.  
--- (Inherited from Control) 
function TreeNode:DragStart() 
end 
--- Event fired when the mouse enters the control.  
--- (Inherited from Control) 
function TreeNode:MouseEnter() 
end 
--- Event fired when a key is pressed down.  
--- (Inherited from Control) 
function TreeNode:KeyDown() 
end 
return TreeNode