
#variable names
$ResourceGroup = "UALR-Nika-Tavasoly-rg"
$WorkspaceName = "log-analytics-Nika"

# Deploy a solution to your Log Analytics workspace:
Set-AzOperationalInsightsIntelligencePack -ResourceGroupName $ResourceGroup -WorkspaceName $WorkspaceName -IntelligencePackName AgentHealthAssessment -Enabled $true


