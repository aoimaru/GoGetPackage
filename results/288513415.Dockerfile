[app/sources/288513415.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:1373ee7168b5124e3cbf59a4109d8d8f3b56e4d200fcc4c91d3b5808954f9e8b" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion  build-essential curl ca-certificates debhelper dh-apparmor  git libapparmor-dev  libltdl-dev  libsqlite3-dev pkg-config --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:49eb2ebeb54842e286c3a33cf50c9284a067428e95247622dd9afcc11d6c53fc" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:828a9922da180c8a29de16eeb12b72537b045608eed00b3939ab3a157240a75c" [label="sha256:828a9922da180c8a29de16eeb12b72537b045608eed00b3939ab3a157240a75c" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:1373ee7168b5124e3cbf59a4109d8d8f3b56e4d200fcc4c91d3b5808954f9e8b" [label=""];
  "sha256:1373ee7168b5124e3cbf59a4109d8d8f3b56e4d200fcc4c91d3b5808954f9e8b" -> "sha256:49eb2ebeb54842e286c3a33cf50c9284a067428e95247622dd9afcc11d6c53fc" [label=""];
  "sha256:49eb2ebeb54842e286c3a33cf50c9284a067428e95247622dd9afcc11d6c53fc" -> "sha256:828a9922da180c8a29de16eeb12b72537b045608eed00b3939ab3a157240a75c" [label=""];
}

