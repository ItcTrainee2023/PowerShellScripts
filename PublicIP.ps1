$resourceGroup="app-niaz"
$location="North Europe"
$publicIpAddress="app-ipn"

New-AzPublicIpAddress -Name $publicIpAddress `
-ResourceGroupName $resourceGroup `
-Location $location -AllocationMethod Static