[app/sources/250071035.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:5fa36070fd78846488a79e74fd0323b02f7e1ac8f5184267fb9ad1d8b9a2b750" [label="/bin/sh -c apk upgrade --update     && apk add bash tzdata wget ca-certificates     && wget ${CRXDL_DOWNLOAD_URL} -O /usr/bin/crxdl     && chmod +x /usr/bin/crxdl     && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime     && echo ${TZ} > /etc/timezone     && apk del wget     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f0c8d8d0a50a2c001b607051069774e039b839360520bc188fcf065d819c845c" [label="sha256:f0c8d8d0a50a2c001b607051069774e039b839360520bc188fcf065d819c845c" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:5fa36070fd78846488a79e74fd0323b02f7e1ac8f5184267fb9ad1d8b9a2b750" [label=""];
  "sha256:5fa36070fd78846488a79e74fd0323b02f7e1ac8f5184267fb9ad1d8b9a2b750" -> "sha256:f0c8d8d0a50a2c001b607051069774e039b839360520bc188fcf065d819c845c" [label=""];
}

