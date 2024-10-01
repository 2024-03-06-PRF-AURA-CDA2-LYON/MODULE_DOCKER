#L'image de base que ce build va étendre
#Le build va construire une image qui utilise
#les couches de openjdk:17-jdk-alpine
FROM openjdk:17-jdk-alpine
#Le WORKDIR : répertoire de travail 
#Le chemin où les fichiers seront copiés et les commandes exécutées
WORKDIR /usr/local/app
#On peut définir des arguments (clés/valeurs)
ARG JAR_FILE=target/*.jar
#COPY copie des fichiers de l'hôte pour les mettre dans l'image
#On réutilise des arguments avec ${}
COPY ${JAR_FILE} app.jar
#L'exécutable par défaut de l'image
ENTRYPOINT ["java","-jar","app.jar"]