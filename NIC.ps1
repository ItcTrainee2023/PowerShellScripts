$resourceGroup="app-niaz"
$networkName="app-vnetn"
$subnetName="SubnetA"
$networkInterfaceName="app-interfacen"

$VirtualNetwork=Get-AzVirtualNetwork -Name $networkName `
-ResourceGroupName $resourceGroup

$subnet=Get-AzVirtualNetworkSubnetConfig `
-VirtualNetwork $VirtualNetwork `
-Name $subnetName

New-AzNetworkInterface -Name $networkInterfaceName `
-ResourceGroupName $resourceGroup `
-Location $location -SubnetId $subnet.Id `
-IpConfigurationName "IpConfig"

