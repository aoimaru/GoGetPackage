[app/sources/193505502.Dockerfile]
digraph {
  "sha256:3f0d5bbb54abe4ac9dfb3186933f3617f19f10e7205aa562caa326fdbd25713d" [label="docker-image://docker.io/library/golang:1.11.1-stretch" shape="ellipse"];
  "sha256:554936b564f0507aa36f1d6aafc142210f175b6c31956d2db0f5033782731569" [label="/bin/sh -c apt-get update &&     apt-get install -y       curl       file       git       jq       libprotobuf-dev       make       protobuf-compiler       python-pip       python-requests       python-yaml       shellcheck       unzip &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:de01d0dbe27dd817152ddc8d984261e9f694842625075decb06e55651a790108" [label="/bin/sh -c pip install attrs pyhcl yapf==0.16.2 flake8==3.3.0" shape="box"];
  "sha256:c9f7a044531dbc8ebd7e1cb879d1be761aeeac8d5f1dd0f50f41cf072d6a0353" [label="/bin/sh -c curl -fsSLo shfmt https://github.com/mvdan/sh/releases/download/v1.3.0/shfmt_v1.3.0_linux_amd64 && \techo \"b1925c2c405458811f0c227266402cf1868b4de529f114722c2e3a5af4ac7bb2  shfmt\" | sha256sum -c && \tchmod +x shfmt && \tmv shfmt /usr/bin" shape="box"];
  "sha256:52e38fea6d98be53ae6bc46f34c8b25e5173a78e655c1cc26daa2cd09b8a0df4" [label="/bin/sh -c go clean -i net && \tgo install -tags netgo std && \tgo install -race -tags netgo std" shape="box"];
  "sha256:ac8921714452721fb69f4c1a6ecbf48f8e2500141c6fa770dec4608b6ef00aa9" [label="/bin/sh -c go get -tags netgo \t\tgithub.com/FiloSottile/gvt \t\tgithub.com/client9/misspell/cmd/misspell \t\tgithub.com/fatih/hclfmt \t\tgithub.com/fzipp/gocyclo \t\tgithub.com/gogo/protobuf/gogoproto \t\tgithub.com/gogo/protobuf/protoc-gen-gogoslick \t\tgithub.com/golang/dep/... \t\tgolang.org/x/lint/golint \t\tgithub.com/golang/protobuf/protoc-gen-go \t\tgithub.com/kisielk/errcheck \t\tgithub.com/mjibson/esc \t\tgithub.com/prometheus/prometheus/cmd/promtool && \t\trm -rf /go/pkg /go/src" shape="box"];
  "sha256:d27da6833162a75b1903af498709c5464a015364d3a5b3ebbc02ac68d5daa126" [label="/bin/sh -c mkdir protoc && \tcd protoc && \tcurl -O -L https://github.com/google/protobuf/releases/download/v3.1.0/protoc-3.1.0-linux-x86_64.zip && \tunzip protoc-3.1.0-linux-x86_64.zip && \tcp bin/protoc /usr/bin/ && \tchmod o+x /usr/bin/protoc && \tcd .. && \trm -rf protoc" shape="box"];
  "sha256:db9001b28a5b5b3652fc1488ce69116aacf058cf705de2e1bce9be08c21cfb61" [label="/bin/sh -c mkdir -p /var/run/secrets/kubernetes.io/serviceaccount && \t\ttouch /var/run/secrets/kubernetes.io/serviceaccount/token" shape="box"];
  "sha256:13b66ef72b5b67261f861cdc72e5de6290987d4ecb44d8edd25f6244d078bc24" [label="local://context" shape="ellipse"];
  "sha256:5c674f2be7e55e6c4aa6530a1c47bdf85451f258551e59fb94f3c17d59ff461c" [label="copy{src=/build.sh, dest=/}" shape="note"];
  "sha256:018a4f9268163c114e9034f2bc752721b202749420fc9279c1e750eab695e732" [label="sha256:018a4f9268163c114e9034f2bc752721b202749420fc9279c1e750eab695e732" shape="plaintext"];
  "sha256:3f0d5bbb54abe4ac9dfb3186933f3617f19f10e7205aa562caa326fdbd25713d" -> "sha256:554936b564f0507aa36f1d6aafc142210f175b6c31956d2db0f5033782731569" [label=""];
  "sha256:554936b564f0507aa36f1d6aafc142210f175b6c31956d2db0f5033782731569" -> "sha256:de01d0dbe27dd817152ddc8d984261e9f694842625075decb06e55651a790108" [label=""];
  "sha256:de01d0dbe27dd817152ddc8d984261e9f694842625075decb06e55651a790108" -> "sha256:c9f7a044531dbc8ebd7e1cb879d1be761aeeac8d5f1dd0f50f41cf072d6a0353" [label=""];
  "sha256:c9f7a044531dbc8ebd7e1cb879d1be761aeeac8d5f1dd0f50f41cf072d6a0353" -> "sha256:52e38fea6d98be53ae6bc46f34c8b25e5173a78e655c1cc26daa2cd09b8a0df4" [label=""];
  "sha256:52e38fea6d98be53ae6bc46f34c8b25e5173a78e655c1cc26daa2cd09b8a0df4" -> "sha256:ac8921714452721fb69f4c1a6ecbf48f8e2500141c6fa770dec4608b6ef00aa9" [label=""];
  "sha256:ac8921714452721fb69f4c1a6ecbf48f8e2500141c6fa770dec4608b6ef00aa9" -> "sha256:d27da6833162a75b1903af498709c5464a015364d3a5b3ebbc02ac68d5daa126" [label=""];
  "sha256:d27da6833162a75b1903af498709c5464a015364d3a5b3ebbc02ac68d5daa126" -> "sha256:db9001b28a5b5b3652fc1488ce69116aacf058cf705de2e1bce9be08c21cfb61" [label=""];
  "sha256:db9001b28a5b5b3652fc1488ce69116aacf058cf705de2e1bce9be08c21cfb61" -> "sha256:5c674f2be7e55e6c4aa6530a1c47bdf85451f258551e59fb94f3c17d59ff461c" [label=""];
  "sha256:13b66ef72b5b67261f861cdc72e5de6290987d4ecb44d8edd25f6244d078bc24" -> "sha256:5c674f2be7e55e6c4aa6530a1c47bdf85451f258551e59fb94f3c17d59ff461c" [label=""];
  "sha256:5c674f2be7e55e6c4aa6530a1c47bdf85451f258551e59fb94f3c17d59ff461c" -> "sha256:018a4f9268163c114e9034f2bc752721b202749420fc9279c1e750eab695e732" [label=""];
}

