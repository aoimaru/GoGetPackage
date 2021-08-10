[app/sources/345373663.Dockerfile]
digraph {
  "sha256:2301fb2842e1f2b83819045cd7129c8c8df16fee63b73aa71e8ee4e47f39834c" [label="docker-image://docker.io/balenalib/n510-tx2-alpine:3.5-build" shape="ellipse"];
  "sha256:21d24b7bcf12df8b13fac5026cdc2dca984f6365f2458e5910782b9baab889ce" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:c549fce02cddb96f3814f02ed697bb7c321ff809e24ec26d2a982bf3c24093c4" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:0b86544a831952ac88dc9c0aac68e1fb7efc7487b6472fec6aa41af07f62480e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:55c7059104063b7548037f9140653be1bc420e323ba33ee5d36da34234451197" [label="mkdir{path=/go}" shape="note"];
  "sha256:9acf23b0078d43e98d7f7d03b22f4695c1726240482908ad0033d68986f592a4" [label="sha256:9acf23b0078d43e98d7f7d03b22f4695c1726240482908ad0033d68986f592a4" shape="plaintext"];
  "sha256:2301fb2842e1f2b83819045cd7129c8c8df16fee63b73aa71e8ee4e47f39834c" -> "sha256:21d24b7bcf12df8b13fac5026cdc2dca984f6365f2458e5910782b9baab889ce" [label=""];
  "sha256:21d24b7bcf12df8b13fac5026cdc2dca984f6365f2458e5910782b9baab889ce" -> "sha256:c549fce02cddb96f3814f02ed697bb7c321ff809e24ec26d2a982bf3c24093c4" [label=""];
  "sha256:c549fce02cddb96f3814f02ed697bb7c321ff809e24ec26d2a982bf3c24093c4" -> "sha256:0b86544a831952ac88dc9c0aac68e1fb7efc7487b6472fec6aa41af07f62480e" [label=""];
  "sha256:0b86544a831952ac88dc9c0aac68e1fb7efc7487b6472fec6aa41af07f62480e" -> "sha256:55c7059104063b7548037f9140653be1bc420e323ba33ee5d36da34234451197" [label=""];
  "sha256:55c7059104063b7548037f9140653be1bc420e323ba33ee5d36da34234451197" -> "sha256:9acf23b0078d43e98d7f7d03b22f4695c1726240482908ad0033d68986f592a4" [label=""];
}

