[app/sources/345371179.Dockerfile]
digraph {
  "sha256:9798de2fd328b634ebc35581b2be403caa1ff7d19569c28c1998748b5cadb6ac" [label="docker-image://docker.io/balenalib/blackboard-tx2-alpine:3.5-run" shape="ellipse"];
  "sha256:35a80d553271d7a267d684c128e0a1abad2760b791760b76c27e92cd23c51919" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:acc41f6f4c0ce237bba942e64621716e8fb079744c8b2a2a2d611861078d40ff" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:e6a289453ed1ae07141f4087ebb85d555453580c5a816a66eda562d511899194" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:8f9c096cbac3f615ff4fa096e4509719f16e22d54831c9081eab5f5e16f43647" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:040662b6f0e1afcc951ab437eb11422b765e4c557fad7e0d688e97180331923e" [label="mkdir{path=/go}" shape="note"];
  "sha256:8d513014479498ccf6630c1acafc3f7517ce2654862f00bc95f62f325333c755" [label="sha256:8d513014479498ccf6630c1acafc3f7517ce2654862f00bc95f62f325333c755" shape="plaintext"];
  "sha256:9798de2fd328b634ebc35581b2be403caa1ff7d19569c28c1998748b5cadb6ac" -> "sha256:35a80d553271d7a267d684c128e0a1abad2760b791760b76c27e92cd23c51919" [label=""];
  "sha256:35a80d553271d7a267d684c128e0a1abad2760b791760b76c27e92cd23c51919" -> "sha256:acc41f6f4c0ce237bba942e64621716e8fb079744c8b2a2a2d611861078d40ff" [label=""];
  "sha256:acc41f6f4c0ce237bba942e64621716e8fb079744c8b2a2a2d611861078d40ff" -> "sha256:e6a289453ed1ae07141f4087ebb85d555453580c5a816a66eda562d511899194" [label=""];
  "sha256:e6a289453ed1ae07141f4087ebb85d555453580c5a816a66eda562d511899194" -> "sha256:8f9c096cbac3f615ff4fa096e4509719f16e22d54831c9081eab5f5e16f43647" [label=""];
  "sha256:8f9c096cbac3f615ff4fa096e4509719f16e22d54831c9081eab5f5e16f43647" -> "sha256:040662b6f0e1afcc951ab437eb11422b765e4c557fad7e0d688e97180331923e" [label=""];
  "sha256:040662b6f0e1afcc951ab437eb11422b765e4c557fad7e0d688e97180331923e" -> "sha256:8d513014479498ccf6630c1acafc3f7517ce2654862f00bc95f62f325333c755" [label=""];
}

