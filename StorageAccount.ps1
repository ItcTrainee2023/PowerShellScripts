$resourceGroup="app-niaz"
$location="North Europe"
$accountSKU="Standard_LRS"
$storageAccountName="appstore4443434niaz"
$storageAccountKind="StorageV2"

New-AzStorageAccount -ResourceGroupName $resourceGroup `
-Name $storageAccountName `
-Location $location -Kind $storageAccountKind `
-SkuName $accountSKU
