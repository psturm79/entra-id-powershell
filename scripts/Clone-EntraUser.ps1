param (
    [Parameter(Mandatory=$true)][string]$SourceUserPrincipalName,
    [Parameter(Mandatory=$true)][string]$NewUserPrincipalName,
    [Parameter(Mandatory=$true)][string]$DisplayName,
    [Parameter(Mandatory=$true)][string]$Password
)

Connect-MgGraph -Scopes "User.ReadWrite.All", "User.Read.All"

$sourceUser = Get-MgUser -UserId $SourceUserPrincipalName

if (-not $sourceUser) {
    Write-Error "Source user not found!"
    exit 1
}

New-MgUser -DisplayName $DisplayName `
           -UserPrincipalName $NewUserPrincipalName `
           -AccountEnabled $true `
           -MailNickname ($NewUserPrincipalName.Split("@")[0]) `
           -PasswordProfile @{ForceChangePasswordNextSignIn = $true; Password = $Password} `
           -UsageLocation $sourceUser.UsageLocation `
           -JobTitle $sourceUser.JobTitle `
           -Department $sourceUser.Department `
           -CompanyName $sourceUser.CompanyName `
           -OfficeLocation $sourceUser.OfficeLocation

Write-Host "User cloned successfully."
