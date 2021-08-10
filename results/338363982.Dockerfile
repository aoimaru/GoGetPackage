[app/sources/338363982.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:f4ebd1281745d6d28f36fe109efb08658dde4b99b8456a62c0d4e0f8830dbe65" [label="/bin/sh -c rs=\"https://mirrors.aliyun.com/alpine/edge\"    &&      rf=\"/etc/apk/repositories\"                     &&      tz=\"Asia/Shanghai\"                             &&      echo \"$rs/main/\"        > $rf                  &&      echo \"$rs/community/\"  >> $rf                  &&      apk update                                     &&      apk upgrade                                    &&      apk add curl acl tzdata                        &&      cp -rfv /usr/share/zoneinfo/$tz /etc/localtime &&      echo \"$tz\" > /etc/timezone                     &&      apk del tzdata" shape="box"];
  "sha256:afd7e8a4b8147d33b1b89907c9311604a44b8b6eb57bd5e499c6af3a358f1d88" [label="sha256:afd7e8a4b8147d33b1b89907c9311604a44b8b6eb57bd5e499c6af3a358f1d88" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:f4ebd1281745d6d28f36fe109efb08658dde4b99b8456a62c0d4e0f8830dbe65" [label=""];
  "sha256:f4ebd1281745d6d28f36fe109efb08658dde4b99b8456a62c0d4e0f8830dbe65" -> "sha256:afd7e8a4b8147d33b1b89907c9311604a44b8b6eb57bd5e499c6af3a358f1d88" [label=""];
}

