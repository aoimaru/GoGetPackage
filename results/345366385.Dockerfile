[app/sources/345366385.Dockerfile]
digraph {
  "sha256:6e8d4b38f99c1958387905b7373b8d91ed018df86466a18fd9ebf8e62fc14fa1" [label="docker-image://docker.io/balenalib/imx6ul-var-dart-alpine:3.8-run" shape="ellipse"];
  "sha256:871c690dd01b00fd99eacb26e54f724c89bfb74a28437b29f71621cdb83edaca" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:08dbc78a49ff3b7d7efc66ebbcfabef3e1128c53acb3e57abc1693c555fabbee" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:88680c09f15c57a72b628ca00e850c195450400121afd301c0001577b8f02d79" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:c8dc014a863338e2211981f8f4beba219deefcbb9849f671c458903fca31f466" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c78992a34e2897fc7762c78c6dd0a737735b43d69c5f8dc662716acf50baa656" [label="mkdir{path=/go}" shape="note"];
  "sha256:653011c92800c2e49daaaf500eb0facd810ad4b7e58ec4a5bcc82f7491f2a5b0" [label="sha256:653011c92800c2e49daaaf500eb0facd810ad4b7e58ec4a5bcc82f7491f2a5b0" shape="plaintext"];
  "sha256:6e8d4b38f99c1958387905b7373b8d91ed018df86466a18fd9ebf8e62fc14fa1" -> "sha256:871c690dd01b00fd99eacb26e54f724c89bfb74a28437b29f71621cdb83edaca" [label=""];
  "sha256:871c690dd01b00fd99eacb26e54f724c89bfb74a28437b29f71621cdb83edaca" -> "sha256:08dbc78a49ff3b7d7efc66ebbcfabef3e1128c53acb3e57abc1693c555fabbee" [label=""];
  "sha256:08dbc78a49ff3b7d7efc66ebbcfabef3e1128c53acb3e57abc1693c555fabbee" -> "sha256:88680c09f15c57a72b628ca00e850c195450400121afd301c0001577b8f02d79" [label=""];
  "sha256:88680c09f15c57a72b628ca00e850c195450400121afd301c0001577b8f02d79" -> "sha256:c8dc014a863338e2211981f8f4beba219deefcbb9849f671c458903fca31f466" [label=""];
  "sha256:c8dc014a863338e2211981f8f4beba219deefcbb9849f671c458903fca31f466" -> "sha256:c78992a34e2897fc7762c78c6dd0a737735b43d69c5f8dc662716acf50baa656" [label=""];
  "sha256:c78992a34e2897fc7762c78c6dd0a737735b43d69c5f8dc662716acf50baa656" -> "sha256:653011c92800c2e49daaaf500eb0facd810ad4b7e58ec4a5bcc82f7491f2a5b0" [label=""];
}

