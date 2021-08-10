[app/sources/345366499.Dockerfile]
digraph {
  "sha256:e27d5109203f26d9a7dd7e062bac6981474c236685b96d3b8af2e188f88f35dc" [label="docker-image://docker.io/balenalib/imx7-var-som-alpine:3.9-run" shape="ellipse"];
  "sha256:7889ce28b4b53491840e98f59c186b062b69117cf485c0e002e2db9a49658478" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:9dc520e456046d1d9808c711f513ace45cacc7c3a278266d5bec22005aab911d" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:96e7319c54be402daedec237043bfb4cf39be7e34143b9f4dff0b410abafb6e5" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:31f2c7877c3861f99fdba93329871022f86442c21f16298dad2e22e3071d2535" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:fcd224969f298bc0873433f92dd5f509ed1261c6cde90c71a023d584923b2bc9" [label="mkdir{path=/go}" shape="note"];
  "sha256:8b712e9f88d02662391a1fb8ab47d0d586d345516749abb5f84f4f8cc1eaaf3f" [label="sha256:8b712e9f88d02662391a1fb8ab47d0d586d345516749abb5f84f4f8cc1eaaf3f" shape="plaintext"];
  "sha256:e27d5109203f26d9a7dd7e062bac6981474c236685b96d3b8af2e188f88f35dc" -> "sha256:7889ce28b4b53491840e98f59c186b062b69117cf485c0e002e2db9a49658478" [label=""];
  "sha256:7889ce28b4b53491840e98f59c186b062b69117cf485c0e002e2db9a49658478" -> "sha256:9dc520e456046d1d9808c711f513ace45cacc7c3a278266d5bec22005aab911d" [label=""];
  "sha256:9dc520e456046d1d9808c711f513ace45cacc7c3a278266d5bec22005aab911d" -> "sha256:96e7319c54be402daedec237043bfb4cf39be7e34143b9f4dff0b410abafb6e5" [label=""];
  "sha256:96e7319c54be402daedec237043bfb4cf39be7e34143b9f4dff0b410abafb6e5" -> "sha256:31f2c7877c3861f99fdba93329871022f86442c21f16298dad2e22e3071d2535" [label=""];
  "sha256:31f2c7877c3861f99fdba93329871022f86442c21f16298dad2e22e3071d2535" -> "sha256:fcd224969f298bc0873433f92dd5f509ed1261c6cde90c71a023d584923b2bc9" [label=""];
  "sha256:fcd224969f298bc0873433f92dd5f509ed1261c6cde90c71a023d584923b2bc9" -> "sha256:8b712e9f88d02662391a1fb8ab47d0d586d345516749abb5f84f4f8cc1eaaf3f" [label=""];
}

