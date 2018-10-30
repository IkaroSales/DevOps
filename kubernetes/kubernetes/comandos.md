# Comandos kubectl
O utilitário kubectl permite que você interfira com o gerenciador de cluster Kubernetes. Por exemplo, você pode adicionar e excluir nós, pods, controladores de replicação e serviços.
Você também pode verificar seu status, e assim por diante.

#### Comandos Básicos
```bash
#Exemplos
kubectl get deployment -o wide
kubectl get pv -o wide
kubectl get pvc -o wide
kubectl get pods -o wide
kubectl get nodes -o wide
kubectl get rc -o wide
kubectl get service -o wide
```
```bash
# Informações basicas do cluster
$ kubectl cluster-info
```
```bash
# Lista as versões da API
$ kubectl api-versions
```
```bash
# Lista servidores que faz parte do cluster
$ kubectl get nodes -o wide
```
```bash
# Exibe Pods em execução com seu respectivo Node/Workers e seu IP
$ kubectl get pods -o wide
```
```bash
# Exporta informações dos Pod no formato yaml
$ kubectl get pod <pod name> -o=yaml
```
```bash
# Exibe quantas replicas tem em um Replication Controller
$ kubectl get rc <rc name> -o wide
```
```bash
# Exibe serviços em execução
$ kubectl get svc <sc name> -o wide
```
```bash
# Deletar serviço
$ kubectl delete service <service name>
```
```bash
# Deletar todos os serviço
$ kubectl delete service --all
```
```bash
# Exibe os pod dentro de um namespace
$ kubctl get --namespace=<namespace name> pods
```
```bash 
# Exibe os logs de todos namespace
$ kubectl get --all-namespaces events -w
```
```bash
# Cria pods a partir de um aquivo yaml
$ kubectl create -f development-ns.yaml
```
```bash
# Exibe informações do Pod
$ kubectl describe pod <pode name>
```
```bash
# Deletar Pod
$ kubectl delete pod <pode name>
```
```bash
# Deleta todos os Pods
$ kubectl delete pods --all
```
```bash
# Escala o número de pods
$ kubectl scale --replicas=3 rc <pod name>
```
```bash
# Executa comando remoto no pod
$ kubectl exec <pod name> date
```
```bash
# Acessa o bash do pod
$ kubectl exec <pod name> -it bash
```
```bash
# Alterar Label dos Nodes/Workers
$ kubectl label node <node name> app:<label name>
```
```bash
# Exibir todos os Deployments
$ kubectl get deployment -o wide
```
```bash
# Deletar Deployment
$ kubectl delete deployment <name>
```
```bash
# Deletar todos os Deployments
$ kubectl delete deployment --all
```

#### Mais informações sobre o comando kubectl
[kubectl-overview](https://kubernetes.io/docs/user-guide/kubectl-overview/)
