[app/sources/307538365.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:403eeaaae104fed3b078276f421928c5bc8877ec7491e92a229c155153874b11" [label="local://context" shape="ellipse"];
  "sha256:e595449acdd3355afd12b747cf650cfe3800fe419887392ca07190e5082b80bd" [label="copy{src=/entrypoint-base.sh, dest=/entrypoints/entrypoint-base}" shape="note"];
  "sha256:46f4a395dedc331e6803bd465a96389210850d84d63a720100f24157cc4ae9f7" [label="/bin/sh -c set -xe;       apk upgrade --no-progress --no-cache &&       echo 'hosts: files dns' > /etc/nsswitch.conf &&       apk add --no-cache ca-certificates openssl dumb-init tini tzdata &&       update-ca-certificates &&       ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime &&       echo ${TZ} > /etc/timezone &&       wget --no-verbose -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64\" &&       wget --no-verbose -O /usr/local/bin/confd \"https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64\" &&       chmod 555 /usr/local/bin/* &&       chmod 555 /entrypoints/* &&       apk del openssl" shape="box"];
  "sha256:f408f12e4a0c428cf707c07299bd3b04df9243e3791c4a47e5af27c495e01ab4" [label="sha256:f408f12e4a0c428cf707c07299bd3b04df9243e3791c4a47e5af27c495e01ab4" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:e595449acdd3355afd12b747cf650cfe3800fe419887392ca07190e5082b80bd" [label=""];
  "sha256:403eeaaae104fed3b078276f421928c5bc8877ec7491e92a229c155153874b11" -> "sha256:e595449acdd3355afd12b747cf650cfe3800fe419887392ca07190e5082b80bd" [label=""];
  "sha256:e595449acdd3355afd12b747cf650cfe3800fe419887392ca07190e5082b80bd" -> "sha256:46f4a395dedc331e6803bd465a96389210850d84d63a720100f24157cc4ae9f7" [label=""];
  "sha256:46f4a395dedc331e6803bd465a96389210850d84d63a720100f24157cc4ae9f7" -> "sha256:f408f12e4a0c428cf707c07299bd3b04df9243e3791c4a47e5af27c495e01ab4" [label=""];
}

