[app/sources/345367900.Dockerfile]
digraph {
  "sha256:185f0241c68300bab9247064619b12d527577708c3cba71f971c06dced0bc2e2" [label="docker-image://docker.io/balenalib/artik530-alpine:3.9-build@sha256:ebc3bd8eb216d16757c5a13b56f5eb141532bcdb51a97dc8a1a0cde93b387354" shape="ellipse"];
  "sha256:7da2fbd3dd01b3c4141ca4b349beeaa2d48ae6fea37c9e00c9b355670e6e939e" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:1056a22f76b45370a2f938e85ea23cc08be47ea33a80166a92cc516d92a22afe" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:ddc7fa2a0fd4fa74660bb762930a49bb0d4566941c98c4de39d5cc4e002c9df4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a8d22523302f895de9ab37cd647cb8d57947537a377efd491257c1d9006cce99" [label="mkdir{path=/go}" shape="note"];
  "sha256:c951098c08365c09b2755abb3a132793d7360ccaa0be20c33933cce87e3fd4b7" [label="sha256:c951098c08365c09b2755abb3a132793d7360ccaa0be20c33933cce87e3fd4b7" shape="plaintext"];
  "sha256:185f0241c68300bab9247064619b12d527577708c3cba71f971c06dced0bc2e2" -> "sha256:7da2fbd3dd01b3c4141ca4b349beeaa2d48ae6fea37c9e00c9b355670e6e939e" [label=""];
  "sha256:7da2fbd3dd01b3c4141ca4b349beeaa2d48ae6fea37c9e00c9b355670e6e939e" -> "sha256:1056a22f76b45370a2f938e85ea23cc08be47ea33a80166a92cc516d92a22afe" [label=""];
  "sha256:1056a22f76b45370a2f938e85ea23cc08be47ea33a80166a92cc516d92a22afe" -> "sha256:ddc7fa2a0fd4fa74660bb762930a49bb0d4566941c98c4de39d5cc4e002c9df4" [label=""];
  "sha256:ddc7fa2a0fd4fa74660bb762930a49bb0d4566941c98c4de39d5cc4e002c9df4" -> "sha256:a8d22523302f895de9ab37cd647cb8d57947537a377efd491257c1d9006cce99" [label=""];
  "sha256:a8d22523302f895de9ab37cd647cb8d57947537a377efd491257c1d9006cce99" -> "sha256:c951098c08365c09b2755abb3a132793d7360ccaa0be20c33933cce87e3fd4b7" [label=""];
}

