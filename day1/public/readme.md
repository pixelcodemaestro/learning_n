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