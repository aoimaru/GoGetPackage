[app/sources/198236226.Dockerfile]
digraph {
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" [label="docker-image://docker.io/frolvlad/alpine-glibc:latest" shape="ellipse"];
  "sha256:782b1e3674fb720756cc4ebcbc265afcdec49b50238509255b50f3972510d50b" [label="mkdir{path=/usr/lib/unifi}" shape="note"];
  "sha256:349469032b75a8edcb01da07da26b5949f41c1493412c0bd48b1c095bbfc4e37" [label="local://context" shape="ellipse"];
  "sha256:15dddd5d64387d390d439ca478cb9f97ab9dfe6d5d0651071a4e967094749886" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:4b0fb494b3ec09d401fdd770b36ccf4ce08a5b2d48a8474ee76ca697de6fbbe5" [label="/bin/sh -c set -x     && delgroup ping     && addgroup -g $PGID unifi     && adduser -D -G unifi -u $PUID unifi     && apk add -q --no-cache         bash binutils coreutils curl libcap         mongodb openjdk8-jre openssl shadow su-exec         tzdata     && curl -sSL https://dl.ubnt.com/unifi/${VERSION}/UniFi.unix.zip -o /tmp/UniFi.unix.${VERSION}.zip     && unzip -q /tmp/UniFi.unix.${VERSION}.zip -d /tmp     && mv /tmp/UniFi/* /usr/lib/unifi/     && bash -c 'mkdir -p {data,logs,run,cert}'     && chown -R unifi:unifi /usr/lib/unifi     && rm /usr/lib/unifi/bin/mongod     && ln -s /usr/bin/mongod /usr/lib/unifi/bin/mongod     && rm -rf /tmp/* /var/tmp/* /var/cache/apk/*" shape="box"];
  "sha256:77234e90a325aed67f43f164b3544b662b02c3371bc8061f5574c09aca09c459" [label="sha256:77234e90a325aed67f43f164b3544b662b02c3371bc8061f5574c09aca09c459" shape="plaintext"];
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" -> "sha256:782b1e3674fb720756cc4ebcbc265afcdec49b50238509255b50f3972510d50b" [label=""];
  "sha256:782b1e3674fb720756cc4ebcbc265afcdec49b50238509255b50f3972510d50b" -> "sha256:15dddd5d64387d390d439ca478cb9f97ab9dfe6d5d0651071a4e967094749886" [label=""];
  "sha256:349469032b75a8edcb01da07da26b5949f41c1493412c0bd48b1c095bbfc4e37" -> "sha256:15dddd5d64387d390d439ca478cb9f97ab9dfe6d5d0651071a4e967094749886" [label=""];
  "sha256:15dddd5d64387d390d439ca478cb9f97ab9dfe6d5d0651071a4e967094749886" -> "sha256:4b0fb494b3ec09d401fdd770b36ccf4ce08a5b2d48a8474ee76ca697de6fbbe5" [label=""];
  "sha256:4b0fb494b3ec09d401fdd770b36ccf4ce08a5b2d48a8474ee76ca697de6fbbe5" -> "sha256:77234e90a325aed67f43f164b3544b662b02c3371bc8061f5574c09aca09c459" [label=""];
}

