[app/sources/148917162.Dockerfile]
digraph {
  "sha256:a5d2c082644934e23738d6372a04d1ec4d5fd0b2adbb885ac374564b453c54a8" [label="docker-image://docker.io/i386/debian:stretch-slim" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:267ec336029120fd2ddd65d787f1c8ae711679ae7e7e49d41d8db02f42cae89c" [label="local://context" shape="ellipse"];
  "sha256:44887d687ffbd8cdb87242d96310d335f4556bdad9880fc69b95fb42c61b2f52" [label="copy{src=/scripts/download.sh, dest=/download.sh}" shape="note"];
  "sha256:298e601a41d590a02553c80458ffb3a657b1ae920574317d80616d7cd4c83c56" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:e0169884cd61930be48cb1f18d72c1e9a4fc43ac3f55c38e415581dc1cc9a68d" [label="/bin/sh -c apk --no-cache add bash curl grep   && chmod +x /download.sh   && sync; /download.sh   && for file in *.tar.gz; do tar -zxf \"$file\"; done   && rm -rf *.tar.gz" shape="box"];
  "sha256:3d4b09676e8518ed1f25b35614f0b7eb4f09273844ee6118a730779131a0f7c1" [label="copy{src=/tmp/*.deb, dest=/tmp/}" shape="note"];
  "sha256:159b61c83877084299d582a5039c97b2ac508cbf34082755735ef58beb3bbb08" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:2def7786962fa2900e593ff8ddc0b413b8aea7b622d71947983f6dc86264edc8" [label="/bin/bash -c set -xe;   if [ \"$nls\" = true ]; then     dpkg -i 1c-enterprise83-{common,server}*.deb;   else     dpkg -i 1c-enterprise83-{common,server}_*.deb;   fi" shape="box"];
  "sha256:5c200e8e64b49f40c4e382e29fd08def18b744f51b2775861d73923acf381922" [label="https://github.com/tianon/gosu/releases/download/1.11/gosu-i386" shape="ellipse"];
  "sha256:0f597da41711c87a1fa2c39a5567e0accdb9f9ab08c8274ad559088deba1dbbb" [label="copy{src=/gosu-i386, dest=/bin/gosu}" shape="note"];
  "sha256:81507e9a9412a4f61b0f31c61b9c0f05018294e6b4dbf5810812b2a8714da362" [label="/bin/bash -c chmod +x /bin/gosu" shape="box"];
  "sha256:5d59537d42b3219981433e7b407bb1bc2d15695ab7ec52e6d38869477353ffdb" [label="copy{src=/opt, dest=/opt}" shape="note"];
  "sha256:de1aa00395e7d9817042984c04706110e290b3a120ab058ceb09806edd0d5e9a" [label="copy{src=/bin/gosu, dest=/bin/gosu}" shape="note"];
  "sha256:a2434274b49ec380e07d9fecce113d7f7c82cbb18240fc0eaaab258ad14dca56" [label="/bin/sh -c set -xe   && apt-get update   && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends       locales       imagemagick       fontconfig   && rm -rf     /var/lib/apt/lists/*     /var/cache/debconf   && localedef -i ru_RU -c -f UTF-8 -A /usr/share/locale/locale.alias ru_RU.UTF-8" shape="box"];
  "sha256:76e366971eabea41f0d4e2c1e5d420c3bf40c645123e9bcf0d775445323f3b28" [label="/bin/sh -c groupadd -r grp1cv8 --gid=$onec_gid   && useradd -r -g grp1cv8 --uid=$onec_uid --home-dir=/home/usr1cv8 --shell=/bin/bash usr1cv8   && mkdir -p /var/log/1C /home/usr1cv8/.1cv8/1C/1cv8/conf   && chown -R usr1cv8:grp1cv8 /var/log/1C /home/usr1cv8" shape="box"];
  "sha256:25c61e68c52d34ecf19202a470ad103f9c55b98368d7f9ffb9fd4a8a2bfe84da" [label="copy{src=/server/logcfg.xml, dest=/home/usr1cv8/.1cv8/1C/1cv8/conf}" shape="note"];
  "sha256:f5997d3d60598defd91b90820617979cf5c97bf92604a3014b6f1dd673502160" [label="copy{src=/server/docker-entrypoint.i386.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:02d6352fae2f2fdae0e355a69413862b309dda0b69c4b3f2c7efbc335088e641" [label="/bin/sh -c ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat" shape="box"];
  "sha256:28e9cd97388feebebdef78ed4459aef90ae3ea083c1ac612611ff84e19a97a39" [label="sha256:28e9cd97388feebebdef78ed4459aef90ae3ea083c1ac612611ff84e19a97a39" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:44887d687ffbd8cdb87242d96310d335f4556bdad9880fc69b95fb42c61b2f52" [label=""];
  "sha256:267ec336029120fd2ddd65d787f1c8ae711679ae7e7e49d41d8db02f42cae89c" -> "sha256:44887d687ffbd8cdb87242d96310d335f4556bdad9880fc69b95fb42c61b2f52" [label=""];
  "sha256:44887d687ffbd8cdb87242d96310d335f4556bdad9880fc69b95fb42c61b2f52" -> "sha256:298e601a41d590a02553c80458ffb3a657b1ae920574317d80616d7cd4c83c56" [label=""];
  "sha256:298e601a41d590a02553c80458ffb3a657b1ae920574317d80616d7cd4c83c56" -> "sha256:e0169884cd61930be48cb1f18d72c1e9a4fc43ac3f55c38e415581dc1cc9a68d" [label=""];
  "sha256:a5d2c082644934e23738d6372a04d1ec4d5fd0b2adbb885ac374564b453c54a8" -> "sha256:3d4b09676e8518ed1f25b35614f0b7eb4f09273844ee6118a730779131a0f7c1" [label=""];
  "sha256:e0169884cd61930be48cb1f18d72c1e9a4fc43ac3f55c38e415581dc1cc9a68d" -> "sha256:3d4b09676e8518ed1f25b35614f0b7eb4f09273844ee6118a730779131a0f7c1" [label=""];
  "sha256:3d4b09676e8518ed1f25b35614f0b7eb4f09273844ee6118a730779131a0f7c1" -> "sha256:159b61c83877084299d582a5039c97b2ac508cbf34082755735ef58beb3bbb08" [label=""];
  "sha256:159b61c83877084299d582a5039c97b2ac508cbf34082755735ef58beb3bbb08" -> "sha256:2def7786962fa2900e593ff8ddc0b413b8aea7b622d71947983f6dc86264edc8" [label=""];
  "sha256:2def7786962fa2900e593ff8ddc0b413b8aea7b622d71947983f6dc86264edc8" -> "sha256:0f597da41711c87a1fa2c39a5567e0accdb9f9ab08c8274ad559088deba1dbbb" [label=""];
  "sha256:5c200e8e64b49f40c4e382e29fd08def18b744f51b2775861d73923acf381922" -> "sha256:0f597da41711c87a1fa2c39a5567e0accdb9f9ab08c8274ad559088deba1dbbb" [label=""];
  "sha256:0f597da41711c87a1fa2c39a5567e0accdb9f9ab08c8274ad559088deba1dbbb" -> "sha256:81507e9a9412a4f61b0f31c61b9c0f05018294e6b4dbf5810812b2a8714da362" [label=""];
  "sha256:a5d2c082644934e23738d6372a04d1ec4d5fd0b2adbb885ac374564b453c54a8" -> "sha256:5d59537d42b3219981433e7b407bb1bc2d15695ab7ec52e6d38869477353ffdb" [label=""];
  "sha256:81507e9a9412a4f61b0f31c61b9c0f05018294e6b4dbf5810812b2a8714da362" -> "sha256:5d59537d42b3219981433e7b407bb1bc2d15695ab7ec52e6d38869477353ffdb" [label=""];
  "sha256:5d59537d42b3219981433e7b407bb1bc2d15695ab7ec52e6d38869477353ffdb" -> "sha256:de1aa00395e7d9817042984c04706110e290b3a120ab058ceb09806edd0d5e9a" [label=""];
  "sha256:81507e9a9412a4f61b0f31c61b9c0f05018294e6b4dbf5810812b2a8714da362" -> "sha256:de1aa00395e7d9817042984c04706110e290b3a120ab058ceb09806edd0d5e9a" [label=""];
  "sha256:de1aa00395e7d9817042984c04706110e290b3a120ab058ceb09806edd0d5e9a" -> "sha256:a2434274b49ec380e07d9fecce113d7f7c82cbb18240fc0eaaab258ad14dca56" [label=""];
  "sha256:a2434274b49ec380e07d9fecce113d7f7c82cbb18240fc0eaaab258ad14dca56" -> "sha256:76e366971eabea41f0d4e2c1e5d420c3bf40c645123e9bcf0d775445323f3b28" [label=""];
  "sha256:76e366971eabea41f0d4e2c1e5d420c3bf40c645123e9bcf0d775445323f3b28" -> "sha256:25c61e68c52d34ecf19202a470ad103f9c55b98368d7f9ffb9fd4a8a2bfe84da" [label=""];
  "sha256:267ec336029120fd2ddd65d787f1c8ae711679ae7e7e49d41d8db02f42cae89c" -> "sha256:25c61e68c52d34ecf19202a470ad103f9c55b98368d7f9ffb9fd4a8a2bfe84da" [label=""];
  "sha256:25c61e68c52d34ecf19202a470ad103f9c55b98368d7f9ffb9fd4a8a2bfe84da" -> "sha256:f5997d3d60598defd91b90820617979cf5c97bf92604a3014b6f1dd673502160" [label=""];
  "sha256:267ec336029120fd2ddd65d787f1c8ae711679ae7e7e49d41d8db02f42cae89c" -> "sha256:f5997d3d60598defd91b90820617979cf5c97bf92604a3014b6f1dd673502160" [label=""];
  "sha256:f5997d3d60598defd91b90820617979cf5c97bf92604a3014b6f1dd673502160" -> "sha256:02d6352fae2f2fdae0e355a69413862b309dda0b69c4b3f2c7efbc335088e641" [label=""];
  "sha256:02d6352fae2f2fdae0e355a69413862b309dda0b69c4b3f2c7efbc335088e641" -> "sha256:28e9cd97388feebebdef78ed4459aef90ae3ea083c1ac612611ff84e19a97a39" [label=""];
}

