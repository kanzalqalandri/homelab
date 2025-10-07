# Install Flux CD on k8s

1) Install flux cli
2) Run below command

flux install --version v2.6.4 --components-extra 'image-reflector-controller,image-automation-controller'

# Add repo to track

1) Create a sceret

flux create secret git github-auth \
  --url=ssh://git@github.com/kanzalqalandri/homelab-gitops.git \
  --private-key-file=/home/kanzal/.ssh/id_rsa --export > github-auth.yaml

kubectl apply -f github-auth.yaml

2) create a GitRepository

kubectl apply -f secrets.yaml

# Initilize Kustomizization

kubectl apply -f kustomization.yaml
