param (
    [Parameter(Mandatory=$true)][string]$DisplayName,
    [Parameter(Mandatory=$true)][string]$UserPrincipalName,
    [Parameter(Mandatory=$true)][string]$Password
)

Connect-MgGraph -Scopes "User.ReadWrite.All"

New-MgUser -DisplayName $DisplayName `
           -UserPrincipalName $UserPrincipalName `
           -AccountEnabled $true `
           -MailNickname ($UserPrincipalName.Split("@")[0]) `
           -PasswordProfile @{ForceChangePasswordNextSignIn = $true; Password = $Password}

Write-Host "User created successfully."
