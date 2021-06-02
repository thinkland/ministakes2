# setup cert-manager
# see ~/develop/kubernetes/cert-manager

# install cert-manager with helm:

kubectl create namespace cert-manager
helm    repo add jetstack https://charts.jetstack.io
helm    repo update
helm    install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --set installCRDs=true

# create issuers:

kubectl.exe apply -f .\clusterissuer-production.yaml
kubectl.exe apply -f .\clusterissuer-staging.yaml
