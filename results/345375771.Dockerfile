[app/sources/345375771.Dockerfile]
digraph {
  "sha256:03acaface3e26d569fcc3420dfa6456c557281d61e4410488351a6bfbf79eaa3" [label="docker-image://docker.io/balenalib/orange-pi-zero-alpine:3.8-build" shape="ellipse"];
  "sha256:6a6d45622e828d4b6a8020cde99dcbec8b8c118d5be8171dee5811bdcc1fb21f" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:b24e7fd57c9d01bd51cd9b061ce0a4dadd4884c69b17a164acfc9e8070a3b569" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:693d6dcf0bee9df8329b069cc13ab493264f25b905e7c12841e8432d2c6b9b26" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:67a27eff06a1ac9f13502074f339a84b62cf61eac622bf0d26e7a0557be761fb" [label="mkdir{path=/go}" shape="note"];
  "sha256:e42098bf17e50c3d48819741c59f34de96eb3e8fbd2c6305d0d41be32b3b51f2" [label="sha256:e42098bf17e50c3d48819741c59f34de96eb3e8fbd2c6305d0d41be32b3b51f2" shape="plaintext"];
  "sha256:03acaface3e26d569fcc3420dfa6456c557281d61e4410488351a6bfbf79eaa3" -> "sha256:6a6d45622e828d4b6a8020cde99dcbec8b8c118d5be8171dee5811bdcc1fb21f" [label=""];
  "sha256:6a6d45622e828d4b6a8020cde99dcbec8b8c118d5be8171dee5811bdcc1fb21f" -> "sha256:b24e7fd57c9d01bd51cd9b061ce0a4dadd4884c69b17a164acfc9e8070a3b569" [label=""];
  "sha256:b24e7fd57c9d01bd51cd9b061ce0a4dadd4884c69b17a164acfc9e8070a3b569" -> "sha256:693d6dcf0bee9df8329b069cc13ab493264f25b905e7c12841e8432d2c6b9b26" [label=""];
  "sha256:693d6dcf0bee9df8329b069cc13ab493264f25b905e7c12841e8432d2c6b9b26" -> "sha256:67a27eff06a1ac9f13502074f339a84b62cf61eac622bf0d26e7a0557be761fb" [label=""];
  "sha256:67a27eff06a1ac9f13502074f339a84b62cf61eac622bf0d26e7a0557be761fb" -> "sha256:e42098bf17e50c3d48819741c59f34de96eb3e8fbd2c6305d0d41be32b3b51f2" [label=""];
}

