param(
    [string] $rg = $(throw "-rg is required (resource group name)"),
    [string] $account = $(throw "-account is required (storage account name)")
)

Set-AzCurrentStorageAccount -ResourceGroupName $rg -Name $account
Enable-AzStorageStaticWebsite -IndexDocument 'index.html' -ErrorDocument404Path 'index.html'