# 🔐 Entra ID PowerShell Scripts

Automate Microsoft Entra ID tasks using PowerShell and Microsoft Graph API.

## ✅ Features

- Create users
- Clone user attributes and licenses
- Reset passwords
- Add/remove group memberships

## 🔧 Requirements

```powershell
Install-Module Microsoft.Graph -Scope CurrentUser

scripts/
├── Create-EntraUser.ps1
├── Clone-EntraUser.ps1
├── Reset-Password.ps1
└── Manage-Groups.ps1


---

### 📘 `terraform-azure-lab`

```markdown
# ☁️ Terraform Azure Lab

Infrastructure-as-Code examples using Terraform to deploy Azure services.

## 🧰 Examples

- Azure Resource Groups
- Virtual Networks & Subnets
- Virtual Machines
- Key Vaults
- Storage Accounts

## 🛠️ Tools Required

- Terraform CLI
- Azure CLI

## 🌱 Getting Started

```bash
terraform init
terraform plan
terraform apply


---

### 📘 `azure-automation`

```markdown
# 🤖 Azure Automation Scripts

PowerShell scripts to automate Azure resource deployment and maintenance.

## 📌 Scripts

- Create Storage Account
- Create VMs
- Assign roles to users
- List and delete unused resources

## 🔧 Requirements

- Azure PowerShell Module
- Azure CLI (optional)

```powershell
Install-Module Az -Scope CurrentUser


---

### 3. (Opcional) Sube al menos **un script por repo**  
Ejemplo para el de `entra-id-powershell`:

```powershell
# Create-EntraUser.ps1

param (
    [string]$DisplayName,
    [string]$UserPrincipalName,
    [string]$Password
)

Connect-MgGraph -Scopes "User.ReadWrite.All"

New-MgUser -DisplayName $DisplayName `
            -UserPrincipalName $UserPrincipalName `
            -AccountEnabled $true `
            -PasswordProfile @{ ForceChangePasswordNextSignIn = $true; Password = $Password } `
            -MailNickname ($UserPrincipalName.Split("@")[0])




