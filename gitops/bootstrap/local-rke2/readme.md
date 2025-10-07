flux install --version v2.6.4 --components-extra 'image-reflector-controller,image-automation-controller'

kubectl apply -f git-repository.yaml

kubectl apply -f kustomization.yaml
