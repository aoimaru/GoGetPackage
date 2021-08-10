[app/sources/345360483.Dockerfile]
digraph {
  "sha256:adffedb3a71741b21cc8eff2c58e31b3a5de438cf69f181ff9e267a19c2b6d39" [label="docker-image://docker.io/balenalib/stem-x86-32-alpine:3.9-build" shape="ellipse"];
  "sha256:56b1c54803ae4d02cadf757231017276483abed8ae347be76f06ebfd9b18fd2a" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:801b8d6c47b0a77acea35a0efeb3c6c2c9b834ae83d94eb1ca3e3083ab891868" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-i386.tar.gz\" \t&& echo \"a067180c91867b974959be8f9f5ed76a9da2c111f6481a79fcd573b8f64c58f5  go$GO_VERSION.linux-alpine-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-i386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-i386.tar.gz" shape="box"];
  "sha256:aaf90bbd87086bae28ae573894d530e2f4a9cc39d889dc2c6719c7a538cf683b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3800b5c7a3ec277939adb7c1d6086ce0335c2ad79272bd4477522eaf0ac686ae" [label="mkdir{path=/go}" shape="note"];
  "sha256:771e422faf85efdff65dc3551779eca5ec793a14934513caced45ee5fb2ac5af" [label="sha256:771e422faf85efdff65dc3551779eca5ec793a14934513caced45ee5fb2ac5af" shape="plaintext"];
  "sha256:adffedb3a71741b21cc8eff2c58e31b3a5de438cf69f181ff9e267a19c2b6d39" -> "sha256:56b1c54803ae4d02cadf757231017276483abed8ae347be76f06ebfd9b18fd2a" [label=""];
  "sha256:56b1c54803ae4d02cadf757231017276483abed8ae347be76f06ebfd9b18fd2a" -> "sha256:801b8d6c47b0a77acea35a0efeb3c6c2c9b834ae83d94eb1ca3e3083ab891868" [label=""];
  "sha256:801b8d6c47b0a77acea35a0efeb3c6c2c9b834ae83d94eb1ca3e3083ab891868" -> "sha256:aaf90bbd87086bae28ae573894d530e2f4a9cc39d889dc2c6719c7a538cf683b" [label=""];
  "sha256:aaf90bbd87086bae28ae573894d530e2f4a9cc39d889dc2c6719c7a538cf683b" -> "sha256:3800b5c7a3ec277939adb7c1d6086ce0335c2ad79272bd4477522eaf0ac686ae" [label=""];
  "sha256:3800b5c7a3ec277939adb7c1d6086ce0335c2ad79272bd4477522eaf0ac686ae" -> "sha256:771e422faf85efdff65dc3551779eca5ec793a14934513caced45ee5fb2ac5af" [label=""];
}

