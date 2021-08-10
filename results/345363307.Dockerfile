[app/sources/345363307.Dockerfile]
digraph {
  "sha256:47a8efce642f65e4fab62633166da6f7eb48e30d2c9a38a2c28018e8dcb207f0" [label="docker-image://docker.io/balenalib/amd64-alpine:3.5-run@sha256:ca8eb619867e9077c332eef8b35724950405140ea6f7f32f1982e0b56b4e4bae" shape="ellipse"];
  "sha256:2a366db553de104fdc757d6aa83882ec1a96a579f0eb5dbe6c71a818d4bbf056" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:23f359cb29afb89145f30bef65ef38a51f3dff3215d39ebe2ae2015b25541272" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:94b35b43149b7dcb94f404322b47a67b206f8a21bae9beba095714915060f808" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"8d18ef91cc3413fecd238647a71d9c19f710b9ad843bb49ead0b4960df653f5e  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:77c1d1dfd8e9ef795d6f581aa817365b013d8f955126e9845fcbee5d7ad00643" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5730a511b83af9abfd9f90b7db5564436daa3312a99e22d663fe88889ce5652a" [label="mkdir{path=/go}" shape="note"];
  "sha256:456bf4c3a0b3929fdd6678e82deeee63c6ea6681080d3530c988b4984cc47a9a" [label="sha256:456bf4c3a0b3929fdd6678e82deeee63c6ea6681080d3530c988b4984cc47a9a" shape="plaintext"];
  "sha256:47a8efce642f65e4fab62633166da6f7eb48e30d2c9a38a2c28018e8dcb207f0" -> "sha256:2a366db553de104fdc757d6aa83882ec1a96a579f0eb5dbe6c71a818d4bbf056" [label=""];
  "sha256:2a366db553de104fdc757d6aa83882ec1a96a579f0eb5dbe6c71a818d4bbf056" -> "sha256:23f359cb29afb89145f30bef65ef38a51f3dff3215d39ebe2ae2015b25541272" [label=""];
  "sha256:23f359cb29afb89145f30bef65ef38a51f3dff3215d39ebe2ae2015b25541272" -> "sha256:94b35b43149b7dcb94f404322b47a67b206f8a21bae9beba095714915060f808" [label=""];
  "sha256:94b35b43149b7dcb94f404322b47a67b206f8a21bae9beba095714915060f808" -> "sha256:77c1d1dfd8e9ef795d6f581aa817365b013d8f955126e9845fcbee5d7ad00643" [label=""];
  "sha256:77c1d1dfd8e9ef795d6f581aa817365b013d8f955126e9845fcbee5d7ad00643" -> "sha256:5730a511b83af9abfd9f90b7db5564436daa3312a99e22d663fe88889ce5652a" [label=""];
  "sha256:5730a511b83af9abfd9f90b7db5564436daa3312a99e22d663fe88889ce5652a" -> "sha256:456bf4c3a0b3929fdd6678e82deeee63c6ea6681080d3530c988b4984cc47a9a" [label=""];
}

