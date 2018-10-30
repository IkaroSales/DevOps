# Jenkins
Com esse guia será possível realizar a instalação/configuração do Jenkins a partir do Docker em uma máquina Ubuntu Linux

### Instalação do Docker

```
sudo apt-get install -y docker.io
```

• https://hub.docker.com/r/jenkins/jenkins/

• https://github.com/jenkinsci/docker/blob/master/README.md

### Execução
```
sudo docker run -d -it -p 8080:8080 -p 50000:50000 --name jenkins jenkins/jenkins:lts
```

Execute o container pelo modo bash para acessar a senha gerada para acesso como "admin"
```
sudo docker exec -u 0 -it jenkins bash
```
### Capturando Senha
```
cat var/jenkins_home/secrets/initialAdminPassword
```

### Instalação PHP
Acesse o container do Jenkins
```
sudo docker exec -u 0 -it jenkins bash
```

Então, instale as dependências
```
sudo apt-get update
sudo apt-get install php
sudo apt-get install phpunit
sudo apt-get install php-curl
```
E para fazer a verificação de commit no repositório do GitHub, abra a configuração da Pipeline e vá para a seção **Build Triggers** e selecione a opção *Poll SCM* ou *Consultar periodicamente o SCM* e escreva `* * * * *`, isso irá fazer a consulta a cada 1 minuto no repositório.

IkaroSales : ikarosales7@gmail.com
