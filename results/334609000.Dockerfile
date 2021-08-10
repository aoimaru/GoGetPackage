[app/sources/334609000.Dockerfile]
digraph {
  "sha256:de9a5546922230dce32e2703a551465820151355640e4a0d14e66070320a951c" [label="docker-image://docker.io/library/golang:1.9.2" shape="ellipse"];
  "sha256:cc7fe370aa11a43f13dc04f313709ec5ec795c62682d25fa276b81a1946751b9" [label="/bin/sh -c for platform in ${KUBE_CROSSPLATFORMS}; do GOOS=${platform%/*} GOARCH=${platform##*/} go install std; done" shape="box"];
  "sha256:9b46edc8415a7a93585eab5d0064afddac0c1dd4b2d4b11cfa27e804de0d0e27" [label="/bin/sh -c apt-get update   && apt-get install -y g++ rsync jq apt-utils file patch   && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e09f09ecbe008c8245ea38398668f3de4fe962d29eb3845778893a5297e46f83" [label="/bin/sh -c mkdir -p /usr/local/src/protobuf   && cd /usr/local/src/protobuf   && curl -sSL https://github.com/google/protobuf/releases/download/v3.0.0-beta-2/protobuf-cpp-3.0.0-beta-2.tar.gz | tar -xzv   && cd protobuf-3.0.0-beta-2   && ./configure   && make install   && ldconfig   && cd ..   && rm -rf protobuf-3.0.0-beta-2   && protoc --version" shape="box"];
  "sha256:d04975c7124e7a3fd51ea377986a83939ac18548c5937ad5c158917f7a4b05ee" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu xenial main universe\" > /etc/apt/sources.list.d/cgocrosscompiling.list   && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 40976EAF437D05B5 3B4FE6ACC0B21F32   && apt-get update   && apt-get install -y build-essential   && for platform in ${KUBE_DYNAMIC_CROSSPLATFORMS}; do apt-get install -y crossbuild-essential-${platform}; done   && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:74957010d24f7989383517d0cff96eb6df921e5a663be468669de8fda85b0cb0" [label="/bin/sh -c mkdir $TMPDIR   && chmod a+rwx $TMPDIR   && chmod o+t $TMPDIR" shape="box"];
  "sha256:0818d739b00a6468d5648b38cb90b37bf2f7d7312e807171e21f4ecb06a63744" [label="/bin/sh -c go get golang.org/x/tools/cmd/cover             golang.org/x/tools/cmd/goimports" shape="box"];
  "sha256:0111518436f6753b8170f9435de42e57e82d4181b38c7128cba4842a16c4c10d" [label="/bin/sh -c export ETCD_VERSION=v3.1.11;   mkdir -p /usr/local/src/etcd   && cd /usr/local/src/etcd   && curl -fsSL https://github.com/coreos/etcd/releases/download/${ETCD_VERSION}/etcd-${ETCD_VERSION}-linux-amd64.tar.gz | tar -xz   && ln -s ../src/etcd/etcd-${ETCD_VERSION}-linux-amd64/etcd /usr/local/bin/" shape="box"];
  "sha256:c495175abb4013065d7c2f3efd6d9e7e834b48d28f07f1732527900fea83353e" [label="sha256:c495175abb4013065d7c2f3efd6d9e7e834b48d28f07f1732527900fea83353e" shape="plaintext"];
  "sha256:de9a5546922230dce32e2703a551465820151355640e4a0d14e66070320a951c" -> "sha256:cc7fe370aa11a43f13dc04f313709ec5ec795c62682d25fa276b81a1946751b9" [label=""];
  "sha256:cc7fe370aa11a43f13dc04f313709ec5ec795c62682d25fa276b81a1946751b9" -> "sha256:9b46edc8415a7a93585eab5d0064afddac0c1dd4b2d4b11cfa27e804de0d0e27" [label=""];
  "sha256:9b46edc8415a7a93585eab5d0064afddac0c1dd4b2d4b11cfa27e804de0d0e27" -> "sha256:e09f09ecbe008c8245ea38398668f3de4fe962d29eb3845778893a5297e46f83" [label=""];
  "sha256:e09f09ecbe008c8245ea38398668f3de4fe962d29eb3845778893a5297e46f83" -> "sha256:d04975c7124e7a3fd51ea377986a83939ac18548c5937ad5c158917f7a4b05ee" [label=""];
  "sha256:d04975c7124e7a3fd51ea377986a83939ac18548c5937ad5c158917f7a4b05ee" -> "sha256:74957010d24f7989383517d0cff96eb6df921e5a663be468669de8fda85b0cb0" [label=""];
  "sha256:74957010d24f7989383517d0cff96eb6df921e5a663be468669de8fda85b0cb0" -> "sha256:0818d739b00a6468d5648b38cb90b37bf2f7d7312e807171e21f4ecb06a63744" [label=""];
  "sha256:0818d739b00a6468d5648b38cb90b37bf2f7d7312e807171e21f4ecb06a63744" -> "sha256:0111518436f6753b8170f9435de42e57e82d4181b38c7128cba4842a16c4c10d" [label=""];
  "sha256:0111518436f6753b8170f9435de42e57e82d4181b38c7128cba4842a16c4c10d" -> "sha256:c495175abb4013065d7c2f3efd6d9e7e834b48d28f07f1732527900fea83353e" [label=""];
}

