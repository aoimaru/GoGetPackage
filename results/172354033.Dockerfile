[app/sources/172354033.Dockerfile]
digraph {
  "sha256:91f661401b706e0920be4e64a49d0704697613e77b8c05cb6e93924f62dd208c" [label="docker-image://docker.io/clouder/base:3.4" shape="ellipse"];
  "sha256:45be5efa5c58fe53bd57d6f182026001f4dbab9233cccd02e155f315469b9c1c" [label="/bin/sh -c apk add --update $PACKAGES" shape="box"];
  "sha256:84d1d2a940eef206701839b60ee35a54b217a9f3df1c33f1e31e379cb62f1f4a" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:29befa4e9201847a44bde9c40641f6bbead304fcca97c465fe38b0674d11863f" [label="/bin/sh -c apk --no-cache add ca-certificates openssl     && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub     && apk --no-cache -X http://apkproxy.heroku.com/sgerrand/alpine-pkg-glibc add glibc glibc-bin" shape="box"];
  "sha256:f3a3afe68b2b7babb4cf7c379e44d6f391bbc260ff3b09afaf80612b23940fbf" [label="/bin/sh -c set -x     && apk add gnupg     && wget -O /usr/local/bin/gosu \"$GOSU_BASE/$GOSU_VERSION/gosu-$(apk --print-arch |sed -e 's/x86_64/amd64/')\"     && wget -O /usr/local/bin/gosu.asc \"$GOSU_BASE/$GOSU_VERSION/gosu-$(apk --print-arch |sed -e 's/x86_64/amd64/').asc\"     && export GNUPGHOME=\"$(mktemp -d)\"     && gpg2 --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg2 --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del gnupg" shape="box"];
  "sha256:43a2ac13f8d249d593897d30e792486a8d239688b9a973df0063325335734f2a" [label="mkdir{path=/opt}" shape="note"];
  "sha256:d28428ba6d2efe2527ae5eadb98380d0bd67f8208eae939cc88f84d2f30113c8" [label="/bin/sh -c mkdir -p /opt     && adduser -h /opt/elasticsearch -g elasticsearch -s /bin/bash -D elasticsearch" shape="box"];
  "sha256:048efcefeb54133ce4a2a82d07942add6a8a169922ffa968047d5fce7e94c96e" [label="/bin/sh -c ln -s elasticsearch elasticsearch-$ES_VERSION" shape="box"];
  "sha256:37fe35961401adbb0291735caa717d284a2c96b4509c74d1150c3c07a2c76e5a" [label="/bin/sh -c set -x     && wget -O - \"${ES_BASE}/elasticsearch-${ES_VERSION}.tar.gz\" | tar -xz" shape="box"];
  "sha256:4e614703c3d4807a5548976455ad744d428e5b9e4a8e139df4531ace1f437db9" [label="mkdir{path=/opt/elasticsearch}" shape="note"];
  "sha256:bce0212c954e27a25765dd3b8bc017f7788f5285915124e611895dbbd993212a" [label="/bin/sh -c set -ex     && for path in         ./data         ./logs         ./config         ./config/scripts     ; do         mkdir -p \"$path\";         chown -R elasticsearch:elasticsearch \"$path\";     done" shape="box"];
  "sha256:52f8b7dd4e1806f6e7f54491fcd62ec26d04d7d9a2e06d0b30d08d136f9a7916" [label="local://context" shape="ellipse"];
  "sha256:c2c93978bee0971d834e88088cb60e42639a59e1940b9e24c0c78c41c9aaadfc" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:d1560723b10e507fa29253e7657afc29e02f6ea7f14f4d36488a94e42a955cde" [label="sha256:d1560723b10e507fa29253e7657afc29e02f6ea7f14f4d36488a94e42a955cde" shape="plaintext"];
  "sha256:91f661401b706e0920be4e64a49d0704697613e77b8c05cb6e93924f62dd208c" -> "sha256:45be5efa5c58fe53bd57d6f182026001f4dbab9233cccd02e155f315469b9c1c" [label=""];
  "sha256:45be5efa5c58fe53bd57d6f182026001f4dbab9233cccd02e155f315469b9c1c" -> "sha256:84d1d2a940eef206701839b60ee35a54b217a9f3df1c33f1e31e379cb62f1f4a" [label=""];
  "sha256:84d1d2a940eef206701839b60ee35a54b217a9f3df1c33f1e31e379cb62f1f4a" -> "sha256:29befa4e9201847a44bde9c40641f6bbead304fcca97c465fe38b0674d11863f" [label=""];
  "sha256:29befa4e9201847a44bde9c40641f6bbead304fcca97c465fe38b0674d11863f" -> "sha256:f3a3afe68b2b7babb4cf7c379e44d6f391bbc260ff3b09afaf80612b23940fbf" [label=""];
  "sha256:f3a3afe68b2b7babb4cf7c379e44d6f391bbc260ff3b09afaf80612b23940fbf" -> "sha256:43a2ac13f8d249d593897d30e792486a8d239688b9a973df0063325335734f2a" [label=""];
  "sha256:43a2ac13f8d249d593897d30e792486a8d239688b9a973df0063325335734f2a" -> "sha256:d28428ba6d2efe2527ae5eadb98380d0bd67f8208eae939cc88f84d2f30113c8" [label=""];
  "sha256:d28428ba6d2efe2527ae5eadb98380d0bd67f8208eae939cc88f84d2f30113c8" -> "sha256:048efcefeb54133ce4a2a82d07942add6a8a169922ffa968047d5fce7e94c96e" [label=""];
  "sha256:048efcefeb54133ce4a2a82d07942add6a8a169922ffa968047d5fce7e94c96e" -> "sha256:37fe35961401adbb0291735caa717d284a2c96b4509c74d1150c3c07a2c76e5a" [label=""];
  "sha256:37fe35961401adbb0291735caa717d284a2c96b4509c74d1150c3c07a2c76e5a" -> "sha256:4e614703c3d4807a5548976455ad744d428e5b9e4a8e139df4531ace1f437db9" [label=""];
  "sha256:4e614703c3d4807a5548976455ad744d428e5b9e4a8e139df4531ace1f437db9" -> "sha256:bce0212c954e27a25765dd3b8bc017f7788f5285915124e611895dbbd993212a" [label=""];
  "sha256:bce0212c954e27a25765dd3b8bc017f7788f5285915124e611895dbbd993212a" -> "sha256:c2c93978bee0971d834e88088cb60e42639a59e1940b9e24c0c78c41c9aaadfc" [label=""];
  "sha256:52f8b7dd4e1806f6e7f54491fcd62ec26d04d7d9a2e06d0b30d08d136f9a7916" -> "sha256:c2c93978bee0971d834e88088cb60e42639a59e1940b9e24c0c78c41c9aaadfc" [label=""];
  "sha256:c2c93978bee0971d834e88088cb60e42639a59e1940b9e24c0c78c41c9aaadfc" -> "sha256:d1560723b10e507fa29253e7657afc29e02f6ea7f14f4d36488a94e42a955cde" [label=""];
}

