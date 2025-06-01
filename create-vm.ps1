$rgName = "AutoRG"
$location = "EastUS"
$vmName = "AutoVM"

New-AzResourceGroup -Name $rgName -Location $location

$cred = Get-Credential

New-AzVM `
  -ResourceGroupName $rgName `
  -Name $vmName `
  -Location $location `
  -Image "Ubuntu2204" `
  -Size "Standard_B2s" `
  -Credential $cred
