[app/sources/345361716.Dockerfile]
digraph {
  "sha256:5e3db2688fd42c37cf7becc1b9563e797b75af96c2241a9beb9fc9473c0293a0" [label="docker-image://docker.io/balenalib/zc702-zynq7-alpine:3.9-build" shape="ellipse"];
  "sha256:068a4f899a6081f932d6d36230cbfec2da6c73df48debd7f5317307808acc566" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:7d9d34ed1e39c6e9fee79663bc6383458b05b1aacaf367cea68f4c6aa388a141" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:5041b8d02f874e437c403dc28170c4caa156a015b4a10a8809e9579c43d8908d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c76bd8e169bc07ece6b929430a61847cb6c1539674fac5791673d7bd98a65da7" [label="mkdir{path=/go}" shape="note"];
  "sha256:0a2ad0096a867f710e94b3685a492af749446729b9d422f5e9b415e9b809663e" [label="sha256:0a2ad0096a867f710e94b3685a492af749446729b9d422f5e9b415e9b809663e" shape="plaintext"];
  "sha256:5e3db2688fd42c37cf7becc1b9563e797b75af96c2241a9beb9fc9473c0293a0" -> "sha256:068a4f899a6081f932d6d36230cbfec2da6c73df48debd7f5317307808acc566" [label=""];
  "sha256:068a4f899a6081f932d6d36230cbfec2da6c73df48debd7f5317307808acc566" -> "sha256:7d9d34ed1e39c6e9fee79663bc6383458b05b1aacaf367cea68f4c6aa388a141" [label=""];
  "sha256:7d9d34ed1e39c6e9fee79663bc6383458b05b1aacaf367cea68f4c6aa388a141" -> "sha256:5041b8d02f874e437c403dc28170c4caa156a015b4a10a8809e9579c43d8908d" [label=""];
  "sha256:5041b8d02f874e437c403dc28170c4caa156a015b4a10a8809e9579c43d8908d" -> "sha256:c76bd8e169bc07ece6b929430a61847cb6c1539674fac5791673d7bd98a65da7" [label=""];
  "sha256:c76bd8e169bc07ece6b929430a61847cb6c1539674fac5791673d7bd98a65da7" -> "sha256:0a2ad0096a867f710e94b3685a492af749446729b9d422f5e9b415e9b809663e" [label=""];
}

