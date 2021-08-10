[app/sources/345370876.Dockerfile]
digraph {
  "sha256:87f4dee70b8fe595bfd8733bb8bad1f8676a997e80dc94dd5187bc17d67eea93" [label="docker-image://docker.io/balenalib/beaglebone-green-wifi-alpine:3.9-build" shape="ellipse"];
  "sha256:a7391d03a4ae8cfadec2da2432aeed543c368265ed4f2a1511f178261d1c1b11" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:1f084c5d888568355db06a68fcbf51f70eade0f698fc78267463b1db33627df4" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:098ba159d0a1603214dc0ba69a369b90f469b148ce8ddf2b22a19cf7735c2e19" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:06367a245d4257c4ff3031e13961d55f36b697241e694f21134de83024dcf6f4" [label="mkdir{path=/go}" shape="note"];
  "sha256:4dedbfeeb2c5c95743b0fc789f56388791d225b1e510d200161e85a007c28861" [label="sha256:4dedbfeeb2c5c95743b0fc789f56388791d225b1e510d200161e85a007c28861" shape="plaintext"];
  "sha256:87f4dee70b8fe595bfd8733bb8bad1f8676a997e80dc94dd5187bc17d67eea93" -> "sha256:a7391d03a4ae8cfadec2da2432aeed543c368265ed4f2a1511f178261d1c1b11" [label=""];
  "sha256:a7391d03a4ae8cfadec2da2432aeed543c368265ed4f2a1511f178261d1c1b11" -> "sha256:1f084c5d888568355db06a68fcbf51f70eade0f698fc78267463b1db33627df4" [label=""];
  "sha256:1f084c5d888568355db06a68fcbf51f70eade0f698fc78267463b1db33627df4" -> "sha256:098ba159d0a1603214dc0ba69a369b90f469b148ce8ddf2b22a19cf7735c2e19" [label=""];
  "sha256:098ba159d0a1603214dc0ba69a369b90f469b148ce8ddf2b22a19cf7735c2e19" -> "sha256:06367a245d4257c4ff3031e13961d55f36b697241e694f21134de83024dcf6f4" [label=""];
  "sha256:06367a245d4257c4ff3031e13961d55f36b697241e694f21134de83024dcf6f4" -> "sha256:4dedbfeeb2c5c95743b0fc789f56388791d225b1e510d200161e85a007c28861" [label=""];
}

