[app/sources/345366092.Dockerfile]
digraph {
  "sha256:b27330ba3f0530c52b9f73a51b1edd42e9ce1339decaf0ea991dec8163f38c63" [label="docker-image://docker.io/balenalib/generic-armv7ahf-ubuntu:bionic-build" shape="ellipse"];
  "sha256:5d802efedb98aa2f47d861983c78dac517299f5913691cd0e36afbd466142b97" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:95f70240636cf8a3cc061ff79f0e9982a7a70ee25400ff7dd1af52730ba80281" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3b77d986442eefc7587507780a27d42e7d342392a69204fa2ba2f4d8929a14ef" [label="mkdir{path=/go}" shape="note"];
  "sha256:c596285bc526d5bf36f23e7197affc7ed2adf47c279db15b7dc74443f9d89b3c" [label="sha256:c596285bc526d5bf36f23e7197affc7ed2adf47c279db15b7dc74443f9d89b3c" shape="plaintext"];
  "sha256:b27330ba3f0530c52b9f73a51b1edd42e9ce1339decaf0ea991dec8163f38c63" -> "sha256:5d802efedb98aa2f47d861983c78dac517299f5913691cd0e36afbd466142b97" [label=""];
  "sha256:5d802efedb98aa2f47d861983c78dac517299f5913691cd0e36afbd466142b97" -> "sha256:95f70240636cf8a3cc061ff79f0e9982a7a70ee25400ff7dd1af52730ba80281" [label=""];
  "sha256:95f70240636cf8a3cc061ff79f0e9982a7a70ee25400ff7dd1af52730ba80281" -> "sha256:3b77d986442eefc7587507780a27d42e7d342392a69204fa2ba2f4d8929a14ef" [label=""];
  "sha256:3b77d986442eefc7587507780a27d42e7d342392a69204fa2ba2f4d8929a14ef" -> "sha256:c596285bc526d5bf36f23e7197affc7ed2adf47c279db15b7dc74443f9d89b3c" [label=""];
}

