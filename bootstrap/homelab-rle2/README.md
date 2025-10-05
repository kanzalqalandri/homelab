# Install Flux CD on k8s

1) Install flux cli
2) Run below command

flux install --version v2.6.4

# Add repo to track

1) Create a sceret

flux create secret git github-auth \
  --url=ssh://git@github.com/kanzalqalandri/homelab-gitops.git \
  --private-key-file=/home/kanzal/.ssh/id_rsa --export > github-auth.yaml

2) create a GitRepository

kubectl apply -f git-repository.yaml
