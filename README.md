![Screenshot 2021-06-02 at 12 03 54](https://user-images.githubusercontent.com/9538697/124413440-c1290c80-dda4-11eb-8202-0fcf110baa57.png)
---
languages:
- nodejs
- javascript
- terraform
products:
- azure
- azure devops yaml pipelines
- azure-app-service
- terraform
description: "Azure app service infrastructure-as-code with Terraform and ADO yaml pipeline"
---

# Description

"This sample demonstrates Azure infrastructure-as-code with Terraform and ADO yaml pipeline. Creates dev and prod environments, builds and tests a tiny Hello World Node.js app and deploys app to Azure App Service. Consequently provides pipelines to destroy dev and prod environments"

## Requirements 
- Azure Cloud
- Azure DevOps 
- [Terraform extension for Azure DevOps](https://marketplace.visualstudio.com/items?itemName=charleszipp.azure-pipelines-tasks-terraform)
- Service principal with permissions to deploy resources in Azure Cloud (create in ADO a Service Principal with alias name 'nodejs-cicd')
- This is the only resources that need to be created manually in advance in Azure in order to store the Terraform state file: 
```
   resource group name: 'nodejs-cicd-rg'
       storage account name: 'tfops'
          container name: 'tfstate'
```          

