[app/sources/308152272.Dockerfile]
digraph {
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" [label="docker-image://docker.io/s390x/ubuntu:xenial" shape="ellipse"];
  "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" [label="/bin/sh -c apt-get update && apt-get install -y         curl         gcc         git         make         tar" shape="box"];
  "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\"         | tar -xzC /usr/local" shape="box"];
  "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:82a64b01792e30d3adbfb9dbaa71c74cfcf83f91e625890d18b2592f7e44e77e" [label="local://context" shape="ellipse"];
  "sha256:72051a75fa1d3791c387ed3411418a4edd885d258d2ec45a2b0c9bf4dc8aa271" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:4580bf543108de8f2df4ffe6f1eaaf59e8abc96e82caa22c1e988def551a733f" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:c2881002bbc02acbc4bcc04abedefc60653608066e45da90f59d14baa554d552" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:5e2fe9817559e03f0e7d09c168da44dc81b03ea16089274d51a804f2adb6f6d7" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:2a8d39448b8825ce0b118c67929466001a038a6818cd9f3f0d4963f9143e5492" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:435bb09dabbb318d788df13b6a86c25665e62d48e1b98352e6d4e0cbec406f5e" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:2a41c5b386bc373a0d88cbd30a5973e5a02d740c3d461c44521724e6d9084fbd" [label="sha256:2a41c5b386bc373a0d88cbd30a5973e5a02d740c3d461c44521724e6d9084fbd" shape="plaintext"];
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" -> "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" [label=""];
  "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" -> "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" [label=""];
  "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" -> "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" [label=""];
  "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" -> "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" [label=""];
  "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" -> "sha256:72051a75fa1d3791c387ed3411418a4edd885d258d2ec45a2b0c9bf4dc8aa271" [label=""];
  "sha256:82a64b01792e30d3adbfb9dbaa71c74cfcf83f91e625890d18b2592f7e44e77e" -> "sha256:72051a75fa1d3791c387ed3411418a4edd885d258d2ec45a2b0c9bf4dc8aa271" [label=""];
  "sha256:72051a75fa1d3791c387ed3411418a4edd885d258d2ec45a2b0c9bf4dc8aa271" -> "sha256:4580bf543108de8f2df4ffe6f1eaaf59e8abc96e82caa22c1e988def551a733f" [label=""];
  "sha256:82a64b01792e30d3adbfb9dbaa71c74cfcf83f91e625890d18b2592f7e44e77e" -> "sha256:4580bf543108de8f2df4ffe6f1eaaf59e8abc96e82caa22c1e988def551a733f" [label=""];
  "sha256:4580bf543108de8f2df4ffe6f1eaaf59e8abc96e82caa22c1e988def551a733f" -> "sha256:c2881002bbc02acbc4bcc04abedefc60653608066e45da90f59d14baa554d552" [label=""];
  "sha256:c2881002bbc02acbc4bcc04abedefc60653608066e45da90f59d14baa554d552" -> "sha256:5e2fe9817559e03f0e7d09c168da44dc81b03ea16089274d51a804f2adb6f6d7" [label=""];
  "sha256:5e2fe9817559e03f0e7d09c168da44dc81b03ea16089274d51a804f2adb6f6d7" -> "sha256:2a8d39448b8825ce0b118c67929466001a038a6818cd9f3f0d4963f9143e5492" [label=""];
  "sha256:2a8d39448b8825ce0b118c67929466001a038a6818cd9f3f0d4963f9143e5492" -> "sha256:435bb09dabbb318d788df13b6a86c25665e62d48e1b98352e6d4e0cbec406f5e" [label=""];
  "sha256:435bb09dabbb318d788df13b6a86c25665e62d48e1b98352e6d4e0cbec406f5e" -> "sha256:2a41c5b386bc373a0d88cbd30a5973e5a02d740c3d461c44521724e6d9084fbd" [label=""];
}

