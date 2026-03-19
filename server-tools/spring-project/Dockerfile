# Fase 1: Imagen ligera de Java
FROM eclipse-temurin:17-jdk-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el JAR (asegúrate de que el nombre coincida)
COPY *.jar app.jar

# Exponemos el puerto interno
EXPOSE 8080

# Comando para arrancar
ENTRYPOINT ["java", "-jar", "app.jar"]
