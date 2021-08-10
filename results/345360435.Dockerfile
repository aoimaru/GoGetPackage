[app/sources/345360435.Dockerfile]
digraph {
  "sha256:e7b02ca46bee9e202dcdae3bb4b8a007cbe9fe740f03ff9368160eed2f1dfb31" [label="docker-image://docker.io/balenalib/stem-x86-32-alpine:3.5-build" shape="ellipse"];
  "sha256:d9719926466141f4cb50f81bab77cc96fd410cdbaeea032f2d1729cf5917ef21" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:a7e2f4e51c916755ddd3f671dc7e75a3e4f526c514cc9a0a4e85113c1d0cca19" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-i386.tar.gz\" \t&& echo \"e59e979d24abf76c916d739efce8fe8a04c34a5c9a7b1172b0a90f512973c342  go$GO_VERSION.linux-alpine-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-i386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-i386.tar.gz" shape="box"];
  "sha256:9df62fa78830cbd7a23660cfab4bdaa15b76086799e62ae067f54e5d6e520e77" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2ba71630a908ac01c9a0727ab81aacea5e50c7d99b6ff371734696871f6e49cb" [label="mkdir{path=/go}" shape="note"];
  "sha256:ee3e329c63db335b2e2a3431dfd3e62612bea9d36394801e133665ab14ab4d6b" [label="sha256:ee3e329c63db335b2e2a3431dfd3e62612bea9d36394801e133665ab14ab4d6b" shape="plaintext"];
  "sha256:e7b02ca46bee9e202dcdae3bb4b8a007cbe9fe740f03ff9368160eed2f1dfb31" -> "sha256:d9719926466141f4cb50f81bab77cc96fd410cdbaeea032f2d1729cf5917ef21" [label=""];
  "sha256:d9719926466141f4cb50f81bab77cc96fd410cdbaeea032f2d1729cf5917ef21" -> "sha256:a7e2f4e51c916755ddd3f671dc7e75a3e4f526c514cc9a0a4e85113c1d0cca19" [label=""];
  "sha256:a7e2f4e51c916755ddd3f671dc7e75a3e4f526c514cc9a0a4e85113c1d0cca19" -> "sha256:9df62fa78830cbd7a23660cfab4bdaa15b76086799e62ae067f54e5d6e520e77" [label=""];
  "sha256:9df62fa78830cbd7a23660cfab4bdaa15b76086799e62ae067f54e5d6e520e77" -> "sha256:2ba71630a908ac01c9a0727ab81aacea5e50c7d99b6ff371734696871f6e49cb" [label=""];
  "sha256:2ba71630a908ac01c9a0727ab81aacea5e50c7d99b6ff371734696871f6e49cb" -> "sha256:ee3e329c63db335b2e2a3431dfd3e62612bea9d36394801e133665ab14ab4d6b" [label=""];
}

