param (
    [Parameter(Mandatory=$true)][ValidateSet("Add","Remove")][string]$Action,
    [Parameter(Mandatory=$true)][string]$UserPrincipalName,
    [Parameter(Mandatory=$true)][string]$GroupId
)

Connect-MgGraph -Scopes "GroupMember.ReadWrite.All"

$user = Get-MgUser -UserId $UserPrincipalName

if (-not $user) {
    Write-Error "User not found!"
    exit 1
}

if ($Action -eq "Add") {
    Add-MgGroupMember -GroupId $GroupId -DirectoryObjectId $user.Id
    Write-Host "User added to group."
} elseif ($Action -eq "Remove") {
    Remove-MgGroupMember -GroupId $GroupId -DirectoryObjectId $user.Id
    Write-Host "User removed from group."
}
