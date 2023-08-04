$resourceGroup="app-niaz"
$location="North Europe"
$networkSecurityGroupName="app-nsgniaz"

$nsgRule1=New-AzNetworkSecurityRuleConfig -Name "Allow-RDP" `
-Access Allow -Protocol Tcp -Direction inbound `
-Priority 120 -SourceAddressPrefix internet `
-SourcePortRange * -DestinationAddressPrefix 10.0.0.0/24 `
-DestinationPortRange 3389

$nsgRule2=New-AzNetworkSecurityRuleConfig -Name "Allow-HTTP" `
-Access Allow -Protocol Tcp -Direction inbound `
-Priority 130 -SourceAddressPrefix internet `
-SourcePortRange * -DestinationAddressPrefix 10.0.0.0/24 `
-DestinationPortRange 80

New-AzNetworkSecurityGroup -Name $networkSecurityGroupName `
-ResourceGroupName $resourceGroup `
-Location $location -SecurityRules $nsgRule1,$nsgRule2