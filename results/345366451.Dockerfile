[app/sources/345366451.Dockerfile]
digraph {
  "sha256:b02eb076a73bb9e3ad3bf4f5d5af13a66db5158077d6ec3f29dd56c5d7af4a80" [label="docker-image://docker.io/balenalib/imx6ul-var-dart-ubuntu:bionic-run" shape="ellipse"];
  "sha256:1824876e8a39014bf681a42df97061e50a662f374c06a1b704c97268276a1e90" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:254d6693e4c88302e90e3efb2f706a069f27fc6ce330389d2bea956841f94c6d" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:ecd43388357f52a49b171a7a24f285429eb6846ab597593c9f53be42027af54f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6143c964090c54e02b57b3a8106c8374f5fbc5feb3e176d445260395eabdbd26" [label="mkdir{path=/go}" shape="note"];
  "sha256:5a15f2767a6ccf57ce7257a0bb632211d29b02bb996b3f9416ef85d164dcb919" [label="sha256:5a15f2767a6ccf57ce7257a0bb632211d29b02bb996b3f9416ef85d164dcb919" shape="plaintext"];
  "sha256:b02eb076a73bb9e3ad3bf4f5d5af13a66db5158077d6ec3f29dd56c5d7af4a80" -> "sha256:1824876e8a39014bf681a42df97061e50a662f374c06a1b704c97268276a1e90" [label=""];
  "sha256:1824876e8a39014bf681a42df97061e50a662f374c06a1b704c97268276a1e90" -> "sha256:254d6693e4c88302e90e3efb2f706a069f27fc6ce330389d2bea956841f94c6d" [label=""];
  "sha256:254d6693e4c88302e90e3efb2f706a069f27fc6ce330389d2bea956841f94c6d" -> "sha256:ecd43388357f52a49b171a7a24f285429eb6846ab597593c9f53be42027af54f" [label=""];
  "sha256:ecd43388357f52a49b171a7a24f285429eb6846ab597593c9f53be42027af54f" -> "sha256:6143c964090c54e02b57b3a8106c8374f5fbc5feb3e176d445260395eabdbd26" [label=""];
  "sha256:6143c964090c54e02b57b3a8106c8374f5fbc5feb3e176d445260395eabdbd26" -> "sha256:5a15f2767a6ccf57ce7257a0bb632211d29b02bb996b3f9416ef85d164dcb919" [label=""];
}

