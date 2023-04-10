## This script can be used to set up proxies.json

param([string]$filePath, [string]$rg, [string]$accountName)

$account = Get-AzStorageAccount -ResourceGroupName $rg -Name $accountName
$webEndpoint = $account.PrimaryEndpoints.Web
Write-Host "Storage account $accountName Web endpoint: $webEndpoint"
Write-Host "Replacing endpoint in $filePath..."

(Get-Content $filePath).replace('{StorageAccountEndpoint}', $webEndpoint) | Set-Content $filePath