# Instalação Kubernetes
Com esse guia será possível realizar a instalação/configuração do Kubernetes em uma máquina Ubuntu Linux

### Configuração Iniciais
```
$ sudo apt-get update
$ sudo swapoff -a
# Comentar Entrada do Swap - /etc/fstab
```

### Instalação do Docker
```
$ sudo apt-get install -y docker.io
```

### Instalação do Kubernetes
```
$ curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
$ echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
$ sudo apt-get update
$ sudo apt-get install kubelet kubectl kubeadm -y
```

• **KUBEADM** - Responsável por montar o cluster

• **KUBECTL** - Responsável por controlar o cluster

• **KUBELET** - Responsável por se comunicar com a API do Kubernetes Master a partir dos Workers


### Iniciar o Cluster

• Master
```
$ kubeadm init --apiserver-advertise-address $(hostname -i)
$ mkdir -p $HOME/.kube
$ sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
$ sudo chown $(id -u):$(id -g) $HOME/.kube/config
```

• Worker

Esse comando abaixo será gerado no Master do Kubernetes quando iniciar o cluster, basta seguir os passos informados e colar o comando nos Workers/Nodes.
```
$ kubeadm join {{IP}}:6443 --token {{token}} --discovery-toke n-ca-cert-hash sha256:{{certificate}}
```

### Exemplo
• Master
```
$ kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
$ kubectl get nodes -o wide
$ kubectl run nginx --image=nginx --replicas=7
$ kubectl get pods -o wide
```

### Links
https://medium.com/google-cloud/understanding-kubernetes-networking-pods-7117dd28727
