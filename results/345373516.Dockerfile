[app/sources/345373516.Dockerfile]
digraph {
  "sha256:5dc2cb0911e5cc63ebc1239f2a94c965a4752f05289f166b52ec2f542b9b008e" [label="docker-image://docker.io/balenalib/kitra520-fedora:29-run" shape="ellipse"];
  "sha256:f7eef8d120c65bb940e32f09e243b749e30cd0b056f182695d8c289774a11c16" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:d9046b3b8158679d7087eb01907cc32a3a4b90deff188c333e666591206c7730" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:30caf6ee25b6ec61f11c4f247804263315317272bd6405a9139cc62a879b4478" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f988b82408dc8329759abdc0a62460b481dae21242e5a7ae95eccb92017bfd57" [label="mkdir{path=/go}" shape="note"];
  "sha256:e228c67bbe06eea31621d6dd7f515abe2297df95ecec7b1ca6c024d8ea7663ad" [label="sha256:e228c67bbe06eea31621d6dd7f515abe2297df95ecec7b1ca6c024d8ea7663ad" shape="plaintext"];
  "sha256:5dc2cb0911e5cc63ebc1239f2a94c965a4752f05289f166b52ec2f542b9b008e" -> "sha256:f7eef8d120c65bb940e32f09e243b749e30cd0b056f182695d8c289774a11c16" [label=""];
  "sha256:f7eef8d120c65bb940e32f09e243b749e30cd0b056f182695d8c289774a11c16" -> "sha256:d9046b3b8158679d7087eb01907cc32a3a4b90deff188c333e666591206c7730" [label=""];
  "sha256:d9046b3b8158679d7087eb01907cc32a3a4b90deff188c333e666591206c7730" -> "sha256:30caf6ee25b6ec61f11c4f247804263315317272bd6405a9139cc62a879b4478" [label=""];
  "sha256:30caf6ee25b6ec61f11c4f247804263315317272bd6405a9139cc62a879b4478" -> "sha256:f988b82408dc8329759abdc0a62460b481dae21242e5a7ae95eccb92017bfd57" [label=""];
  "sha256:f988b82408dc8329759abdc0a62460b481dae21242e5a7ae95eccb92017bfd57" -> "sha256:e228c67bbe06eea31621d6dd7f515abe2297df95ecec7b1ca6c024d8ea7663ad" [label=""];
}

