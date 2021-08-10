[app/sources/345357558.Dockerfile]
digraph {
  "sha256:4c0a1586c39718712efacbd524a4384c2d095d7df4bf0c1766f5dc5e853bffa6" [label="docker-image://docker.io/balenalib/parallella-alpine:edge-run" shape="ellipse"];
  "sha256:92f02d5e43ba5faa94b97fb229ad655cd2f43ef9f50ffbb5a9d752c43937c9f9" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:dc61531c8af22f665a46ca1b9f271407e3baed7586b3f29a7b97121d7188bbd7" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:88ae6fc1e76eb23803f1487d549088c399e94c5d711c9282c931480c480c6029" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:3bd913ab296d257cd005db959a18ead069638bae43c061f76823a5b13679e453" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:70ed4fe1ab533ce345dbd70e1756d19cddfda72e257d3aeef47a32e0d7266b1d" [label="mkdir{path=/go}" shape="note"];
  "sha256:407c18f6488f8f1d44ccf24f6d43801449acacf5a5f9a183035333ae996a5799" [label="sha256:407c18f6488f8f1d44ccf24f6d43801449acacf5a5f9a183035333ae996a5799" shape="plaintext"];
  "sha256:4c0a1586c39718712efacbd524a4384c2d095d7df4bf0c1766f5dc5e853bffa6" -> "sha256:92f02d5e43ba5faa94b97fb229ad655cd2f43ef9f50ffbb5a9d752c43937c9f9" [label=""];
  "sha256:92f02d5e43ba5faa94b97fb229ad655cd2f43ef9f50ffbb5a9d752c43937c9f9" -> "sha256:dc61531c8af22f665a46ca1b9f271407e3baed7586b3f29a7b97121d7188bbd7" [label=""];
  "sha256:dc61531c8af22f665a46ca1b9f271407e3baed7586b3f29a7b97121d7188bbd7" -> "sha256:88ae6fc1e76eb23803f1487d549088c399e94c5d711c9282c931480c480c6029" [label=""];
  "sha256:88ae6fc1e76eb23803f1487d549088c399e94c5d711c9282c931480c480c6029" -> "sha256:3bd913ab296d257cd005db959a18ead069638bae43c061f76823a5b13679e453" [label=""];
  "sha256:3bd913ab296d257cd005db959a18ead069638bae43c061f76823a5b13679e453" -> "sha256:70ed4fe1ab533ce345dbd70e1756d19cddfda72e257d3aeef47a32e0d7266b1d" [label=""];
  "sha256:70ed4fe1ab533ce345dbd70e1756d19cddfda72e257d3aeef47a32e0d7266b1d" -> "sha256:407c18f6488f8f1d44ccf24f6d43801449acacf5a5f9a183035333ae996a5799" [label=""];
}

