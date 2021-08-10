[app/sources/345357770.Dockerfile]
digraph {
  "sha256:a8243003fa09eeb42001952f74e97b6a3157664fea85abefc653fa69219347bd" [label="docker-image://docker.io/balenalib/qemux86-64-debian:stretch-run" shape="ellipse"];
  "sha256:0a9e79d836b79e03d543a7650464b4097b4b89744527f4a0bb19d77818447ca0" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:051c4c8c18bce7d478bab1224c739bafaffe8e68c79a75527231ae3daed16bb6" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:ef024fead9fb17999cf712bbd28be5f5665e88544f9c35db4f0e4e58fe416e31" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:dfffe02e22779fe37dbbae5b0a15db38e3ed488fd82bd819e35a367a0e307828" [label="mkdir{path=/go}" shape="note"];
  "sha256:ede27d1770857486739b148344ed0937a02f13aa91c3e71174175bf8529ab7c4" [label="sha256:ede27d1770857486739b148344ed0937a02f13aa91c3e71174175bf8529ab7c4" shape="plaintext"];
  "sha256:a8243003fa09eeb42001952f74e97b6a3157664fea85abefc653fa69219347bd" -> "sha256:0a9e79d836b79e03d543a7650464b4097b4b89744527f4a0bb19d77818447ca0" [label=""];
  "sha256:0a9e79d836b79e03d543a7650464b4097b4b89744527f4a0bb19d77818447ca0" -> "sha256:051c4c8c18bce7d478bab1224c739bafaffe8e68c79a75527231ae3daed16bb6" [label=""];
  "sha256:051c4c8c18bce7d478bab1224c739bafaffe8e68c79a75527231ae3daed16bb6" -> "sha256:ef024fead9fb17999cf712bbd28be5f5665e88544f9c35db4f0e4e58fe416e31" [label=""];
  "sha256:ef024fead9fb17999cf712bbd28be5f5665e88544f9c35db4f0e4e58fe416e31" -> "sha256:dfffe02e22779fe37dbbae5b0a15db38e3ed488fd82bd819e35a367a0e307828" [label=""];
  "sha256:dfffe02e22779fe37dbbae5b0a15db38e3ed488fd82bd819e35a367a0e307828" -> "sha256:ede27d1770857486739b148344ed0937a02f13aa91c3e71174175bf8529ab7c4" [label=""];
}

