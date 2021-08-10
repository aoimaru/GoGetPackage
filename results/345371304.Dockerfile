[app/sources/345371304.Dockerfile]
digraph {
  "sha256:9426684530f14cf32ab1b5ff4067e5530f2ad7000bcd6db5f80ef570ae4790b6" [label="docker-image://docker.io/balenalib/ccon-01-alpine:3.7-build" shape="ellipse"];
  "sha256:518c23e9de54912513636120240a294758d55bec59116f9c6e396b56f320bb02" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:da85ebdb2654be0aedcd0f75ba3a41a057b70a8e1b75b230a703cac01d9c965f" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:37a1d066a69581e3f98195f54303a2b9a3921bc6254bfc1cabb7e4f53e189c53" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:eecadc4498aed5bfd56b6344cc7e00c2778c8dc83b8f6be281739bf3c676c212" [label="mkdir{path=/go}" shape="note"];
  "sha256:f59fe61bda5f5dd05536c043988c9ea5216585086153c0fe05d395a5ef7c1455" [label="sha256:f59fe61bda5f5dd05536c043988c9ea5216585086153c0fe05d395a5ef7c1455" shape="plaintext"];
  "sha256:9426684530f14cf32ab1b5ff4067e5530f2ad7000bcd6db5f80ef570ae4790b6" -> "sha256:518c23e9de54912513636120240a294758d55bec59116f9c6e396b56f320bb02" [label=""];
  "sha256:518c23e9de54912513636120240a294758d55bec59116f9c6e396b56f320bb02" -> "sha256:da85ebdb2654be0aedcd0f75ba3a41a057b70a8e1b75b230a703cac01d9c965f" [label=""];
  "sha256:da85ebdb2654be0aedcd0f75ba3a41a057b70a8e1b75b230a703cac01d9c965f" -> "sha256:37a1d066a69581e3f98195f54303a2b9a3921bc6254bfc1cabb7e4f53e189c53" [label=""];
  "sha256:37a1d066a69581e3f98195f54303a2b9a3921bc6254bfc1cabb7e4f53e189c53" -> "sha256:eecadc4498aed5bfd56b6344cc7e00c2778c8dc83b8f6be281739bf3c676c212" [label=""];
  "sha256:eecadc4498aed5bfd56b6344cc7e00c2778c8dc83b8f6be281739bf3c676c212" -> "sha256:f59fe61bda5f5dd05536c043988c9ea5216585086153c0fe05d395a5ef7c1455" [label=""];
}

