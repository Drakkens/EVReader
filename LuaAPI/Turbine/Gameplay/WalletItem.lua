local WalletItem = {} 
--- Gets the image used to identity the wallet item. 
function WalletItem:GetImage() 
end 
--- Gets the name of the wallet item. 
function WalletItem:GetName() 
end 
--- Gets the quantity of the wallet item that the player has. 
function WalletItem:GetQuantity() 
end 
--- Gets the small image used to identity the wallet item. 
function WalletItem:GetSmallImage() 
end 
--- Gets the description of the wallet item. 
function WalletItem:GetDescription() 
end 
--- Gets the maximum quantity of this wallet item that a player can have. 
function WalletItem:GetMaxQuantity() 
end 
--- Gets a flag indicating if the item is shared across all characters of an account. 
function WalletItem:IsAccountItem() 
end 
--- Event fired when the max quantity of the wallet item changes. 
function WalletItem:MaxQuantityChanged() 
end 
--- Event fired when the quantity of the wallet item changes. 
function WalletItem:QuantityChanged() 
end 
return WalletItem