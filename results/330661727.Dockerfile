[app/sources/330661727.Dockerfile]
digraph {
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" [label="docker-image://docker.io/s390x/ubuntu:xenial" shape="ellipse"];
  "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" [label="/bin/sh -c apt-get update && apt-get install -y         curl         gcc         git         make         tar" shape="box"];
  "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\"         | tar -xzC /usr/local" shape="box"];
  "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:67c3fecba13af04fc0c62d77d164f5616becdfd2b3f64e887cb7fd3f5a1ab09b" [label="local://context" shape="ellipse"];
  "sha256:1d60f431d01ef667aae0ba2a7c57e5939977ee9ce370ca7fa512876155afea46" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:015b79006993f2c588083ebc7ffaa9a91ab229e950e9e60d3296952107599385" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:859781311eba082b32f7fb68abc85db6c6e04d7b35fd89e60c4145d8ea506360" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:1a6d074ab6cde7dffd7d756bdf7d73b65ae119c960a38ef829d006876ccb3854" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:09af039c5fc13fd4e57fff7adc1a8a080f033c729a6e5bea5d5de58eb9fc8e03" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:d34dff773d30a4c7e33e1b8a223e3b60382a9b1ca2137dea0a3ead4e70d672af" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:15b9aa969ddb64ad6c28a3a3d4299083edb43d279ea3a9f686e39df84f5b8149" [label="sha256:15b9aa969ddb64ad6c28a3a3d4299083edb43d279ea3a9f686e39df84f5b8149" shape="plaintext"];
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" -> "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" [label=""];
  "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" -> "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" [label=""];
  "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" -> "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" [label=""];
  "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" -> "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" [label=""];
  "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" -> "sha256:1d60f431d01ef667aae0ba2a7c57e5939977ee9ce370ca7fa512876155afea46" [label=""];
  "sha256:67c3fecba13af04fc0c62d77d164f5616becdfd2b3f64e887cb7fd3f5a1ab09b" -> "sha256:1d60f431d01ef667aae0ba2a7c57e5939977ee9ce370ca7fa512876155afea46" [label=""];
  "sha256:1d60f431d01ef667aae0ba2a7c57e5939977ee9ce370ca7fa512876155afea46" -> "sha256:015b79006993f2c588083ebc7ffaa9a91ab229e950e9e60d3296952107599385" [label=""];
  "sha256:67c3fecba13af04fc0c62d77d164f5616becdfd2b3f64e887cb7fd3f5a1ab09b" -> "sha256:015b79006993f2c588083ebc7ffaa9a91ab229e950e9e60d3296952107599385" [label=""];
  "sha256:015b79006993f2c588083ebc7ffaa9a91ab229e950e9e60d3296952107599385" -> "sha256:859781311eba082b32f7fb68abc85db6c6e04d7b35fd89e60c4145d8ea506360" [label=""];
  "sha256:859781311eba082b32f7fb68abc85db6c6e04d7b35fd89e60c4145d8ea506360" -> "sha256:1a6d074ab6cde7dffd7d756bdf7d73b65ae119c960a38ef829d006876ccb3854" [label=""];
  "sha256:1a6d074ab6cde7dffd7d756bdf7d73b65ae119c960a38ef829d006876ccb3854" -> "sha256:09af039c5fc13fd4e57fff7adc1a8a080f033c729a6e5bea5d5de58eb9fc8e03" [label=""];
  "sha256:09af039c5fc13fd4e57fff7adc1a8a080f033c729a6e5bea5d5de58eb9fc8e03" -> "sha256:d34dff773d30a4c7e33e1b8a223e3b60382a9b1ca2137dea0a3ead4e70d672af" [label=""];
  "sha256:d34dff773d30a4c7e33e1b8a223e3b60382a9b1ca2137dea0a3ead4e70d672af" -> "sha256:15b9aa969ddb64ad6c28a3a3d4299083edb43d279ea3a9f686e39df84f5b8149" [label=""];
}

