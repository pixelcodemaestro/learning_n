## commands
az login
az account set --subscription e48b7978-0ebb-4c5d-a6a3-f240480ee327

az aks get-credentials --resource-group learnd --name learn --overwrite-existing

kubectl config get-contexts
kubectl config use-context <context_name>
az account show
az acr list -o table

az aks update  --name learn  --resource-group learnd  --attach-acr learndacr

az aks check-acr --name learn --resource-group learnd --acr learndacr.azurecr.io

- app registrations

az ad sp create-for-rbac --name github-actions-sp --role Contributor --scopes /subscriptions/e48b7978-0ebb-4c5d-a6a3-f240480ee327


| Secret                  | Value                                                                   
| ----------------------- | --------------------------------------
| `AZURE_CLIENT_ID`       | 27f60ac7-5039-4fc7-bd51-faef9ce547bb      
| `AZURE_CLIENT_SECRET`   | 9a3b243a-6447-482f-bd5a-9031f286761
| `AZURE_SUBSCRIPTION_ID` | e48b7978-0ebb-4c5d-a6a3-f240480ee327                                                         
| `AZURE_TENANT_ID`       | 6e0125d3-1b32-4647-b3dc-2f9c4b25d537                                                                
| `ACR_NAME`              | learndacr                                        
| `AKS_CLUSTER_NAME`      | learn                                                                
| `AKS_RESOURCE_GROUP`    | learnd        
