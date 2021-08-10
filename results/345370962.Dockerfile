[app/sources/345370962.Dockerfile]
digraph {
  "sha256:ad84cb999e1ce23b1944dc38d7aaa95880c5190fe1948354ad53d8bbb428b4b1" [label="docker-image://docker.io/balenalib/beaglebone-green-alpine:3.5-build" shape="ellipse"];
  "sha256:c02134b3fa15259e94d562736ae9b28e85a1a045aea176b69917ed2515bbd528" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:76c810132b2204b902ce4397c966301f2e7856a6896e3313839fb2aef341a0e3" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:60f29717596e4aca6b91139d193f0505d751019dc5a495a4fcfcab53c4f5dddd" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f346cddada3d27dfc335c7392658498e2bb5943f74623abcb3c4b768d94153b2" [label="mkdir{path=/go}" shape="note"];
  "sha256:5bedd40c69dee0f62ddbbed66c816f4410bd88dc8e4d3d4a6a118cb04750f9fd" [label="sha256:5bedd40c69dee0f62ddbbed66c816f4410bd88dc8e4d3d4a6a118cb04750f9fd" shape="plaintext"];
  "sha256:ad84cb999e1ce23b1944dc38d7aaa95880c5190fe1948354ad53d8bbb428b4b1" -> "sha256:c02134b3fa15259e94d562736ae9b28e85a1a045aea176b69917ed2515bbd528" [label=""];
  "sha256:c02134b3fa15259e94d562736ae9b28e85a1a045aea176b69917ed2515bbd528" -> "sha256:76c810132b2204b902ce4397c966301f2e7856a6896e3313839fb2aef341a0e3" [label=""];
  "sha256:76c810132b2204b902ce4397c966301f2e7856a6896e3313839fb2aef341a0e3" -> "sha256:60f29717596e4aca6b91139d193f0505d751019dc5a495a4fcfcab53c4f5dddd" [label=""];
  "sha256:60f29717596e4aca6b91139d193f0505d751019dc5a495a4fcfcab53c4f5dddd" -> "sha256:f346cddada3d27dfc335c7392658498e2bb5943f74623abcb3c4b768d94153b2" [label=""];
  "sha256:f346cddada3d27dfc335c7392658498e2bb5943f74623abcb3c4b768d94153b2" -> "sha256:5bedd40c69dee0f62ddbbed66c816f4410bd88dc8e4d3d4a6a118cb04750f9fd" [label=""];
}

