[app/sources/345371092.Dockerfile]
digraph {
  "sha256:6faede2fd78b75b194b289ae66c954655f311654ea2c75cc099a76a15f418b67" [label="docker-image://docker.io/balenalib/beaglebone-pocket-alpine:3.9-build" shape="ellipse"];
  "sha256:0168d03209079025832c6965e56003ddf2a6ba0e6674ef67efbe2980d15f8933" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:a2d75ba2c86d8fcf47952449c95418c686e09befb56709d1e5e191485b428f40" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:4fcbe4ec1332245d3fc7590c66193dbcd580165757a148355156601060eaee75" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9bb6a1981c1441b4685b3b675a143f666625229161cf26a237f86e5df1846322" [label="mkdir{path=/go}" shape="note"];
  "sha256:a7d2e1ba424df88f47ef84a137ba654c385f287e2bf5be470aaaea84c7e1bd4f" [label="sha256:a7d2e1ba424df88f47ef84a137ba654c385f287e2bf5be470aaaea84c7e1bd4f" shape="plaintext"];
  "sha256:6faede2fd78b75b194b289ae66c954655f311654ea2c75cc099a76a15f418b67" -> "sha256:0168d03209079025832c6965e56003ddf2a6ba0e6674ef67efbe2980d15f8933" [label=""];
  "sha256:0168d03209079025832c6965e56003ddf2a6ba0e6674ef67efbe2980d15f8933" -> "sha256:a2d75ba2c86d8fcf47952449c95418c686e09befb56709d1e5e191485b428f40" [label=""];
  "sha256:a2d75ba2c86d8fcf47952449c95418c686e09befb56709d1e5e191485b428f40" -> "sha256:4fcbe4ec1332245d3fc7590c66193dbcd580165757a148355156601060eaee75" [label=""];
  "sha256:4fcbe4ec1332245d3fc7590c66193dbcd580165757a148355156601060eaee75" -> "sha256:9bb6a1981c1441b4685b3b675a143f666625229161cf26a237f86e5df1846322" [label=""];
  "sha256:9bb6a1981c1441b4685b3b675a143f666625229161cf26a237f86e5df1846322" -> "sha256:a7d2e1ba424df88f47ef84a137ba654c385f287e2bf5be470aaaea84c7e1bd4f" [label=""];
}

