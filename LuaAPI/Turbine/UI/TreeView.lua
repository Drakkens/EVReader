local TreeView = {} 
--- Gets the width of the control.  
--- (Inherited from Control) 
function TreeView:GetWidth() 
end 
--- Gets the Z ordering index of the control.  
--- (Inherited from Control) 
function TreeView:GetZOrder() 
end 
--- Returns true if the control has focus.  
--- (Inherited from Control) 
function TreeView:HasFocus() 
end 
--- Sets the left coordinate of the window.  
--- (Inherited from Control) 
function TreeView:SetLeft() 
end 
--- Test if the alt key is pressed.  
--- (Inherited from Control) 
function TreeView:IsAltKeyDown() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function TreeView:SetMouseVisible() 
end 
--- Test if the control key is pressed.  
--- (Inherited from Control) 
function TreeView:IsControlKeyDown() 
end 
--- Gets a filter used to filter tree items. 
function TreeView:GetFilter() 
end 
--- Gets the blend mode applied to the background image.  
--- (Inherited from Control) 
function TreeView:GetBlendMode() 
end 
--- Sets the opacity of the window.  
--- (Inherited from Control) 
function TreeView:SetOpacity() 
end 
--- Gets a flag indicating if the control is displayed.  
--- (Inherited from Control) 
function TreeView:IsDisplayed() 
end 
--- Gets the height of the control.  
--- (Inherited from Control) 
function TreeView:GetHeight() 
end 
--- Sets the parent of the control.  
--- (Inherited from Control) 
function TreeView:SetParent() 
end 
--- Gets the solid background color of the control.  
--- (Inherited from Control) 
function TreeView:GetBackColor() 
end 
--- Gets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function TreeView:IsEnabled() 
end 
--- Gets the horizontal scroll bar.  
--- (Inherited from ScrollableControl) 
function TreeView:GetHorizontalScrollBar() 
end 
--- Sets the position of the control.  
--- (Inherited from Control) 
function TreeView:SetPosition() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function TreeView:IsMouseVisible() 
end 
--- Gets the width of the indentation insert prefer nodes at each level in the tree. 
function TreeView:GetIndentationWidth() 
end 
--- Sets the currently selected node. 
function TreeView:SetSelectedNode() 
end 
--- Expands all nodes in the tree view. 
function TreeView:ExpandAll() 
end 
--- Gets the blend mode applied to the background color.  
--- (Inherited from Control) 
function TreeView:GetBackColorBlendMode() 
end 
--- Test if the shift key is pressed.  
--- (Inherited from Control) 
function TreeView:IsShiftKeyDown() 
end 
--- Gets the left coordinate of the control.  
--- (Inherited from Control) 
function TreeView:GetLeft() 
end 
--- Sets the size of the control.  
--- (Inherited from Control) 
function TreeView:SetSize() 
end 
--- Gets a flag indicating if the control is visible.  
--- (Inherited from Control) 
function TreeView:IsVisible() 
end 
--- Gets the mouse position relative to this control.  
--- (Inherited from Control) 
function TreeView:GetMousePosition() 
end 
--- Sets a function that is used to sort tree elements. This function needs to enforce consistent ordering or there is a potential for a client crash. 
function TreeView:SetSortMethod() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function TreeView:PointToClient() 
end 
--- Gets the root nodes in the tree view control. 
function TreeView:GetNodes() 
end 
--- Gets the background graphic of the control.  
--- (Inherited from Control) 
function TreeView:GetBackground() 
end 
--- Sets the top coordinate of the window.  
--- (Inherited from Control) 
function TreeView:SetTop() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function TreeView:PointToScreen() 
end 
--- Gets the opacity of the window.  
--- (Inherited from Control) 
function TreeView:GetOpacity() 
end 
--- Sets the vertical scroll bar.  
--- (Inherited from ScrollableControl) 
function TreeView:SetVerticalScrollBar() 
end 
--- Gets the list of child controls.  
--- (Inherited from Control) 
function TreeView:GetControls() 
end 
--- Causes the tree view to refilter and resort. 
function TreeView:Refresh() 
end 
--- Gets the parent of the control.  
--- (Inherited from Control) 
function TreeView:GetParent() 
end 
--- Sets the visible flag of a control.  
--- (Inherited from Control) 
function TreeView:SetVisible() 
end 
--- Sets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function TreeView:SetAllowDrop() 
end 
--- Gets the position of the control.  
--- (Inherited from Control) 
function TreeView:GetPosition() 
end 
--- Sets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function TreeView:SetWantsKeyEvents() 
end 
--- Gets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function TreeView:GetAllowDrop() 
end 
--- Sets the background color of the control.  
--- (Inherited from Control) 
function TreeView:SetBackColor() 
end 
--- Request that the control take focus.  
--- (Inherited from Control) 
function TreeView:Focus() 
end 
--- Gets the currently selected node. 
function TreeView:GetSelectedNode() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications.  
--- (Inherited from Control) 
function TreeView:SetWantsUpdates() 
end 
--- Sets the blend mode applied to the background color.  
--- (Inherited from Control) 
function TreeView:SetBackColorBlendMode() 
end 
--- Gets the size of the control.  
--- (Inherited from Control) 
function TreeView:GetSize() 
end 
--- Sets the width of the control.  
--- (Inherited from Control) 
function TreeView:SetWidth() 
end 
--- Sets the background image of the control.  
--- (Inherited from Control) 
function TreeView:SetBackground() 
end 
--- Gets a function that is used to sort tree elements. 
function TreeView:GetSortMethod() 
end 
--- Sets the Z order of the control.  
--- (Inherited from Control) 
function TreeView:SetZOrder() 
end 
--- Sets the blend mode applied to the background image.  
--- (Inherited from Control) 
function TreeView:SetBlendMode() 
end 
--- Gets the top coordinate of the window.  
--- (Inherited from Control) 
function TreeView:GetTop() 
end 
--- Sets the horizontal scroll bar.  
--- (Inherited from ScrollableControl) 
function TreeView:SetHorizontalScrollBar() 
end 
--- Sets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function TreeView:SetEnabled() 
end 
--- Gets the vertical scroll bar.  
--- (Inherited from ScrollableControl) 
function TreeView:GetVerticalScrollBar() 
end 
--- Collapses all nodes in the tree view. 
function TreeView:CollapseAll() 
end 
--- Sets the width of the indentation insert prefer nodes at each level in the tree. 
function TreeView:SetIndentationWidth() 
end 
--- Sets a filter used to filter tree items. 
function TreeView:SetFilter() 
end 
--- Gets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function TreeView:GetWantsKeyEvents() 
end 
--- Sets the height of the control.  
--- (Inherited from Control) 
function TreeView:SetHeight() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications.  
--- (Inherited from Control) 
function TreeView:GetWantsUpdates() 
end 
--- Event fired when the enabled state of the control changes.  
--- (Inherited from Control) 
function TreeView:EnabledChanged() 
end 
--- Event fired when a drag drop operation enters the control.  
--- (Inherited from Control) 
function TreeView:DragEnter() 
end 
--- Event fired when the control gains focus.  
--- (Inherited from Control) 
function TreeView:FocusGained() 
end 
--- Event fired when the control loses focus.  
--- (Inherited from Control) 
function TreeView:FocusLost() 
end 
--- Event fired when a key is pressed down.  
--- (Inherited from Control) 
function TreeView:KeyDown() 
end 
--- Event fired when a key is released.  
--- (Inherited from Control) 
function TreeView:KeyUp() 
end 
--- Event fired when a mouse button is clicked.  
--- (Inherited from Control) 
function TreeView:MouseClick() 
end 
--- Event fired when a mouse button is double clicked.  
--- (Inherited from Control) 
function TreeView:MouseDoubleClick() 
end 
--- Event fired when a mouse button is pressed.  
--- (Inherited from Control) 
function TreeView:MouseDown() 
end 
--- Event fired when the mouse enters the control.  
--- (Inherited from Control) 
function TreeView:MouseEnter() 
end 
--- Event fired when the mouse is hovering over the control.  
--- (Inherited from Control) 
function TreeView:MouseHover() 
end 
--- Event fired when the mouse leaves the cotnrol.  
--- (Inherited from Control) 
function TreeView:MouseLeave() 
end 
--- Event fired when the mouse moves.  
--- (Inherited from Control) 
function TreeView:MouseMove() 
end 
--- Event fired when a mouse button is released.  
--- (Inherited from Control) 
function TreeView:MouseUp() 
end 
--- Event fired when a mouse wheel moves.  
--- (Inherited from Control) 
function TreeView:MouseWheel() 
end 
--- Event fired when the position of the control changes.  
--- (Inherited from Control) 
function TreeView:PositionChanged() 
end 
--- Event fired when the selected node has changed. 
function TreeView:SelectedNodeChanged() 
end 
--- Event fired when the size of the control changes.  
--- (Inherited from Control) 
function TreeView:SizeChanged() 
end 
--- Event fired every frame when WantsUpdates is enabled.  
--- (Inherited from Control) 
function TreeView:Update() 
end 
--- Event fired when the visible state of the control changes.  
--- (Inherited from Control) 
function TreeView:VisibleChanged() 
end 
--- Event fired when a drag drop operation is completed.  
--- (Inherited from Control) 
function TreeView:DragDrop() 
end 
--- Event fired when a drag drop operation leaves the control.  
--- (Inherited from Control) 
function TreeView:DragLeave() 
end 
--- Event fired when a drag drop operation starts the control.  
--- (Inherited from Control) 
function TreeView:DragStart() 
end 
return TreeView