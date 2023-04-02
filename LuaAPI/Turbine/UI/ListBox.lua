local ListBox = {} 
--- Sets the top coordinate of the window.  
--- (Inherited from Control) 
function ListBox:SetTop() 
end 
--- Sets the size of the control.  
--- (Inherited from Control) 
function ListBox:SetSize() 
end 
--- Sets the currently selected item. 
function ListBox:SetSelectedItem() 
end 
--- Sets the selected index. 
function ListBox:SetSelectedIndex() 
end 
--- Sets the flag indicating that the listbox should fill in reverse. 
function ListBox:SetReverseFill() 
end 
--- Sets the position of the control.  
--- (Inherited from Control) 
function ListBox:SetPosition() 
end 
--- Sets the parent of the control.  
--- (Inherited from Control) 
function ListBox:SetParent() 
end 
--- Sets the orientation of elements in the listbox. 
function ListBox:SetOrientation() 
end 
--- Sets the opacity of the window.  
--- (Inherited from Control) 
function ListBox:SetOpacity() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function ListBox:SetMouseVisible() 
end 
--- Sets the maximum number of rows a listbox can display. 
function ListBox:SetMaxRows() 
end 
--- Sets the maximum number of items per line. NOTE: Deprecated - Use SetMaxColumns( i_value ) and SetMaxRows( i_value ) instead. 
function ListBox:SetMaxItemsPerLine() 
end 
--- Sets the maximum number of columns a listbox can display. 
function ListBox:SetMaxColumns() 
end 
--- Sets the left coordinate of the window.  
--- (Inherited from Control) 
function ListBox:SetLeft() 
end 
--- Sets the item at the specified index. 
function ListBox:SetItem() 
end 
--- Sets the flag indicating that cell alignment is ignored during rendering. 
function ListBox:SetIgnoreCellAlignment() 
end 
--- Sets the horizontal scroll bar.  
--- (Inherited from ScrollableControl) 
function ListBox:SetHorizontalScrollBar() 
end 
--- Sets the height of the control.  
--- (Inherited from Control) 
function ListBox:SetHeight() 
end 
--- Sets the flag indicating that the draw order should be flipped. 
function ListBox:SetFlippedLayout() 
end 
--- Sets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function ListBox:SetEnabled() 
end 
--- Sets the blend mode applied to the background image.  
--- (Inherited from Control) 
function ListBox:SetBlendMode() 
end 
--- Sets the background image of the control.  
--- (Inherited from Control) 
function ListBox:SetBackground() 
end 
--- Sets the blend mode applied to the background color.  
--- (Inherited from Control) 
function ListBox:SetBackColorBlendMode() 
end 
--- Sets the background color of the control.  
--- (Inherited from Control) 
function ListBox:SetBackColor() 
end 
--- Sets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function ListBox:SetAllowDrop() 
end 
--- Removes an item at the specified index. 
function ListBox:RemoveItemAt() 
end 
--- Removes an item from the list box. 
function ListBox:RemoveItem() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function ListBox:PointToScreen() 
end 
--- Converts a coordinate from control space to screen space.  
--- (Inherited from Control) 
function ListBox:PointToClient() 
end 
--- Gets a flag indicating if the control is visible.  
--- (Inherited from Control) 
function ListBox:IsVisible() 
end 
--- Test if the shift key is pressed.  
--- (Inherited from Control) 
function ListBox:IsShiftKeyDown() 
end 
--- Gets a flag indicating if the mouse will see this control.  
--- (Inherited from Control) 
function ListBox:IsMouseVisible() 
end 
--- Gets a flag indicating if the control is enabled.  
--- (Inherited from Control) 
function ListBox:IsEnabled() 
end 
--- Gets a flag indicating if the control is displayed.  
--- (Inherited from Control) 
function ListBox:IsDisplayed() 
end 
--- Test if the control key is pressed.  
--- (Inherited from Control) 
function ListBox:IsControlKeyDown() 
end 
--- Test if the alt key is pressed.  
--- (Inherited from Control) 
function ListBox:IsAltKeyDown() 
end 
--- Inserts an item to the list box. 
function ListBox:InsertItem() 
end 
--- Gets the index of an item in the list box. 
function ListBox:IndexOfItem() 
end 
--- Returns true if the control has focus.  
--- (Inherited from Control) 
function ListBox:HasFocus() 
end 
--- Gets the Z ordering index of the control.  
--- (Inherited from Control) 
function ListBox:GetZOrder() 
end 
--- Gets the number of pixels to indent wrapped rows in a horizontal listbox or wrapped columns in a vertical listbox. 
function ListBox:GetWrapIndentAmount() 
end 
--- Gets the width of the control.  
--- (Inherited from Control) 
function ListBox:GetWidth() 
end 
--- Gets the flag indicating if the control wants to receive Update notifications.  
--- (Inherited from Control) 
function ListBox:GetWantsUpdates() 
end 
--- Gets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function ListBox:GetWantsKeyEvents() 
end 
--- Gets the vertical scroll bar.  
--- (Inherited from ScrollableControl) 
function ListBox:GetVerticalScrollBar() 
end 
--- Gets the top coordinate of the window.  
--- (Inherited from Control) 
function ListBox:GetTop() 
end 
--- Gets the size of the control.  
--- (Inherited from Control) 
function ListBox:GetSize() 
end 
--- Gets the currently selected item. 
function ListBox:GetSelectedItem() 
end 
--- Gets the selected index. 
function ListBox:GetSelectedIndex() 
end 
--- Gets the flag indicating if the listbox should fill in reverse. 
function ListBox:GetReverseFill() 
end 
--- Gets the position of the control.  
--- (Inherited from Control) 
function ListBox:GetPosition() 
end 
--- Gets the parent of the control.  
--- (Inherited from Control) 
function ListBox:GetParent() 
end 
--- Gets the orientation of elements in the listbox. 
function ListBox:GetOrientation() 
end 
--- Gets the opacity of the window.  
--- (Inherited from Control) 
function ListBox:GetOpacity() 
end 
--- Gets the mouse position relative to this control.  
--- (Inherited from Control) 
function ListBox:GetMousePosition() 
end 
--- Gets the maximum number of rows a listbox can display. 
function ListBox:GetMaxRows() 
end 
--- Gets the maximum number of items per line. NOTE: Deprecated - Use GetMaxColumns() and GetMaxRows() instead. 
function ListBox:GetMaxItemsPerLine() 
end 
--- Sets a flag indicating if the control wants to receive key events.  
--- (Inherited from Control) 
function ListBox:SetWantsKeyEvents() 
end 
--- Gets the maximum number of columns a listbox can display. 
function ListBox:GetMaxColumns() 
end 
--- Gets the left coordinate of the control.  
--- (Inherited from Control) 
function ListBox:GetLeft() 
end 
--- Gets the number of items in the list box. 
function ListBox:GetItemCount() 
end 
--- Gets the item at the specified position. 
function ListBox:GetItemAt() 
end 
--- Gets the item at the specified index. 
function ListBox:GetItem() 
end 
--- Gets the flag indicating that cell alignment is ignored during rendering. 
function ListBox:GetIgnoreCellAlignment() 
end 
--- Sets the Z order of the control.  
--- (Inherited from Control) 
function ListBox:SetZOrder() 
end 
--- Gets the horizontal scroll bar.  
--- (Inherited from ScrollableControl) 
function ListBox:GetHorizontalScrollBar() 
end 
--- Sorts the elements in the list box. 
function ListBox:Sort() 
end 
--- Gets the height of the control.  
--- (Inherited from Control) 
function ListBox:GetHeight() 
end 
--- Gets the flag indicating that the draw order should be flipped. 
function ListBox:GetFlippedLayout() 
end 
--- Gets the list of child controls.  
--- (Inherited from Control) 
function ListBox:GetControls() 
end 
--- Gets the blend mode applied to the background image.  
--- (Inherited from Control) 
function ListBox:GetBlendMode() 
end 
--- Adds an item to the list box. 
function ListBox:AddItem() 
end 
--- Gets the background graphic of the control.  
--- (Inherited from Control) 
function ListBox:GetBackground() 
end 
--- Gets the blend mode applied to the background color.  
--- (Inherited from Control) 
function ListBox:GetBackColorBlendMode() 
end 
--- Gets the solid background color of the control.  
--- (Inherited from Control) 
function ListBox:GetBackColor() 
end 
--- Gets if the control supports drop operations from drag and drop.  
--- (Inherited from Control) 
function ListBox:GetAllowDrop() 
end 
--- Request that the control take focus.  
--- (Inherited from Control) 
function ListBox:Focus() 
end 
--- Ensures that the specified item is visible. 
function ListBox:EnsureVisible() 
end 
--- Test is the list box contains an item. 
function ListBox:ContainsItem() 
end 
--- Sets the width of the control.  
--- (Inherited from Control) 
function ListBox:SetWidth() 
end 
--- Sets the vertical scroll bar.  
--- (Inherited from ScrollableControl) 
function ListBox:SetVerticalScrollBar() 
end 
--- Sets the visible flag of a control.  
--- (Inherited from Control) 
function ListBox:SetVisible() 
end 
--- Clears all the items from the listbox. 
function ListBox:ClearItems() 
end 
--- Sets the number of pixels to indent wrapped rows in a horizontal listbox or wrapped columns in a vertical listbox. 
function ListBox:SetWrapIndentAmount() 
end 
--- Sets the flag indicating if the cotnrol wants to receive update notifications.  
--- (Inherited from Control) 
function ListBox:SetWantsUpdates() 
end 
--- Event fired when a drag drop operation starts the control.  
--- (Inherited from Control) 
function ListBox:DragStart() 
end 
--- Event fired when the control gains focus.  
--- (Inherited from Control) 
function ListBox:FocusGained() 
end 
--- Event fired every frame when WantsUpdates is enabled.  
--- (Inherited from Control) 
function ListBox:Update() 
end 
--- Event fired when the enabled state of the control changes.  
--- (Inherited from Control) 
function ListBox:EnabledChanged() 
end 
--- Event fired when the visible state of the control changes.  
--- (Inherited from Control) 
function ListBox:VisibleChanged() 
end 
--- Event fired when a drag drop operation leaves the control.  
--- (Inherited from Control) 
function ListBox:DragLeave() 
end 
--- Event fired when an item is added. 
function ListBox:ItemAdded() 
end 
--- Event fired when a drag drop operation enters the control.  
--- (Inherited from Control) 
function ListBox:DragEnter() 
end 
--- Event fired when the control loses focus.  
--- (Inherited from Control) 
function ListBox:FocusLost() 
end 
--- Event fired when the mouse moves.  
--- (Inherited from Control) 
function ListBox:MouseMove() 
end 
--- Event fired when an item is removed. 
function ListBox:ItemRemoved() 
end 
--- Event fired when a drag drop operation is completed.  
--- (Inherited from Control) 
function ListBox:DragDrop() 
end 
--- Event fired when the position of the control changes.  
--- (Inherited from Control) 
function ListBox:PositionChanged() 
end 
--- Event fired when a mouse button is pressed.  
--- (Inherited from Control) 
function ListBox:MouseDown() 
end 
--- Event fired when the mouse enters the control.  
--- (Inherited from Control) 
function ListBox:MouseEnter() 
end 
--- Event fired when a mouse button is released.  
--- (Inherited from Control) 
function ListBox:MouseUp() 
end 
--- Event fired when the selected index has changed. 
function ListBox:SelectedIndexChanged() 
end 
--- Event fired when the mouse is hovering over the control.  
--- (Inherited from Control) 
function ListBox:MouseHover() 
end 
--- Event fired when a mouse button is clicked.  
--- (Inherited from Control) 
function ListBox:MouseClick() 
end 
--- Event fired when a key is released.  
--- (Inherited from Control) 
function ListBox:KeyUp() 
end 
--- Event fired when a key is pressed down.  
--- (Inherited from Control) 
function ListBox:KeyDown() 
end 
--- Event fired when a mouse button is double clicked.  
--- (Inherited from Control) 
function ListBox:MouseDoubleClick() 
end 
--- Event fired when the mouse leaves the cotnrol.  
--- (Inherited from Control) 
function ListBox:MouseLeave() 
end 
--- Event fired when a mouse wheel moves.  
--- (Inherited from Control) 
function ListBox:MouseWheel() 
end 
--- Event fired when the size of the control changes.  
--- (Inherited from Control) 
function ListBox:SizeChanged() 
end 
return ListBox