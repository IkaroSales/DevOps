# Micro services
mvn -f pom.xml clean package -DskipTests -Dfile.encoding=UTF8

# Web APP
gulp && tar cvfz devryone-frontend-web.DEV.tar.gz dist/
