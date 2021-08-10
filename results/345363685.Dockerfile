[app/sources/345363685.Dockerfile]
digraph {
  "sha256:cdf3d536ac4ceb7bc8bc44657ae147c845e37ad84f615ff3db993ce292863d4a" [label="docker-image://docker.io/balenalib/artik10-alpine:3.9-run" shape="ellipse"];
  "sha256:df7dfe2936d1196201cad8a1ce17219ae39a19dd1aa980f1833217f8bdee5f70" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:d9d384a2c8a375772d0c43b9b2b031296b25a560aef0e3ae05343b842cfc43a8" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:4f68d5f3a95154cac6c227ba276d79990c1a4bb1fa9472cd8acd9cef52a5c3f4" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:1867d7bd07bdb406b29b8249bfc07880732983a429865565d686af23038518f4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:92461162fe95b19256efbd3ae077e42181a3adacfb810ddf3c031ed7dbbc16c2" [label="mkdir{path=/go}" shape="note"];
  "sha256:20cff0f9bcc2ed7875b4542699d45da20a9e0cb5849e2947e3e0bff709336169" [label="sha256:20cff0f9bcc2ed7875b4542699d45da20a9e0cb5849e2947e3e0bff709336169" shape="plaintext"];
  "sha256:cdf3d536ac4ceb7bc8bc44657ae147c845e37ad84f615ff3db993ce292863d4a" -> "sha256:df7dfe2936d1196201cad8a1ce17219ae39a19dd1aa980f1833217f8bdee5f70" [label=""];
  "sha256:df7dfe2936d1196201cad8a1ce17219ae39a19dd1aa980f1833217f8bdee5f70" -> "sha256:d9d384a2c8a375772d0c43b9b2b031296b25a560aef0e3ae05343b842cfc43a8" [label=""];
  "sha256:d9d384a2c8a375772d0c43b9b2b031296b25a560aef0e3ae05343b842cfc43a8" -> "sha256:4f68d5f3a95154cac6c227ba276d79990c1a4bb1fa9472cd8acd9cef52a5c3f4" [label=""];
  "sha256:4f68d5f3a95154cac6c227ba276d79990c1a4bb1fa9472cd8acd9cef52a5c3f4" -> "sha256:1867d7bd07bdb406b29b8249bfc07880732983a429865565d686af23038518f4" [label=""];
  "sha256:1867d7bd07bdb406b29b8249bfc07880732983a429865565d686af23038518f4" -> "sha256:92461162fe95b19256efbd3ae077e42181a3adacfb810ddf3c031ed7dbbc16c2" [label=""];
  "sha256:92461162fe95b19256efbd3ae077e42181a3adacfb810ddf3c031ed7dbbc16c2" -> "sha256:20cff0f9bcc2ed7875b4542699d45da20a9e0cb5849e2947e3e0bff709336169" [label=""];
}

