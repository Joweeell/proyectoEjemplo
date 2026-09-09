# Usamos una imagen ligera de Java 21 para ejecutar la aplicación
FROM eclipse-temurin:21-jre-alpine

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR compilado por Gradle desde GitHub Actions hacia el contenedor
COPY build/libs/*SNAPSHOT.jar app.jar

# Indicamos que la app escucha internamente en el puerto 8080
EXPOSE 8080

# Comando para iniciar la aplicación Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]
