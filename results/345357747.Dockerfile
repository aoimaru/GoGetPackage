[app/sources/345357747.Dockerfile]
digraph {
  "sha256:a1dc79bb7d647bbf4930425ae9cd0f94f819b26f6e693bb09ce61d1c9ebc96e8" [label="docker-image://docker.io/balenalib/qemux86-64-alpine:edge-build" shape="ellipse"];
  "sha256:5736b98eceefb0a87bff3666dfb52f41065baa883c997e5b066f65de8a4bb47e" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:445e9cbdd200fc08e274ff4d935a5c7174a339b2b654fa70a067f07b5ae1d8cb" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"cefdfd2b941303fd25dd06bd04871b12a58a2a9a3d105eb67aed40dac092c863  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz" shape="box"];
  "sha256:04addfafc88cc21e390b867d10a9e81fda9c5446caae62cf0d0ae43eb649be47" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:41496fc18808005cc11ce893c5fdacd2665898396bedef1bf282c8754b5b5af6" [label="mkdir{path=/go}" shape="note"];
  "sha256:51a7cdcb1e00980d79aaec2f8f17d84bf133de1837ea45a4d5d3daa171149496" [label="sha256:51a7cdcb1e00980d79aaec2f8f17d84bf133de1837ea45a4d5d3daa171149496" shape="plaintext"];
  "sha256:a1dc79bb7d647bbf4930425ae9cd0f94f819b26f6e693bb09ce61d1c9ebc96e8" -> "sha256:5736b98eceefb0a87bff3666dfb52f41065baa883c997e5b066f65de8a4bb47e" [label=""];
  "sha256:5736b98eceefb0a87bff3666dfb52f41065baa883c997e5b066f65de8a4bb47e" -> "sha256:445e9cbdd200fc08e274ff4d935a5c7174a339b2b654fa70a067f07b5ae1d8cb" [label=""];
  "sha256:445e9cbdd200fc08e274ff4d935a5c7174a339b2b654fa70a067f07b5ae1d8cb" -> "sha256:04addfafc88cc21e390b867d10a9e81fda9c5446caae62cf0d0ae43eb649be47" [label=""];
  "sha256:04addfafc88cc21e390b867d10a9e81fda9c5446caae62cf0d0ae43eb649be47" -> "sha256:41496fc18808005cc11ce893c5fdacd2665898396bedef1bf282c8754b5b5af6" [label=""];
  "sha256:41496fc18808005cc11ce893c5fdacd2665898396bedef1bf282c8754b5b5af6" -> "sha256:51a7cdcb1e00980d79aaec2f8f17d84bf133de1837ea45a4d5d3daa171149496" [label=""];
}

