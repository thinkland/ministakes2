# setup cert-manager
# see ~/develop/kubernetes/cert-manager

# install cert-manager with helm:

kubectl create namespace cert-manager
helm    repo add jetstack https://charts.jetstack.io
helm    repo update
helm    install cert-manager jetstack/cert-manager 
    --namespace cert-manager 
    --create-namespace 
    --set installCRDs=true

# create issuers, 
# for microk8s with acme.solvers.http01.ingress.class = public !

kubectl.exe apply -f .\clusterissuer-production-microk8s.yaml
kubectl.exe apply -f .\clusterissuer-staging-microk8s.yaml

# then annotate tls ingress with 
#   cert-manager.io/cluster-issuer: letsencrypt-staging | prod
