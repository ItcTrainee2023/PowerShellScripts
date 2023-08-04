$networkName="app-vnetn"
$resourceGroup="app-niaz"

$VirtualNetwork=Get-AzVirtualNetwork -Name $networkName `
-ResourceGroupName $resourceGroup

Write-Host $VirtualNetwork.AddressSpace.AddressPrefixes
Write-host $VirtualNetwork.Location