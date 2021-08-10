[app/sources/345375259.Dockerfile]
digraph {
  "sha256:5b067751e9d191e91b3349048708aaeae652c5c633c48a10641179a7ac8d1291" [label="docker-image://docker.io/balenalib/npe-x500-m3-debian:jessie-build" shape="ellipse"];
  "sha256:53a83f3b21eaedc34f5cc5e0a90a2d4fbd202ff69b455a2a71b3ef04b2f2f239" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:d8195205a1b8b96ca7e42b1cc31d1efb393f17e343cc72a625edbb18ccac7245" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9d92abda72fb3147c2177a7b98f85614917f8f5ba6174e3e9c0872969779ddb5" [label="mkdir{path=/go}" shape="note"];
  "sha256:176f41534034cfb14cfa52fb44c442d31ad8fe39518d39014637bcfb501c4a31" [label="sha256:176f41534034cfb14cfa52fb44c442d31ad8fe39518d39014637bcfb501c4a31" shape="plaintext"];
  "sha256:5b067751e9d191e91b3349048708aaeae652c5c633c48a10641179a7ac8d1291" -> "sha256:53a83f3b21eaedc34f5cc5e0a90a2d4fbd202ff69b455a2a71b3ef04b2f2f239" [label=""];
  "sha256:53a83f3b21eaedc34f5cc5e0a90a2d4fbd202ff69b455a2a71b3ef04b2f2f239" -> "sha256:d8195205a1b8b96ca7e42b1cc31d1efb393f17e343cc72a625edbb18ccac7245" [label=""];
  "sha256:d8195205a1b8b96ca7e42b1cc31d1efb393f17e343cc72a625edbb18ccac7245" -> "sha256:9d92abda72fb3147c2177a7b98f85614917f8f5ba6174e3e9c0872969779ddb5" [label=""];
  "sha256:9d92abda72fb3147c2177a7b98f85614917f8f5ba6174e3e9c0872969779ddb5" -> "sha256:176f41534034cfb14cfa52fb44c442d31ad8fe39518d39014637bcfb501c4a31" [label=""];
}

