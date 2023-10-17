ADD file ... in / 44.63 MB

/bin/sh -c set -xe && 815 B
 
/bin/sh -c rm -rf /var/lib/apt/lists/*
514 B

/bin/sh -c sed -i 's/^#\s*\(deb.*universe\)$/\1/g' 850 B

/bin/sh -c mkdir -p /run/systemd 161 B

CMD ["/bin/bash"] 0 B

/bin/sh -c apt-get update && 171.86 MB

/bin/sh -c update-ca-certificates -f 303.35 KB

/bin/sh -c ln -s /usr/games/gnuchess 148 B

/bin/sh -c ln -s /usr/games/phalanx 152 B

COPY dir:c6c3abdd1db0c1a4ea195ffe6507289241d2edbb0a0eaa11f41b9b6eab2d61af in /usr/local/chesscorp/679.84 KB

/bin/sh -c /usr/local/chesscorp/src/main/scripts/docker_build.sh 290.1 MB

EXPOSE 80/tcp 0 B

VOLUME [/data] 0 B

VOLUME [/runtime] 0 B

WORKDIR /runtime 96 B

ENV CLUB_BASEURL=http://chesscorp.org/ 0 B

ENV CLUB_DB_URL=jdbc:h2:file:/data/chess1 0 B

ENV CLUB_DB_USERNAME=chess 0 B

ENV CLUB_DB_PASSWORD=chess 0 B

ENV CLUB_DB_TYPE=H2 0 B

ENV CLUB_DB_DDL=update 0 B

ENV CLUB_PROFILES=jobs,bootstrap,swagger 0 B

ENV CLUB_MAIL_HOST=localhost 0 B

ENV CLUB_MAIL_PORT=25 0 B

ENV CLUB_MAIL_SENDER=contact@mail.chesscorp.org 0 B

ENV CLUB_VALIDATION_REQ=false 0 B

ENV JAVA_OPTS=-Xmx2G 0 B

CMD ["/bin/sh" "-c" "java
