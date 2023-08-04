$vmName="appvmniaz"
$VMSize="Standard_DS2_V2"
$Location="North Europe"

Get-AzVMSize -Location $Location

$Credential=Get-Credential

New-AzVMConfig -Name $vmName -VMSize $VMSize
Set-AzVMOperatingSystem -VM $vmConfig `
-ComputerName $vnName `
-Credential $Credential -Windows

Set-AzSourceImage -VM $vmConfig `
-PublisherName "MicrosoftWindowsServer" `
-Offer "WindowsServer" -Skus "2022-Datacenter" `
-Version "latest"

$networkinterfaceName="app-interfacen"
$networkinterface=Get-AzNetworkInterface `
-Name $networkinterfaceName `
-ResourceGroupName $resourceGroup

$Vm=Add-AzVMNetworkInterface -VM $vmConfig `
-Id $networkinterface.Id

Set-AzVMBootDiagnostic -Disable -VM $vm

New-AzVM -ResourceGroupName $resourceGroup `
-Location $Location `
-VM $vm