# 🔐 Entra ID PowerShell Automation

Automated scripts using PowerShell and Microsoft Graph to manage users, groups, and identity tasks within Microsoft Entra ID (formerly Azure AD).

## ✅ Prerequisites

Make sure you have the following:

- PowerShell 7 or later
- Microsoft.Graph PowerShell SDK installed  

  ```bash
  Install-Module Microsoft.Graph -Scope CurrentUser
  ```
- Entra ID / Azure AD permissions and access
- A registered app in Azure AD with the necessary delegated or application permissions
  
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
```

## ⚙️ Usage

1. ## Connect to Microsoft Graph

```bash
Connect-MgGraph -Scopes "User.ReadWrite.All", "Group.ReadWrite.All", "Directory.AccessAsUser.All"
```

2. ## Run a script

```bash
.\scripts\create-user.ps1
```

3. ## Example with parameters

```bash
.\scripts\create-user.ps1 -DisplayName "Jane Doe" -UserPrincipalName "jane.doe@yourdomain.com" -Password "P@ssw0rd!"
```

## 🚀 Getting Started

1. ## Clone the repo

```bash
git clone https://github.com/psturm79/entra-id-powershell.git
cd entra-id-powershell
```

2. ## Explore, customize, and automate your identity operations.

## 🛠️ Customization

Feel free to customize the scripts to fit your organizational needs. All scripts use Microsoft Graph SDK cmdlets and can be extended to cover additional identity management scenarios.

## 📚 Resources

- [Microsoft Graph PowerShell SDK Documentation](https://learn.microsoft.com/powershell/microsoftgraph/overview)
- [Microsoft Entra ID (Azure AD) Documentation](https://learn.microsoft.com/azure/active-directory/)

## 🤝 Contributing
Contributions, issues, and feature requests are welcome! Please open a pull request or issue to discuss your ideas.

## 📄 License
This project is licensed under the MIT License — see the LICENSE file for details.

## 📫 Contact
Created by Pablo Sturm
Feel free to reach out for questions or collaboration.

