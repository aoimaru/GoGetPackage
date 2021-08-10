[app/sources/355269094.Dockerfile]
digraph {
  "sha256:4a9f371d393aace1b1d5e1cd8e8b876744c55668834a1186391d3934bf44aa8b" [label="docker-image://docker.io/scaleway/docker:1.9.0" shape="ellipse"];
  "sha256:54ada4110df3adfa0ee45d5b9338a0dc11a3e143fcdd2d8f05c5f189865d4f09" [label="/bin/sh -c /usr/local/sbin/builder-enter" shape="box"];
  "sha256:055d43454b19d15130edb86582022aa9127677953468b34cd3693359322ef61f" [label="/bin/sh -c apt-get update -qq  && apt-get install -y -q --no-install-recommends        curl gcc ca-certificates libc6-dev git mercurial  && apt-get clean" shape="box"];
  "sha256:2bdb81ca748d182839cc4b57c540186a0dcc3ce977d601d1ec9c5dd761128e2e" [label="/bin/sh -c echo \"Installing Golang 1.4\"  && cd /tmp  && curl -O https://storage.googleapis.com/golang/go1.4.2.src.tar.gz  && echo '460caac03379f746c473814a65223397e9c9a2f6 go1.4.2.src.tar.gz' | sha1sum -c  && tar -C /usr/local -xzf go1.4.2.src.tar.gz  && rm -f go1.4.2.src.tar.gz  && mv /usr/local/go /usr/local/go1.4.2  && cd /usr/local/go1.4.2/src  && ./make.bash  && echo \"Installing Golang 1.5.1 Using go1.4.2\"  && cd /tmp  && curl -O https://storage.googleapis.com/golang/go1.5.1.src.tar.gz  && echo '0df564746d105f4180c2b576a1553ebca9d9a124 go1.5.1.src.tar.gz' | sha1sum -c  && tar -C /usr/local -xzf go1.5.1.src.tar.gz  && rm -f /tmp/go1.5.1.src.tar.gz  && cd /usr/local/go/src  && GOROOT_BOOTSTRAP=/usr/local/go1.4.2 ./make.bash --no-clean  && rm -rf /usr/local/go1.4.2" shape="box"];
  "sha256:a176b3898380bad4a5c7d2265cbc23bb3a8d5bb00a8a10fd3443ddaf03c68831" [label="/bin/sh -c echo \"Configure environment\"  && mkdir -p /go/src /go/bin  && chmod -R 777 /go  && echo export GOROOT=${GOROOT} > /etc/profile.d/golang.sh  && echo export GOPATH=${GOPATH} >> /etc/profile.d/golang.sh  && echo export PATH=\\${PATH}:\\${GOROOT}/bin:\\${GOPATH}/bin >> /etc/profile.d/golang.sh" shape="box"];
  "sha256:a40e8156134ecf03f09e889037a5017fb61a72a569aca0c34fef448d706694db" [label="/bin/sh -c go get github.com/moul/ssh2docker/..." shape="box"];
  "sha256:44622517bd7a9f223138d0fb0884fb3717e0a9d06feb55aa206cb5ea8bad302f" [label="/bin/sh -c echo \"FIXME\"" shape="box"];
  "sha256:6744801f1e639b0cf76e4246f93976ac9b410c4b250d60ba2ed244bb803307cd" [label="/bin/sh -c /usr/local/sbin/builder-leave" shape="box"];
  "sha256:a7e1876e11fd43f8cbafe78d1dcdd67f0a354483cea26552c81eeec56214d4ce" [label="sha256:a7e1876e11fd43f8cbafe78d1dcdd67f0a354483cea26552c81eeec56214d4ce" shape="plaintext"];
  "sha256:4a9f371d393aace1b1d5e1cd8e8b876744c55668834a1186391d3934bf44aa8b" -> "sha256:54ada4110df3adfa0ee45d5b9338a0dc11a3e143fcdd2d8f05c5f189865d4f09" [label=""];
  "sha256:54ada4110df3adfa0ee45d5b9338a0dc11a3e143fcdd2d8f05c5f189865d4f09" -> "sha256:055d43454b19d15130edb86582022aa9127677953468b34cd3693359322ef61f" [label=""];
  "sha256:055d43454b19d15130edb86582022aa9127677953468b34cd3693359322ef61f" -> "sha256:2bdb81ca748d182839cc4b57c540186a0dcc3ce977d601d1ec9c5dd761128e2e" [label=""];
  "sha256:2bdb81ca748d182839cc4b57c540186a0dcc3ce977d601d1ec9c5dd761128e2e" -> "sha256:a176b3898380bad4a5c7d2265cbc23bb3a8d5bb00a8a10fd3443ddaf03c68831" [label=""];
  "sha256:a176b3898380bad4a5c7d2265cbc23bb3a8d5bb00a8a10fd3443ddaf03c68831" -> "sha256:a40e8156134ecf03f09e889037a5017fb61a72a569aca0c34fef448d706694db" [label=""];
  "sha256:a40e8156134ecf03f09e889037a5017fb61a72a569aca0c34fef448d706694db" -> "sha256:44622517bd7a9f223138d0fb0884fb3717e0a9d06feb55aa206cb5ea8bad302f" [label=""];
  "sha256:44622517bd7a9f223138d0fb0884fb3717e0a9d06feb55aa206cb5ea8bad302f" -> "sha256:6744801f1e639b0cf76e4246f93976ac9b410c4b250d60ba2ed244bb803307cd" [label=""];
  "sha256:6744801f1e639b0cf76e4246f93976ac9b410c4b250d60ba2ed244bb803307cd" -> "sha256:a7e1876e11fd43f8cbafe78d1dcdd67f0a354483cea26552c81eeec56214d4ce" [label=""];
}

