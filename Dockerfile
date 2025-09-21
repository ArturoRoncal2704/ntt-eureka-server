# Usar JDK 11
FROM openjdk:11-jdk-slim

# Definir el directorio de trabajo
WORKDIR /app

# Copiar el jar construido al contenedor
COPY target/eureka_server-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto de Eureka
EXPOSE 8761

# Comando para ejecutar la app
ENTRYPOINT ["java","-jar","app.jar"]
