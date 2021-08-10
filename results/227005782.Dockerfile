[app/sources/227005782.Dockerfile]
digraph {
  "sha256:e0d271bcd484959ecefab77a805800c3fae51ffbe840cb4daf0881b4a5f6fe8c" [label="docker-image://docker.io/library/golang:1.8.0" shape="ellipse"];
  "sha256:7503f1d339009ffa2140278b6534904cf841f1ddbc3d381f6805ae859020f384" [label="/bin/sh -c apt-get update && apt-get install -y file jq && \trm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:c66cc82fcdebcf5a214f0547161f6650b886d1a6cfe72d50b0ed7a508191a3f7" [label="/bin/sh -c go clean -i net && \tgo install -tags netgo std && \tgo install -race -tags netgo std" shape="box"];
  "sha256:d979a3ddf292e1c87d767b1247a677d5a1331a93a82205c9dc3bfd4aa7e30b4a" [label="/bin/sh -c curl -fsSLo shfmt https://github.com/mvdan/sh/releases/download/v1.3.0/shfmt_v1.3.0_linux_amd64 && \techo \"b1925c2c405458811f0c227266402cf1868b4de529f114722c2e3a5af4ac7bb2  shfmt\" | sha256sum -c && \tchmod +x shfmt && \tmv shfmt /usr/bin" shape="box"];
  "sha256:c09d1825c3fb80907bb8de892d8fa8a9e2b0de949351254667b21d87d6795ff1" [label="/bin/sh -c go get -tags netgo \t\tgithub.com/fzipp/gocyclo \t\tgithub.com/golang/lint/golint \t\tgithub.com/kisielk/errcheck \t\tgithub.com/client9/misspell/cmd/misspell \t\tgithub.com/jteeuwen/go-bindata/go-bindata && \trm -rf /go/pkg /go/src" shape="box"];
  "sha256:7d1faaca77da3d0d5e7d3733c72c01df18b85accd1d5222bf248829b7e8635e0" [label="local://context" shape="ellipse"];
  "sha256:2c62b3b57c5f8c6fcd9cdad8bf050feb0ff6dbc332acf2c431450744de75a70e" [label="copy{src=/build.sh, dest=/}" shape="note"];
  "sha256:8871cacece50b8ddc58386ebcda28b1a4e1ec0d5d385d84369cc4c41b0a70f90" [label="sha256:8871cacece50b8ddc58386ebcda28b1a4e1ec0d5d385d84369cc4c41b0a70f90" shape="plaintext"];
  "sha256:e0d271bcd484959ecefab77a805800c3fae51ffbe840cb4daf0881b4a5f6fe8c" -> "sha256:7503f1d339009ffa2140278b6534904cf841f1ddbc3d381f6805ae859020f384" [label=""];
  "sha256:7503f1d339009ffa2140278b6534904cf841f1ddbc3d381f6805ae859020f384" -> "sha256:c66cc82fcdebcf5a214f0547161f6650b886d1a6cfe72d50b0ed7a508191a3f7" [label=""];
  "sha256:c66cc82fcdebcf5a214f0547161f6650b886d1a6cfe72d50b0ed7a508191a3f7" -> "sha256:d979a3ddf292e1c87d767b1247a677d5a1331a93a82205c9dc3bfd4aa7e30b4a" [label=""];
  "sha256:d979a3ddf292e1c87d767b1247a677d5a1331a93a82205c9dc3bfd4aa7e30b4a" -> "sha256:c09d1825c3fb80907bb8de892d8fa8a9e2b0de949351254667b21d87d6795ff1" [label=""];
  "sha256:c09d1825c3fb80907bb8de892d8fa8a9e2b0de949351254667b21d87d6795ff1" -> "sha256:2c62b3b57c5f8c6fcd9cdad8bf050feb0ff6dbc332acf2c431450744de75a70e" [label=""];
  "sha256:7d1faaca77da3d0d5e7d3733c72c01df18b85accd1d5222bf248829b7e8635e0" -> "sha256:2c62b3b57c5f8c6fcd9cdad8bf050feb0ff6dbc332acf2c431450744de75a70e" [label=""];
  "sha256:2c62b3b57c5f8c6fcd9cdad8bf050feb0ff6dbc332acf2c431450744de75a70e" -> "sha256:8871cacece50b8ddc58386ebcda28b1a4e1ec0d5d385d84369cc4c41b0a70f90" [label=""];
}

