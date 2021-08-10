[app/sources/345357983.Dockerfile]
digraph {
  "sha256:12912dea9ce71f776ac4e10d31ea795e02a30c171683d2cdf9f909f085699ea5" [label="docker-image://docker.io/balenalib/raspberry-pi2-alpine:3.7-build" shape="ellipse"];
  "sha256:f00a85282e73110b668298e2385ad9569ca24b1725e0ba9a96a21e71ef2beef2" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:5976bf5bc994cfd69a853ebd10931887e962c3bd0f1bddacedf0c34881753527" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:e7b97ceeae6fdacf7f251dbe420d8a44c5a7afdd1eab451a08116c2acb5fc6d7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2bb71a62c50d8cd4eb45369ebab523090617dac5c832a262b0996ce3b532e629" [label="mkdir{path=/go}" shape="note"];
  "sha256:b1022fd5783b2a0742d55298b8a3078c9ad3ac248b17e371808053783c349624" [label="sha256:b1022fd5783b2a0742d55298b8a3078c9ad3ac248b17e371808053783c349624" shape="plaintext"];
  "sha256:12912dea9ce71f776ac4e10d31ea795e02a30c171683d2cdf9f909f085699ea5" -> "sha256:f00a85282e73110b668298e2385ad9569ca24b1725e0ba9a96a21e71ef2beef2" [label=""];
  "sha256:f00a85282e73110b668298e2385ad9569ca24b1725e0ba9a96a21e71ef2beef2" -> "sha256:5976bf5bc994cfd69a853ebd10931887e962c3bd0f1bddacedf0c34881753527" [label=""];
  "sha256:5976bf5bc994cfd69a853ebd10931887e962c3bd0f1bddacedf0c34881753527" -> "sha256:e7b97ceeae6fdacf7f251dbe420d8a44c5a7afdd1eab451a08116c2acb5fc6d7" [label=""];
  "sha256:e7b97ceeae6fdacf7f251dbe420d8a44c5a7afdd1eab451a08116c2acb5fc6d7" -> "sha256:2bb71a62c50d8cd4eb45369ebab523090617dac5c832a262b0996ce3b532e629" [label=""];
  "sha256:2bb71a62c50d8cd4eb45369ebab523090617dac5c832a262b0996ce3b532e629" -> "sha256:b1022fd5783b2a0742d55298b8a3078c9ad3ac248b17e371808053783c349624" [label=""];
}

