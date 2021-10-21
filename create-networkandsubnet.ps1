#Create Azure Virtual Network with Powershell
$vnet = @{
    Name = 'ualr4399-tavasoly-VNet1'
    ResourceGroupName = 'UALR-Nika-Tavasoly-rg'
    Location = 'EastUS'
    AddressPrefix = '10.0.0.0/16'    
}
$virtualNetwork = New-AzVirtualNetwork @vnet




#Create a Subnet
$subnet = @{
    Name = 'Server Subnet'
    VirtualNetwork = $virtualNetwork
    AddressPrefix = '10.0.0.0/24'
}
Add-AzVirtualNetworkSubnetConfig @subnet