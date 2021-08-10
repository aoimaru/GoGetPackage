[app/sources/316609532.Dockerfile]
digraph {
  "sha256:bbc1c948c7d4266c4acd7419c07cbc669e9c23aeee08e3d73c4ca29985f0cf2c" [label="docker-image://docker.io/library/golang:1.12.0" shape="ellipse"];
  "sha256:911b6b40b366e042e6498ac9037e990f6a4a5f8df50682ff5cac2f24a6ecee72" [label="/bin/sh -c for platform in ${KUBE_CROSSPLATFORMS}; do GOOS=${platform%/*} GOARCH=${platform##*/} go install std; done     && go clean -cache" shape="box"];
  "sha256:ea5337920608a16fe6342c00417faf02e1871f7f241c99477634a9925e2df25a" [label="/bin/sh -c apt-get update   && apt-get install -y rsync jq apt-utils file patch unzip   && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d7de9f7c943965cd44cb87cf26756c91ad276d746b97bba1a47e290c4ba96553" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu xenial main universe\" > /etc/apt/sources.list.d/cgocrosscompiling.list   && apt-key adv --no-tty --keyserver keyserver.ubuntu.com --recv-keys 40976EAF437D05B5 3B4FE6ACC0B21F32   && apt-get update   && apt-get install -y build-essential   && for platform in ${KUBE_DYNAMIC_CROSSPLATFORMS}; do apt-get install -y crossbuild-essential-${platform}; done   && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3a52db78a02ba9a6d16d677f7c82fb65edc280b62726dd64a418e3bc75dda029" [label="/bin/sh -c PROTOBUF_VERSION=3.0.2; ZIPNAME=\"protoc-${PROTOBUF_VERSION}-linux-x86_64.zip\";   mkdir /tmp/protoc && cd /tmp/protoc   && wget \"https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOBUF_VERSION}/${ZIPNAME}\"   && unzip \"${ZIPNAME}\"   && chmod -R +rX /tmp/protoc   && cp -pr bin /usr/local   && cp -pr include /usr/local   && rm -rf /tmp/protoc   && protoc --version" shape="box"];
  "sha256:c3ef2a9d74ad92fffcee0451db4331e4a31d24acccca72c051105e8f1e7048fa" [label="/bin/sh -c mkdir $TMPDIR   && chmod a+rwx $TMPDIR   && chmod o+t $TMPDIR" shape="box"];
  "sha256:03045b0658dc11114c3862c4060129760ae2fe6f050343fe3c520f61b5bfc3a7" [label="/bin/sh -c go get golang.org/x/tools/cmd/cover            golang.org/x/tools/cmd/goimports     && go clean -cache" shape="box"];
  "sha256:12f758733542f7850840700a8c5c476e5b86d2bfaeeaf9907f664a97104354ad" [label="/bin/sh -c export ETCD_VERSION=v3.2.24;   mkdir -p /usr/local/src/etcd   && cd /usr/local/src/etcd   && curl -fsSL https://github.com/coreos/etcd/releases/download/${ETCD_VERSION}/etcd-${ETCD_VERSION}-linux-amd64.tar.gz | tar -xz   && ln -s ../src/etcd/etcd-${ETCD_VERSION}-linux-amd64/etcd /usr/local/bin/" shape="box"];
  "sha256:1fd7bfc37782d9d6a6094350ba4f8acee98bf530b33b5150e67643c768e08568" [label="sha256:1fd7bfc37782d9d6a6094350ba4f8acee98bf530b33b5150e67643c768e08568" shape="plaintext"];
  "sha256:bbc1c948c7d4266c4acd7419c07cbc669e9c23aeee08e3d73c4ca29985f0cf2c" -> "sha256:911b6b40b366e042e6498ac9037e990f6a4a5f8df50682ff5cac2f24a6ecee72" [label=""];
  "sha256:911b6b40b366e042e6498ac9037e990f6a4a5f8df50682ff5cac2f24a6ecee72" -> "sha256:ea5337920608a16fe6342c00417faf02e1871f7f241c99477634a9925e2df25a" [label=""];
  "sha256:ea5337920608a16fe6342c00417faf02e1871f7f241c99477634a9925e2df25a" -> "sha256:d7de9f7c943965cd44cb87cf26756c91ad276d746b97bba1a47e290c4ba96553" [label=""];
  "sha256:d7de9f7c943965cd44cb87cf26756c91ad276d746b97bba1a47e290c4ba96553" -> "sha256:3a52db78a02ba9a6d16d677f7c82fb65edc280b62726dd64a418e3bc75dda029" [label=""];
  "sha256:3a52db78a02ba9a6d16d677f7c82fb65edc280b62726dd64a418e3bc75dda029" -> "sha256:c3ef2a9d74ad92fffcee0451db4331e4a31d24acccca72c051105e8f1e7048fa" [label=""];
  "sha256:c3ef2a9d74ad92fffcee0451db4331e4a31d24acccca72c051105e8f1e7048fa" -> "sha256:03045b0658dc11114c3862c4060129760ae2fe6f050343fe3c520f61b5bfc3a7" [label=""];
  "sha256:03045b0658dc11114c3862c4060129760ae2fe6f050343fe3c520f61b5bfc3a7" -> "sha256:12f758733542f7850840700a8c5c476e5b86d2bfaeeaf9907f664a97104354ad" [label=""];
  "sha256:12f758733542f7850840700a8c5c476e5b86d2bfaeeaf9907f664a97104354ad" -> "sha256:1fd7bfc37782d9d6a6094350ba4f8acee98bf530b33b5150e67643c768e08568" [label=""];
}

