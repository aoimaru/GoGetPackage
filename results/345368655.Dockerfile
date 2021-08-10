[app/sources/345368655.Dockerfile]
digraph {
  "sha256:fe7724d46ac3c003fb35fefcbe33781b86bd20300ede84140b77c43bcd1a965c" [label="docker-image://docker.io/balenalib/beaglebone-black-alpine:3.8-run" shape="ellipse"];
  "sha256:9050933b7e8829c4a8366c871beab6b6a3e7e0ad695f826901f3db65e2420d54" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:675ca9aa3d2c8a1bbe060d2ef9d5531304281603652b9f21e89a22552e0dd197" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:5abcf65b1d8434436583a53410c4aadbdcfd60d711bff10976de1e4114c5b059" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:369a898ff1ba20e5cd0b7764ac59babca9ba5f4919ec1317cda66228b6697dd2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:39d177781265043549d8402121d03bc91de9b06ae8ac6f8092b365371ee3dc10" [label="mkdir{path=/go}" shape="note"];
  "sha256:813eb52cf8a8e009b6a895ec0610e82873b8cdf47c2c3dbeecbaf8321bcdefbf" [label="sha256:813eb52cf8a8e009b6a895ec0610e82873b8cdf47c2c3dbeecbaf8321bcdefbf" shape="plaintext"];
  "sha256:fe7724d46ac3c003fb35fefcbe33781b86bd20300ede84140b77c43bcd1a965c" -> "sha256:9050933b7e8829c4a8366c871beab6b6a3e7e0ad695f826901f3db65e2420d54" [label=""];
  "sha256:9050933b7e8829c4a8366c871beab6b6a3e7e0ad695f826901f3db65e2420d54" -> "sha256:675ca9aa3d2c8a1bbe060d2ef9d5531304281603652b9f21e89a22552e0dd197" [label=""];
  "sha256:675ca9aa3d2c8a1bbe060d2ef9d5531304281603652b9f21e89a22552e0dd197" -> "sha256:5abcf65b1d8434436583a53410c4aadbdcfd60d711bff10976de1e4114c5b059" [label=""];
  "sha256:5abcf65b1d8434436583a53410c4aadbdcfd60d711bff10976de1e4114c5b059" -> "sha256:369a898ff1ba20e5cd0b7764ac59babca9ba5f4919ec1317cda66228b6697dd2" [label=""];
  "sha256:369a898ff1ba20e5cd0b7764ac59babca9ba5f4919ec1317cda66228b6697dd2" -> "sha256:39d177781265043549d8402121d03bc91de9b06ae8ac6f8092b365371ee3dc10" [label=""];
  "sha256:39d177781265043549d8402121d03bc91de9b06ae8ac6f8092b365371ee3dc10" -> "sha256:813eb52cf8a8e009b6a895ec0610e82873b8cdf47c2c3dbeecbaf8321bcdefbf" [label=""];
}

