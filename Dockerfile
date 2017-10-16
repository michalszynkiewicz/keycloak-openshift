FROM fedora:26
RUN dnf -y install java-1.8.0-openjdk

RUN curl -L -o /tmp/keycloak.jar 'http://repo2.maven.org/maven2/org/wildfly/swarm/servers/keycloak/2017.10.0/keycloak-2017.10.0-swarm.jar'

EXPOSE 8080

RUN mkdir /workdir && chmod -R 777 /workdir

WORKDIR /workdir

CMD java -jar /tmp/keycloak.jar
