# 🔐 Entra ID PowerShell Automation

Automated scripts using PowerShell and Microsoft Graph to manage users, groups, and identity tasks within Microsoft Entra ID (formerly Azure AD).

## ✨ Features

- ✅ Create and manage Entra ID users
- 🔁 Clone user profiles
- 🔐 Reset passwords
- 👥 Manage group memberships
- 📄 Audit and report on identity data

## 🛠️ Tech Stack

- PowerShell 7+
- Microsoft Graph API
- MSAL / AzureAD module
- Microsoft Entra ID

## 📂 Structure

```bash
📁 scripts/
│   ├── create-user.ps1
│   ├── clone-user.ps1
│   ├── reset-password.ps1
│   └── group-management.ps1
📄 README.md

🚀 Getting Started
Clone the repository:

bash
Kopiëren
Bewerken
git clone https://github.com/psturm79/entra-id-powershell.git
cd entra-id-powershell
Install required modules:

powershell
Kopiëren
Bewerken
Install-Module Microsoft.Graph -Scope CurrentUser
Connect to Microsoft Graph:

powershell
Kopiëren
Bewerken
Connect-MgGraph -Scopes "User.ReadWrite.All", "Group.ReadWrite.All"
🧪 Example Usage
powershell
Kopiëren
Bewerken
# Create new user
.\scripts\create-user.ps1 -DisplayName "John Doe" -UserPrincipalName "john.doe@domain.com"
📜 License
MIT License

🤝 Contributing
Pull requests are welcome! Feel free to submit issues or improvements.

yaml
Kopiëren
Bewerken

---

### ¿Avanzamos con el segundo? `terraform-azure-lab` por ejemplo. ¿Qué incluye ese repo? ¿Quieres que lo e
