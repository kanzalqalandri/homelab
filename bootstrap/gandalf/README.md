# Install Flux CD on k8s

1) Install flux cli
2) Run below command

flux install

# Add repo to track

1) Create a sceret

flux create secret git github-auth \
  --url=ssh://git@github.com/kanzalqalandri/gitops-flux-helm.git \
  --private-key-file=/home/kanzal/.ssh/id_rsa --export > github-auth.yaml

2) create a GitRepository
