# Instalação MiniKube

• Necessário instalar o VirtualBox (https://websiteforstudents.com/install-virtualbox-latest-on-ubuntu-16-04-lts-17-04-17-10/)

• Não é possível rodar o Minikube dentro de uma VM, pois não é possível rodar uma VM dentro de uma VM.

### Instalação KubeControl
1. Download do kubectl
2. Permissão de execução
3. Mover para bin
4. Verificar funcionamento
```
$ curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
$ chmod +x kubectl
$ mv kubectl ../../usr/local/bin/
$ kubectl --help
```

### Instalação MiniKube
1. Download do kubectl
2. Permissão de execução
3. Mover para bin
4. Verificar funcionamento
```
$ curl -Lo minikube https://github.com/kubernetes/minikube/releases/download/v0.28.0/minikube-linux-amd64
$ chmod +x minikube
$ mv minikube ../../usr/local/bin/
$ minikube --help
```

### Iniciando Minikube
1. Iniciar o MiniKube
2. Verificar se está funcionando
```
$ minikube start
$ kubectl get nodes -o wide
```

### Deployment MiniKube
1. Subindo um Deployment do Nginx
2. Verificar Deploy do Nginx
```
$ kubectl run nginx --image
$ kubectl get deployment -o wide
$ kubectl get pods -o wide
```
