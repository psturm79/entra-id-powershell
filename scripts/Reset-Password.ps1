param (
    [Parameter(Mandatory=$true)][string]$UserPrincipalName,
    [Parameter(Mandatory=$true)][string]$NewPassword
)

Connect-MgGraph -Scopes "User.ReadWrite.All"

Update-MgUser -UserId $UserPrincipalName `
              -PasswordProfile @{ForceChangePasswordNextSignIn = $true; Password = $NewPassword}

Write-Host "Password reset successfully."
