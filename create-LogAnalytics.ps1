#Create a log analytics workspace
$ResourceGroup = "UALR-Nika-Tavasoly-rg"
$WorkspaceName = "log-analytics-Nika"
$Location = "eastus"




# Create the workspace
New-AzOperationalInsightsWorkspace -Location $Location -Name $WorkspaceName -Sku Standard -ResourceGroupName $ResourceGroup