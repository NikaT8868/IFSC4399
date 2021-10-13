#How to create a Storage Account
 
New-AzStorageAccount -ResourceGroupName "UALR-Nika-Tavasoly-rg" `
  -Name "nikatavasolysa" `
  -Location eastus `
  -SkuName "Standard_LRS" `
  -Kind StorageV2
#Create a File Share inside the Storage account, run each command one at a time after creating storage account
 
$StorageAccountName = get-azstorageaccount -StorageAccountName "nikatavasolysa" -ResourceGroupName "UALR-Nika-Tavasoly-rg"
 
New-AzRmStorageShare -StorageAccount $StorageAccountName -Name "nikatavasolysa"
 
