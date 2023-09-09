FROM openjdk:18-jdk-alpine3.14

RUN wget https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar -O minecraft_server.jar

RUN echo eula=true > eula.txt

RUN echo motd=JerobasInc > server.properties

RUN echo online-mode=false > server.properties

RUN echo difficulty=3 > server.properties

RUN echo allow-flight=true > server.properties

RUN echo spawn-protection=0 > server.properties

RUN echo max-players=5 > server.properties

EXPOSE 25565

CMD ["java", "-Xmx2G", "-Xms1G", "-jar", "minecraft_server.jar", "nogui"]