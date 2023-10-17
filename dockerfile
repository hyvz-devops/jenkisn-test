FROM redis:lts
/bin/sh -c set -xe && 
 
/bin/sh -c rm -rf /var/lib/apt/lists/*

/bin/sh -c sed -i 's/^#\s*\(deb.*universe\)$/\1/g' 

/bin/sh -c mkdir -p /run/systemd 

CMD ["/bin/bash"] 

/bin/sh -c apt-get update && 

/bin/sh -c update-ca-certificates -f

/bin/sh -c ln -s /usr/games/gnuchess 

/bin/sh -c ln -s /usr/games/phalanx

COPY dir:c6c3abdd1db0c1a4ea195ffe6507289241d2edbb0a0eaa11f41b9b6eab2d61af in /usr/local/chesscorp/

/bin/sh -c /usr/local/chesscorp/src/main/scripts/docker_build.sh 

EXPOSE 80/tcp 

VOLUME [/data] 

VOLUME [/runtime] 

WORKDIR /runtime 

ENV CLUB_BASEURL=http://chesscorp.org/ 

ENV CLUB_DB_URL=jdbc:h2:file:/data/chess1

ENV CLUB_DB_USERNAME=chess 

ENV CLUB_DB_PASSWORD=chess 

ENV CLUB_DB_TYPE=H2 

ENV CLUB_DB_DDL=update 

ENV CLUB_PROFILES=jobs,bootstrap,swagger 

ENV CLUB_MAIL_HOST=localhost 

ENV CLUB_MAIL_PORT=25 

ENV CLUB_MAIL_SENDER=contact@mail.chesscorp.org

ENV CLUB_VALIDATION_REQ=false 

ENV JAVA_OPTS=-Xmx2G 

CMD ["/bin/sh" "-c" "java
