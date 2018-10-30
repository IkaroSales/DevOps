# Instalação SonarQube
Com esse guia será possível realizar a instalação/configuração do SonarQube

### Instalação do Docker
```
sudo docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube
```

### Documentação do Docker
```
https://hub.docker.com/_/sonarqube/
```

### Sonar Runner
Baixe o SonarQube Runner no link abaixo e desempacote na pasta raiz do projeto
```
http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.4/sonar-runner-dist-2.4.zip
```

Agora faça as mudanças de configuração no seguinte arquivo `C:/xampp/htdocs/sonar/sonar-runner/conf/sonar-runner.properties`.

```
### Padrão SonarQube server
sonar.projectKey=IKS
sonar.host.url=http://127.0.1.1:9000
sonar.projectName=Ikaro Sales
sonar.sources=.

### Segurança ('sonar.forceAuthentication' colocar como 'true')
sonar.login=admin
sonar.password=admin
```
