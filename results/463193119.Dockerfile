[app/sources/463193119.Dockerfile]
digraph {
  "sha256:4f49048115b23c37d7deceb19006fce8f563d7736d6ae76d29bedfb63a7ea594" [label="docker-image://docker.io/geertjohan/pgmodeler-cli:latest" shape="ellipse"];
  "sha256:f6f5c8398585c5a6adb037f9bc4290de89e20460b145abc7757eb5f920d6c909" [label="/bin/sh -c mkdir /go" shape="box"];
  "sha256:6427186d7bc6b21d98242363b42881151b1e738dc7f6478982f4696968e18384" [label="/bin/sh -c wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - &&     echo \"deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main\" > /etc/apt/sources.list.d/postgres.list &&     apt update &&     apt -y install --no-install-recommends postgresql-client-9.6 &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:69dcc02b97236827d4ac59486927b356f1fdce887bbd5ca1dd11f91014f5df6c" [label="/bin/sh -c wget --quiet -O - https://packagecloud.io/golang-migrate/migrate/gpgkey | apt-key add - &&     echo \"deb https://packagecloud.io/golang-migrate/migrate/ubuntu/ xenial main\" > /etc/apt/sources.list.d/migrate.list &&     apt-get update &&     apt-get install -y migrate &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bc1c555a4fc2bf76ba65ab5c0be1fca1704347db1ea6c79a1d6e35de03d69ea5" [label="/bin/sh -c apt-get update && apt-get -y install --no-install-recommends     git     ttf-dejavu     xvfb     maven openjdk-8-jdk     curl     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9a1c8d4d13f02136347b185bdffea5e8396b57431c855dc1637c3e8560b84b2e" [label="/bin/sh -c wget -O go.tgz \"https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz\" &&     tar -C /usr/local -xzf go.tgz &&     rm go.tgz" shape="box"];
  "sha256:8cef592019b36775556bce82604ee8f33c526fa4cb593b81e816b71beb85944f" [label="/bin/sh -c go get github.com/cortesi/modd/cmd/modd" shape="box"];
  "sha256:c9faf76eb34920266e7d648320e8f957f3b47a891560afbb8fbc8f2538287676" [label="/bin/sh -c curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-17.09.0-ce.tgz &&     tar --strip-components=1 -xvzf docker-17.09.0-ce.tgz -C /usr/local/bin &&     rm docker-17.09.0-ce.tgz" shape="box"];
  "sha256:b51cc649a7d3d96012999abbc064d3e1cb730daee5324705cda2b3f84931891f" [label="/bin/sh -c git clone https://github.com/GeertJohan/apgdiff.git /opt/apgdiff &&     (cd /opt/apgdiff && mvn package) &&     cp /opt/apgdiff/target/apgdiff-2.5.0-SNAPSHOT.jar /opt/apgdiff.jar &&    rm -rf /opt/apgdiff &&     echo \"#!/bin/bash\\njava -jar /opt/apgdiff.jar \\$@\" > /usr/local/bin/apgdiff &&    chmod +x /usr/local/bin/apgdiff" shape="box"];
  "sha256:b4872aa45de3061706f4c5f08d6e9d886fc4f9d0c51c04947889077c2a48157e" [label="mkdir{path=/go/src/go.nlx.io/nlx/txlog-db}" shape="note"];
  "sha256:57d83ddc359e616ad9f11f609ca5695149b9a4dd7195aa52e6a44922536a10ee" [label="sha256:57d83ddc359e616ad9f11f609ca5695149b9a4dd7195aa52e6a44922536a10ee" shape="plaintext"];
  "sha256:4f49048115b23c37d7deceb19006fce8f563d7736d6ae76d29bedfb63a7ea594" -> "sha256:f6f5c8398585c5a6adb037f9bc4290de89e20460b145abc7757eb5f920d6c909" [label=""];
  "sha256:f6f5c8398585c5a6adb037f9bc4290de89e20460b145abc7757eb5f920d6c909" -> "sha256:6427186d7bc6b21d98242363b42881151b1e738dc7f6478982f4696968e18384" [label=""];
  "sha256:6427186d7bc6b21d98242363b42881151b1e738dc7f6478982f4696968e18384" -> "sha256:69dcc02b97236827d4ac59486927b356f1fdce887bbd5ca1dd11f91014f5df6c" [label=""];
  "sha256:69dcc02b97236827d4ac59486927b356f1fdce887bbd5ca1dd11f91014f5df6c" -> "sha256:bc1c555a4fc2bf76ba65ab5c0be1fca1704347db1ea6c79a1d6e35de03d69ea5" [label=""];
  "sha256:bc1c555a4fc2bf76ba65ab5c0be1fca1704347db1ea6c79a1d6e35de03d69ea5" -> "sha256:9a1c8d4d13f02136347b185bdffea5e8396b57431c855dc1637c3e8560b84b2e" [label=""];
  "sha256:9a1c8d4d13f02136347b185bdffea5e8396b57431c855dc1637c3e8560b84b2e" -> "sha256:8cef592019b36775556bce82604ee8f33c526fa4cb593b81e816b71beb85944f" [label=""];
  "sha256:8cef592019b36775556bce82604ee8f33c526fa4cb593b81e816b71beb85944f" -> "sha256:c9faf76eb34920266e7d648320e8f957f3b47a891560afbb8fbc8f2538287676" [label=""];
  "sha256:c9faf76eb34920266e7d648320e8f957f3b47a891560afbb8fbc8f2538287676" -> "sha256:b51cc649a7d3d96012999abbc064d3e1cb730daee5324705cda2b3f84931891f" [label=""];
  "sha256:b51cc649a7d3d96012999abbc064d3e1cb730daee5324705cda2b3f84931891f" -> "sha256:b4872aa45de3061706f4c5f08d6e9d886fc4f9d0c51c04947889077c2a48157e" [label=""];
  "sha256:b4872aa45de3061706f4c5f08d6e9d886fc4f9d0c51c04947889077c2a48157e" -> "sha256:57d83ddc359e616ad9f11f609ca5695149b9a4dd7195aa52e6a44922536a10ee" [label=""];
}

