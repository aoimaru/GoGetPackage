[app/sources/421684154.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:e674e381aaf4b9da5e766d742bffc698719d7dc8e7940f0549c3ef0c355a098b" [label="/bin/sh -c apt-get -q update &&     apt-get -qy --no-install-recommends install python squid3 curl &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1ae0aa5f43fd89f07aae8e9a3a0cbbad504f9bd8094f1d9000eb371ca6de5c45" [label="/bin/sh -c sed -i \"s/^#acl localnet/acl localnet/\" /etc/squid3/squid.conf" shape="box"];
  "sha256:d27f53de095820a4f834f9d369f144aa00a4d56ca00bd080467aa17ec6cdb448" [label="/bin/sh -c sed -i \"s/^#http_access allow localnet/http_access allow localnet/\" /etc/squid3/squid.conf" shape="box"];
  "sha256:28de61cbc4e237508090c83caef17ffca842b57a15b70100df96a9e21a4c84c8" [label="/bin/sh -c mkdir -p /var/cache/squid3" shape="box"];
  "sha256:1d98fc5be2cc503717015555333dfd9d1ff8cd49e6f508de65e57e4742793613" [label="/bin/sh -c mv /etc/squid3/squid.conf /etc/squid3/squid.conf.in" shape="box"];
  "sha256:3d2e7c67f09d2ad0eed63562d454ce80a47cdaabb6fd476ccf184d44682783ff" [label="/bin/sh -c chown -R proxy:proxy /var/cache/squid3" shape="box"];
  "sha256:c6eb7c691294e0d12ca761a646836feec664153ff616e1b7e5d135adc2aa2847" [label="/bin/sh -c curl -sL --insecure -o /bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.0.1/dumb-init_1.0.1_amd64" shape="box"];
  "sha256:eda6a9979962a69e08b71e76dcef6e8c81babc343a5d4c93c23bf6b2d12d0311" [label="/bin/sh -c chmod +x /bin/dumb-init" shape="box"];
  "sha256:6dfd5637361832dacdc023ab6e510c84506a5f33a0d60a90c27daae422cebe4d" [label="local://context" shape="ellipse"];
  "sha256:f062b344193e98fd8ef1150616c57d025c05a12189eacdd2a37e1ccce919d2d9" [label="copy{src=/deploy_squid.py, dest=/tmp/deploy_squid.py}" shape="note"];
  "sha256:df7a5188526d05825d1030f65cf03af45bc85d6189c0ea049f9564532a1a7aa8" [label="sha256:df7a5188526d05825d1030f65cf03af45bc85d6189c0ea049f9564532a1a7aa8" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:e674e381aaf4b9da5e766d742bffc698719d7dc8e7940f0549c3ef0c355a098b" [label=""];
  "sha256:e674e381aaf4b9da5e766d742bffc698719d7dc8e7940f0549c3ef0c355a098b" -> "sha256:1ae0aa5f43fd89f07aae8e9a3a0cbbad504f9bd8094f1d9000eb371ca6de5c45" [label=""];
  "sha256:1ae0aa5f43fd89f07aae8e9a3a0cbbad504f9bd8094f1d9000eb371ca6de5c45" -> "sha256:d27f53de095820a4f834f9d369f144aa00a4d56ca00bd080467aa17ec6cdb448" [label=""];
  "sha256:d27f53de095820a4f834f9d369f144aa00a4d56ca00bd080467aa17ec6cdb448" -> "sha256:28de61cbc4e237508090c83caef17ffca842b57a15b70100df96a9e21a4c84c8" [label=""];
  "sha256:28de61cbc4e237508090c83caef17ffca842b57a15b70100df96a9e21a4c84c8" -> "sha256:1d98fc5be2cc503717015555333dfd9d1ff8cd49e6f508de65e57e4742793613" [label=""];
  "sha256:1d98fc5be2cc503717015555333dfd9d1ff8cd49e6f508de65e57e4742793613" -> "sha256:3d2e7c67f09d2ad0eed63562d454ce80a47cdaabb6fd476ccf184d44682783ff" [label=""];
  "sha256:3d2e7c67f09d2ad0eed63562d454ce80a47cdaabb6fd476ccf184d44682783ff" -> "sha256:c6eb7c691294e0d12ca761a646836feec664153ff616e1b7e5d135adc2aa2847" [label=""];
  "sha256:c6eb7c691294e0d12ca761a646836feec664153ff616e1b7e5d135adc2aa2847" -> "sha256:eda6a9979962a69e08b71e76dcef6e8c81babc343a5d4c93c23bf6b2d12d0311" [label=""];
  "sha256:eda6a9979962a69e08b71e76dcef6e8c81babc343a5d4c93c23bf6b2d12d0311" -> "sha256:f062b344193e98fd8ef1150616c57d025c05a12189eacdd2a37e1ccce919d2d9" [label=""];
  "sha256:6dfd5637361832dacdc023ab6e510c84506a5f33a0d60a90c27daae422cebe4d" -> "sha256:f062b344193e98fd8ef1150616c57d025c05a12189eacdd2a37e1ccce919d2d9" [label=""];
  "sha256:f062b344193e98fd8ef1150616c57d025c05a12189eacdd2a37e1ccce919d2d9" -> "sha256:df7a5188526d05825d1030f65cf03af45bc85d6189c0ea049f9564532a1a7aa8" [label=""];
}

