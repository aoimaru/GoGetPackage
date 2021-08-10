[app/sources/345371665.Dockerfile]
digraph {
  "sha256:1d4ebff337c8d7ac02ac057cfba4c02684de2a401c7c79a6219e182a7ba834f6" [label="docker-image://docker.io/balenalib/cybertan-ze250-ubuntu:trusty-run@sha256:623378bf052417ca93cca6aeb51e13391b55537f2150e097022926e4e8d2e15c" shape="ellipse"];
  "sha256:89382aa979741319b29df4c38cc10230f28ff39e6476e13df9159a4254cb3bc1" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0f2fae907184730ed610da915e8dc7c0a39d4e40895cf7271b7211d71008e1fe" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-i386-nlp.tar.gz\" \t&& echo \"2558e34e8e2aa952ce4505fc97872c3ef9fa8c25bcd8cab15d0026cc2e91ec30  go$GO_VERSION.linux-i386-nlp.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-i386-nlp.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-i386-nlp.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:80133c4cbc1d0294daacd3a7853544ff312d42868d255f6bf454f42a5fa8f0b7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:587bf78fe11e3c56d2adb62983438f882cf124f199334299e472c228f99583c9" [label="mkdir{path=/go}" shape="note"];
  "sha256:3c3d362c212686630bffc72367d2c3b455234d2d1834099ec204083c54ddb31c" [label="sha256:3c3d362c212686630bffc72367d2c3b455234d2d1834099ec204083c54ddb31c" shape="plaintext"];
  "sha256:1d4ebff337c8d7ac02ac057cfba4c02684de2a401c7c79a6219e182a7ba834f6" -> "sha256:89382aa979741319b29df4c38cc10230f28ff39e6476e13df9159a4254cb3bc1" [label=""];
  "sha256:89382aa979741319b29df4c38cc10230f28ff39e6476e13df9159a4254cb3bc1" -> "sha256:0f2fae907184730ed610da915e8dc7c0a39d4e40895cf7271b7211d71008e1fe" [label=""];
  "sha256:0f2fae907184730ed610da915e8dc7c0a39d4e40895cf7271b7211d71008e1fe" -> "sha256:80133c4cbc1d0294daacd3a7853544ff312d42868d255f6bf454f42a5fa8f0b7" [label=""];
  "sha256:80133c4cbc1d0294daacd3a7853544ff312d42868d255f6bf454f42a5fa8f0b7" -> "sha256:587bf78fe11e3c56d2adb62983438f882cf124f199334299e472c228f99583c9" [label=""];
  "sha256:587bf78fe11e3c56d2adb62983438f882cf124f199334299e472c228f99583c9" -> "sha256:3c3d362c212686630bffc72367d2c3b455234d2d1834099ec204083c54ddb31c" [label=""];
}

