FROM openjdk:17-jdk-alpine
RUN  echo "Asia/Shanghai" > /etc/timezone
RUN  ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN  mkdir -p /webapps
RUN apk add --update ttf-dejavu fontconfig
WORKDIR /webapps

ENTRYPOINT java -jar ./app.jar