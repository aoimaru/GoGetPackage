[app/sources/209343495.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:e718071d252cdefa1de092304e555c29205708868f8d86794dd26680e81414f5" [label="/bin/sh -c echo 'hosts: files dns' >> /etc/nsswitch.conf" shape="box"];
  "sha256:0904cae1d6f1f9e62cd7c140776faed1fa735f7da9b7696763393f50f84c7333" [label="/bin/sh -c apk add --no-cache ca-certificates &&     update-ca-certificates" shape="box"];
  "sha256:adad800b2c415573bb9a170187a9039e4ca1dcab59f37295ea429b9cadeee0e7" [label="/bin/sh -c set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ||         gpg --keyserver pgp.mit.edu --recv-keys \"$key\" ||         gpg --keyserver keyserver.pgp.com --recv-keys \"$key\" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps" shape="box"];
  "sha256:aa607f73e4af79d8c6c05e0cebf22637ab4cde97622a68f9378a739a089deaaf" [label="local://context" shape="ellipse"];
  "sha256:56b157cfcac04522f88b931d05c93dfa268117d824667559ab3831c38a3c009f" [label="copy{src=/LICENSE, dest=/usr/share/chronograf/LICENSE}" shape="note"];
  "sha256:f3a4714d21d07f2021a7d33110be1e9078c2a00abb8ac54e5f3f58c48971e2af" [label="copy{src=/agpl-3.0.md, dest=/usr/share/chronograf/agpl-3.0.md}" shape="note"];
  "sha256:f54d5c0cd3e6d870a0063e6a56fecf8fd9a91dc6699c451c7af367fae4e91c5a" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:832d21f496d98c5bac9cb1139915058063c0e24e849841316d59f246fe432a10" [label="sha256:832d21f496d98c5bac9cb1139915058063c0e24e849841316d59f246fe432a10" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:e718071d252cdefa1de092304e555c29205708868f8d86794dd26680e81414f5" [label=""];
  "sha256:e718071d252cdefa1de092304e555c29205708868f8d86794dd26680e81414f5" -> "sha256:0904cae1d6f1f9e62cd7c140776faed1fa735f7da9b7696763393f50f84c7333" [label=""];
  "sha256:0904cae1d6f1f9e62cd7c140776faed1fa735f7da9b7696763393f50f84c7333" -> "sha256:adad800b2c415573bb9a170187a9039e4ca1dcab59f37295ea429b9cadeee0e7" [label=""];
  "sha256:adad800b2c415573bb9a170187a9039e4ca1dcab59f37295ea429b9cadeee0e7" -> "sha256:56b157cfcac04522f88b931d05c93dfa268117d824667559ab3831c38a3c009f" [label=""];
  "sha256:aa607f73e4af79d8c6c05e0cebf22637ab4cde97622a68f9378a739a089deaaf" -> "sha256:56b157cfcac04522f88b931d05c93dfa268117d824667559ab3831c38a3c009f" [label=""];
  "sha256:56b157cfcac04522f88b931d05c93dfa268117d824667559ab3831c38a3c009f" -> "sha256:f3a4714d21d07f2021a7d33110be1e9078c2a00abb8ac54e5f3f58c48971e2af" [label=""];
  "sha256:aa607f73e4af79d8c6c05e0cebf22637ab4cde97622a68f9378a739a089deaaf" -> "sha256:f3a4714d21d07f2021a7d33110be1e9078c2a00abb8ac54e5f3f58c48971e2af" [label=""];
  "sha256:f3a4714d21d07f2021a7d33110be1e9078c2a00abb8ac54e5f3f58c48971e2af" -> "sha256:f54d5c0cd3e6d870a0063e6a56fecf8fd9a91dc6699c451c7af367fae4e91c5a" [label=""];
  "sha256:aa607f73e4af79d8c6c05e0cebf22637ab4cde97622a68f9378a739a089deaaf" -> "sha256:f54d5c0cd3e6d870a0063e6a56fecf8fd9a91dc6699c451c7af367fae4e91c5a" [label=""];
  "sha256:f54d5c0cd3e6d870a0063e6a56fecf8fd9a91dc6699c451c7af367fae4e91c5a" -> "sha256:832d21f496d98c5bac9cb1139915058063c0e24e849841316d59f246fe432a10" [label=""];
}

