[app/sources/345371686.Dockerfile]
digraph {
  "sha256:1c1eef8bb209fd6bfbbc7e6fc602ee2bba1b8a3e4878ea57803a3f9cb62a1d94" [label="docker-image://docker.io/balenalib/dl-pm6x-alpine:3.7-build" shape="ellipse"];
  "sha256:a03634e624c4fd3bebcba5724a5a16e9b8f1c0acaac5199be8f9968980b18017" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:425050cf26391652ca0e3654a65bf65d888e2c4c664e1ee912b51a4967970707" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:1c2a82e3d7225025ccbda0360789f6d05f19b310aea42db3e88ff026e658202b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:06fcd3d2ddb77bc4c72d7196650c8105859aa27aaf14f238984b2bed40d4c844" [label="mkdir{path=/go}" shape="note"];
  "sha256:b01da0a609e818053c46aeff791a0446a6184392a1fb386841dc1f329f7726bf" [label="sha256:b01da0a609e818053c46aeff791a0446a6184392a1fb386841dc1f329f7726bf" shape="plaintext"];
  "sha256:1c1eef8bb209fd6bfbbc7e6fc602ee2bba1b8a3e4878ea57803a3f9cb62a1d94" -> "sha256:a03634e624c4fd3bebcba5724a5a16e9b8f1c0acaac5199be8f9968980b18017" [label=""];
  "sha256:a03634e624c4fd3bebcba5724a5a16e9b8f1c0acaac5199be8f9968980b18017" -> "sha256:425050cf26391652ca0e3654a65bf65d888e2c4c664e1ee912b51a4967970707" [label=""];
  "sha256:425050cf26391652ca0e3654a65bf65d888e2c4c664e1ee912b51a4967970707" -> "sha256:1c2a82e3d7225025ccbda0360789f6d05f19b310aea42db3e88ff026e658202b" [label=""];
  "sha256:1c2a82e3d7225025ccbda0360789f6d05f19b310aea42db3e88ff026e658202b" -> "sha256:06fcd3d2ddb77bc4c72d7196650c8105859aa27aaf14f238984b2bed40d4c844" [label=""];
  "sha256:06fcd3d2ddb77bc4c72d7196650c8105859aa27aaf14f238984b2bed40d4c844" -> "sha256:b01da0a609e818053c46aeff791a0446a6184392a1fb386841dc1f329f7726bf" [label=""];
}

