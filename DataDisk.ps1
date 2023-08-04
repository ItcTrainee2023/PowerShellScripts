$vmName="appvmniaz"
$resourceGroup="app-niaz"
$diskName="app-diskn"

$vm=Get-AzVM -ResourceGroupName $resourceGroup `
-Name $vmName

$vm | Add-AzVMDataDisk -Name $diskName -DiskSizeinGB 16 `
-CreateOption Empty -Lun 0

$vm | Update-AzVM