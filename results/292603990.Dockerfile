[app/sources/292603990.Dockerfile]
digraph {
  "sha256:162dd9979f68b0d6e56da22f0007d5797260490cf7baaa6a0a6b81babd3444ec" [label="docker-image://docker.elastic.co/elasticsearch/elasticsearch:5.6.3@sha256:b30ef453dc5fe003e342b7d1d6a8b7c0e06711e1be3ede483e1a4dd84ba96641" shape="ellipse"];
  "sha256:1e64efeef02c2561ae3bbbcf3ed60ad8816e228afa3bf926e7a8ec1686539151" [label="/bin/sh -c set -ex; \t\tyum -y install epel-release; \tyum -y install wget dpkg; \t\tdpkgArch=\"$(dpkg --print-architecture | awk -F- '{ print $NF }')\"; \twget -O /usr/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch\"; \twget -O /tmp/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc\"; \t\texport GNUPGHOME=\"$(mktemp -d)\"; \tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; \tgpg --batch --verify /tmp/gosu.asc /usr/bin/gosu; \trm -r \"$GNUPGHOME\" /tmp/gosu.asc; \t\tchmod +x /usr/bin/gosu; \tgosu nobody true; \t\tyum -y remove wget dpkg; \tyum clean all" shape="box"];
  "sha256:ee050470687fd846798c290b8db16d2061e4ab7c180a8db33720f68d23de9109" [label="/bin/sh -c sed -i 's/#networkaddress.cache.ttl=-1/networkaddress.cache.ttl=10/g' $JAVA_HOME/lib/security/java.security" shape="box"];
  "sha256:daf34d9294d94e903057056ba08c88623032fd23afa7350f768fecb7f7433ca7" [label="local://context" shape="ellipse"];
  "sha256:3b2e4479f94a39c9f3cfde40a21283c9bd68c382017746fb91fd1641488e316e" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:6cf698ded2c76aac619712b645331f091a53e3ec9c4e8d4f590fd4dfae6b21a8" [label="sha256:6cf698ded2c76aac619712b645331f091a53e3ec9c4e8d4f590fd4dfae6b21a8" shape="plaintext"];
  "sha256:162dd9979f68b0d6e56da22f0007d5797260490cf7baaa6a0a6b81babd3444ec" -> "sha256:1e64efeef02c2561ae3bbbcf3ed60ad8816e228afa3bf926e7a8ec1686539151" [label=""];
  "sha256:1e64efeef02c2561ae3bbbcf3ed60ad8816e228afa3bf926e7a8ec1686539151" -> "sha256:ee050470687fd846798c290b8db16d2061e4ab7c180a8db33720f68d23de9109" [label=""];
  "sha256:ee050470687fd846798c290b8db16d2061e4ab7c180a8db33720f68d23de9109" -> "sha256:3b2e4479f94a39c9f3cfde40a21283c9bd68c382017746fb91fd1641488e316e" [label=""];
  "sha256:daf34d9294d94e903057056ba08c88623032fd23afa7350f768fecb7f7433ca7" -> "sha256:3b2e4479f94a39c9f3cfde40a21283c9bd68c382017746fb91fd1641488e316e" [label=""];
  "sha256:3b2e4479f94a39c9f3cfde40a21283c9bd68c382017746fb91fd1641488e316e" -> "sha256:6cf698ded2c76aac619712b645331f091a53e3ec9c4e8d4f590fd4dfae6b21a8" [label=""];
}

