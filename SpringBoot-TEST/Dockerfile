# Usamos una imagen ligera de Java 17
FROM eclipse-temurin:17-jdk-alpine
# Creamos un directorio para la app
WORKDIR /app
# Copiamos el archivo que genera Maven/Gradle
COPY target/*.jar app.jar
# Ejecutamos la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
