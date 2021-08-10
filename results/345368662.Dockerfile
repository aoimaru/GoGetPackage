[app/sources/345368662.Dockerfile]
digraph {
  "sha256:6ed22de6196c3d66a74c9d08c4843681f5037cbba16e168910379b6c894b9533" [label="docker-image://docker.io/balenalib/beaglebone-black-alpine:3.9-build" shape="ellipse"];
  "sha256:67ba6bc4e57bd68c2c6e01b682f39823ea23210c62ff56722fe6543adf19b7d2" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:a9b13c29c832efe92f3aadddc01660972bf8cd1abe702f755e7b2642aff32c3c" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:bc3489248d89324a2038471c9dfecac77aaefb54dd8872198420ec079a7ed4ba" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:96d67bb9c276e4748f40cd931b40d5d0cc9cadd0df0cac0fdd755a87f0745993" [label="mkdir{path=/go}" shape="note"];
  "sha256:98deccdc381e020dc84446b38a2db959824cd7da246ae1eb94153895bcd598a3" [label="sha256:98deccdc381e020dc84446b38a2db959824cd7da246ae1eb94153895bcd598a3" shape="plaintext"];
  "sha256:6ed22de6196c3d66a74c9d08c4843681f5037cbba16e168910379b6c894b9533" -> "sha256:67ba6bc4e57bd68c2c6e01b682f39823ea23210c62ff56722fe6543adf19b7d2" [label=""];
  "sha256:67ba6bc4e57bd68c2c6e01b682f39823ea23210c62ff56722fe6543adf19b7d2" -> "sha256:a9b13c29c832efe92f3aadddc01660972bf8cd1abe702f755e7b2642aff32c3c" [label=""];
  "sha256:a9b13c29c832efe92f3aadddc01660972bf8cd1abe702f755e7b2642aff32c3c" -> "sha256:bc3489248d89324a2038471c9dfecac77aaefb54dd8872198420ec079a7ed4ba" [label=""];
  "sha256:bc3489248d89324a2038471c9dfecac77aaefb54dd8872198420ec079a7ed4ba" -> "sha256:96d67bb9c276e4748f40cd931b40d5d0cc9cadd0df0cac0fdd755a87f0745993" [label=""];
  "sha256:96d67bb9c276e4748f40cd931b40d5d0cc9cadd0df0cac0fdd755a87f0745993" -> "sha256:98deccdc381e020dc84446b38a2db959824cd7da246ae1eb94153895bcd598a3" [label=""];
}

