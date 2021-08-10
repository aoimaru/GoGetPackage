[app/sources/269381963.Dockerfile]
digraph {
  "sha256:47f24a32f9c84b2f77d06e9e09cafc5315c2c2106bb89801d27568aa5389e1ca" [label="docker-image://docker.io/resin/armhf-alpine:3.5" shape="ellipse"];
  "sha256:cd59f7f419502f959d8953a844b786d016547cb27b29268ad7ac282ee28008ab" [label="mkdir{path=/go/src/github.com/minio}" shape="note"];
  "sha256:eaa6837c18eaebdd93e2693db4030236d7fb1348769387dad841d334b368814e" [label="/bin/sh -c apk add --no-cache ca-certificates &&      apk add --no-cache --virtual .build-deps git go musl-dev &&      echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf &&      go get -v -d github.com/minio/minio &&      cd /go/src/github.com/minio/minio &&      go install -v -ldflags \"$(go run buildscripts/gen-ldflags.go)\" &&      rm -rf /go/pkg /go/src /usr/local/go && apk del .build-deps" shape="box"];
  "sha256:cbc9e4490dddb4cd73046655f829b956486e005e897d6a94df27087f01dbed83" [label="local://context" shape="ellipse"];
  "sha256:fd287bb13bc308c7c165533d5e84f4e5655ad4d84ac7e5c2ee6ea5c2557d613d" [label="copy{src=/buildscripts/docker-entrypoint.sh, dest=/usr/bin/}" shape="note"];
  "sha256:77c6458edcd6fec77a8d3361dbd41e939ad548187b5551ef548855a544dc368e" [label="/bin/sh -c chmod +x /usr/bin/docker-entrypoint.sh" shape="box"];
  "sha256:a225def5a0bd554491ccaab9d3b378228fced3edcc4ec62b41a2c105de9f5e89" [label="sha256:a225def5a0bd554491ccaab9d3b378228fced3edcc4ec62b41a2c105de9f5e89" shape="plaintext"];
  "sha256:47f24a32f9c84b2f77d06e9e09cafc5315c2c2106bb89801d27568aa5389e1ca" -> "sha256:cd59f7f419502f959d8953a844b786d016547cb27b29268ad7ac282ee28008ab" [label=""];
  "sha256:cd59f7f419502f959d8953a844b786d016547cb27b29268ad7ac282ee28008ab" -> "sha256:eaa6837c18eaebdd93e2693db4030236d7fb1348769387dad841d334b368814e" [label=""];
  "sha256:eaa6837c18eaebdd93e2693db4030236d7fb1348769387dad841d334b368814e" -> "sha256:fd287bb13bc308c7c165533d5e84f4e5655ad4d84ac7e5c2ee6ea5c2557d613d" [label=""];
  "sha256:cbc9e4490dddb4cd73046655f829b956486e005e897d6a94df27087f01dbed83" -> "sha256:fd287bb13bc308c7c165533d5e84f4e5655ad4d84ac7e5c2ee6ea5c2557d613d" [label=""];
  "sha256:fd287bb13bc308c7c165533d5e84f4e5655ad4d84ac7e5c2ee6ea5c2557d613d" -> "sha256:77c6458edcd6fec77a8d3361dbd41e939ad548187b5551ef548855a544dc368e" [label=""];
  "sha256:77c6458edcd6fec77a8d3361dbd41e939ad548187b5551ef548855a544dc368e" -> "sha256:a225def5a0bd554491ccaab9d3b378228fced3edcc4ec62b41a2c105de9f5e89" [label=""];
}

