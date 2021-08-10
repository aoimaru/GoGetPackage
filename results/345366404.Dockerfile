[app/sources/345366404.Dockerfile]
digraph {
  "sha256:39a72fcae0d9be685d83ed1aacc550418e9791b2edf3e58cc453de05259a4e4a" [label="docker-image://docker.io/balenalib/imx6ul-var-dart-debian:buster-build@sha256:f3531b63344b3b36c41f2412ebb3bb59cc5caa0fc26e10620daa0af12d6abc36" shape="ellipse"];
  "sha256:87cadd5cecbea4fe7fa4721b1f84aa5c3f7f00708c019f4bdb12e2d070a9db37" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:80206bfa9576ed43fc40501b4d4ec2e250f4c9cb7ba26bfd67115db501145f7b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f06c9851ec484719904fa0a58d76ca35479f33c763ff23843556c945e8c2f001" [label="mkdir{path=/go}" shape="note"];
  "sha256:c60ddacc62b7538a46e69b43e680f6b27d3f09b74bc7782fcf2035b18f48b029" [label="sha256:c60ddacc62b7538a46e69b43e680f6b27d3f09b74bc7782fcf2035b18f48b029" shape="plaintext"];
  "sha256:39a72fcae0d9be685d83ed1aacc550418e9791b2edf3e58cc453de05259a4e4a" -> "sha256:87cadd5cecbea4fe7fa4721b1f84aa5c3f7f00708c019f4bdb12e2d070a9db37" [label=""];
  "sha256:87cadd5cecbea4fe7fa4721b1f84aa5c3f7f00708c019f4bdb12e2d070a9db37" -> "sha256:80206bfa9576ed43fc40501b4d4ec2e250f4c9cb7ba26bfd67115db501145f7b" [label=""];
  "sha256:80206bfa9576ed43fc40501b4d4ec2e250f4c9cb7ba26bfd67115db501145f7b" -> "sha256:f06c9851ec484719904fa0a58d76ca35479f33c763ff23843556c945e8c2f001" [label=""];
  "sha256:f06c9851ec484719904fa0a58d76ca35479f33c763ff23843556c945e8c2f001" -> "sha256:c60ddacc62b7538a46e69b43e680f6b27d3f09b74bc7782fcf2035b18f48b029" [label=""];
}

