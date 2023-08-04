$resourceGroup="app-niaz"
$location="North Europe"
$appServiceName="demoplan55534niaz"
$webAppName="webapp55434434niaz"

New-AzAppServicePlan -ResourceGroupName $resourceGroup `
-Location $location `
-Name $appServiceName -Tier "F1"

New-AzWebApp -ResourceGroupName $resourceGroup `
-Name $webAppName `
-Location $location -AppServicePlan $appServiceName