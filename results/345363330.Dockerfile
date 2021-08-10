[app/sources/345363330.Dockerfile]
digraph {
  "sha256:39d62825731a8a7e1ff2f0ab42c72060c2c11382dcc697fd775df00329f5d8c7" [label="docker-image://docker.io/balenalib/amd64-alpine:3.9-build" shape="ellipse"];
  "sha256:1fd20f277ed9f8afd2878529f6f68b1224cee69e256a5636e881d9c093d27462" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:96461d99d52e82c77f98a363d081e7f2f3c5b29f1fff4d9ecf6b056f236f6f22" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"8d18ef91cc3413fecd238647a71d9c19f710b9ad843bb49ead0b4960df653f5e  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz" shape="box"];
  "sha256:cb2c08557d95e9d74aea5187def51a55a9a9e55a3b93d5a0f61fc517d3215b7c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:47ca45c0748e1b32e87c88bf47001c8a2ba47387aabfed9e7947dd19f5e62238" [label="mkdir{path=/go}" shape="note"];
  "sha256:392189b35495e3be91a0abf627d39243274bb560fd8ab131b2a7d827737c4bb7" [label="sha256:392189b35495e3be91a0abf627d39243274bb560fd8ab131b2a7d827737c4bb7" shape="plaintext"];
  "sha256:39d62825731a8a7e1ff2f0ab42c72060c2c11382dcc697fd775df00329f5d8c7" -> "sha256:1fd20f277ed9f8afd2878529f6f68b1224cee69e256a5636e881d9c093d27462" [label=""];
  "sha256:1fd20f277ed9f8afd2878529f6f68b1224cee69e256a5636e881d9c093d27462" -> "sha256:96461d99d52e82c77f98a363d081e7f2f3c5b29f1fff4d9ecf6b056f236f6f22" [label=""];
  "sha256:96461d99d52e82c77f98a363d081e7f2f3c5b29f1fff4d9ecf6b056f236f6f22" -> "sha256:cb2c08557d95e9d74aea5187def51a55a9a9e55a3b93d5a0f61fc517d3215b7c" [label=""];
  "sha256:cb2c08557d95e9d74aea5187def51a55a9a9e55a3b93d5a0f61fc517d3215b7c" -> "sha256:47ca45c0748e1b32e87c88bf47001c8a2ba47387aabfed9e7947dd19f5e62238" [label=""];
  "sha256:47ca45c0748e1b32e87c88bf47001c8a2ba47387aabfed9e7947dd19f5e62238" -> "sha256:392189b35495e3be91a0abf627d39243274bb560fd8ab131b2a7d827737c4bb7" [label=""];
}

