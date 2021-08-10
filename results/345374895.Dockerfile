[app/sources/345374895.Dockerfile]
digraph {
  "sha256:3591d04958c1799cf3779d4d8327fcb6421ba24254af6914d7fa37c6cdd73571" [label="docker-image://docker.io/balenalib/nanopi-neo-air-alpine:3.6-build" shape="ellipse"];
  "sha256:b083d9b1963b14c02a0c71591293de5a33e98fe7440815f42634e1fc0c26e324" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:79b395c8b8777108b8c18d10600e6edf49594394607283c2266ed67678f426d0" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:9c3ae1649eb503cbbe1c3ce01795795eeb05db929397e39aadff4b97d7f768c2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6a3dc6f20593678d9a7ad8b9bf8b8d2a4a13943c973b9c816470262a3e55bf58" [label="mkdir{path=/go}" shape="note"];
  "sha256:f67e78885117fb4ac4c341808b6f9997b36de4d40a534470c10f9479f907db5f" [label="sha256:f67e78885117fb4ac4c341808b6f9997b36de4d40a534470c10f9479f907db5f" shape="plaintext"];
  "sha256:3591d04958c1799cf3779d4d8327fcb6421ba24254af6914d7fa37c6cdd73571" -> "sha256:b083d9b1963b14c02a0c71591293de5a33e98fe7440815f42634e1fc0c26e324" [label=""];
  "sha256:b083d9b1963b14c02a0c71591293de5a33e98fe7440815f42634e1fc0c26e324" -> "sha256:79b395c8b8777108b8c18d10600e6edf49594394607283c2266ed67678f426d0" [label=""];
  "sha256:79b395c8b8777108b8c18d10600e6edf49594394607283c2266ed67678f426d0" -> "sha256:9c3ae1649eb503cbbe1c3ce01795795eeb05db929397e39aadff4b97d7f768c2" [label=""];
  "sha256:9c3ae1649eb503cbbe1c3ce01795795eeb05db929397e39aadff4b97d7f768c2" -> "sha256:6a3dc6f20593678d9a7ad8b9bf8b8d2a4a13943c973b9c816470262a3e55bf58" [label=""];
  "sha256:6a3dc6f20593678d9a7ad8b9bf8b8d2a4a13943c973b9c816470262a3e55bf58" -> "sha256:f67e78885117fb4ac4c341808b6f9997b36de4d40a534470c10f9479f907db5f" [label=""];
}

