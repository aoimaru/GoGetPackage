[app/sources/330871305.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:15e25f8bd0bbe6c7b0b988b99a741bff00113750c06fef907a858738474c5f2f" [label="/bin/sh -c apt-get update &&     apt-get install -y wget git make gcc vim tree software-properties-common &&     add-apt-repository ppa:webupd8team/java -y &&     apt-get update &&     echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections &&     apt-get install -y oracle-java8-installer &&     apt-get clean" shape="box"];
  "sha256:b40c311b87632d99673fb4716f519cbdd4182bd8e703a041aec7519ca9a8aaee" [label="/bin/sh -c wget --quiet -O /root/swagger2markup-cli-1.3.1.jar http://central.maven.org/maven2/io/github/swagger2markup/swagger2markup-cli/1.3.1/swagger2markup-cli-1.3.1.jar" shape="box"];
  "sha256:a6397f60608177c8bd2f4bf4c4d9a0837bcebd5f8f91bf91b2ec6761b44fd037" [label="/bin/sh -c wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-${ARCH}.tar.gz     && tar -C /usr/local -xzf go${GO_VERSION}.linux-${ARCH}.tar.gz     && rm go${GO_VERSION}.linux-${ARCH}.tar.gz" shape="box"];
  "sha256:939d8917d9d7bfc823353f06f5ad6d1b4e945960e27a2244008d3ee311cef124" [label="/bin/sh -c mkdir /go" shape="box"];
  "sha256:d6f76f6ec929663096f4aaaa950da880cc4af7f8dfd19497a20ff5a7071b466b" [label="mkdir{path=/go}" shape="note"];
  "sha256:c766731762d007f47d95bced0981fc13dfb8ea7471534e616c7a30ff15dc5fec" [label="/bin/sh -c echo \"StrictHostKeyChecking no\" >> /etc/ssh/ssh_config" shape="box"];
  "sha256:1d2c22474300277546f2f150a677715bca7877a9c3a0ea6810ac4e9005ea1696" [label="/bin/sh -c mkdir -p /go/src/github.com/dragonflyoss     && cd /go/src/github.com/dragonflyoss     && git clone https://github.com/pouchrobot/Dragonfly.git     && cd Dragonfly     && git remote remove origin     && git remote add origin git@github.com:pouchrobot/Dragonfly.git     && git remote add upstream https://github.com/dragonflyoss/Dragonfly.git     && git config user.name \"pouchrobot\"     && git config user.email \"pouch-dev@list.alibaba-inc.com\"" shape="box"];
  "sha256:e10f0157b6a8dedcdf6fcfae4c0ba6c45c959625569a62e6f030ca885c7bc157" [label="local://context" shape="ellipse"];
  "sha256:1a4348a31c089f9b26d60ed1b7246f58ffe74b5814de2e0ca18397286f8396a9" [label="copy{src=/, dest=/go/src/github.com/pouchcontainer/pouchrobot}" shape="note"];
  "sha256:62f01badba4456a92c37436a8dc1756870a8b35a8be5e406e88db6524f5191ed" [label="/bin/sh -c cd /go/src/github.com/pouchcontainer/pouchrobot     && go build     && mv pouchrobot /usr/local/bin/pouchrobot" shape="box"];
  "sha256:c4d74a98a656b18c7a3f7310a2b597e1411631ccfb5eeabe888589e536282de4" [label="mkdir{path=/go/src/github.com/dragonflyoss/Dragonfly}" shape="note"];
  "sha256:d35de5c5824b829ca6253f95d48fdb57b23e8f203ceabaaa61481c30fed8f192" [label="sha256:d35de5c5824b829ca6253f95d48fdb57b23e8f203ceabaaa61481c30fed8f192" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:15e25f8bd0bbe6c7b0b988b99a741bff00113750c06fef907a858738474c5f2f" [label=""];
  "sha256:15e25f8bd0bbe6c7b0b988b99a741bff00113750c06fef907a858738474c5f2f" -> "sha256:b40c311b87632d99673fb4716f519cbdd4182bd8e703a041aec7519ca9a8aaee" [label=""];
  "sha256:b40c311b87632d99673fb4716f519cbdd4182bd8e703a041aec7519ca9a8aaee" -> "sha256:a6397f60608177c8bd2f4bf4c4d9a0837bcebd5f8f91bf91b2ec6761b44fd037" [label=""];
  "sha256:a6397f60608177c8bd2f4bf4c4d9a0837bcebd5f8f91bf91b2ec6761b44fd037" -> "sha256:939d8917d9d7bfc823353f06f5ad6d1b4e945960e27a2244008d3ee311cef124" [label=""];
  "sha256:939d8917d9d7bfc823353f06f5ad6d1b4e945960e27a2244008d3ee311cef124" -> "sha256:d6f76f6ec929663096f4aaaa950da880cc4af7f8dfd19497a20ff5a7071b466b" [label=""];
  "sha256:d6f76f6ec929663096f4aaaa950da880cc4af7f8dfd19497a20ff5a7071b466b" -> "sha256:c766731762d007f47d95bced0981fc13dfb8ea7471534e616c7a30ff15dc5fec" [label=""];
  "sha256:c766731762d007f47d95bced0981fc13dfb8ea7471534e616c7a30ff15dc5fec" -> "sha256:1d2c22474300277546f2f150a677715bca7877a9c3a0ea6810ac4e9005ea1696" [label=""];
  "sha256:1d2c22474300277546f2f150a677715bca7877a9c3a0ea6810ac4e9005ea1696" -> "sha256:1a4348a31c089f9b26d60ed1b7246f58ffe74b5814de2e0ca18397286f8396a9" [label=""];
  "sha256:e10f0157b6a8dedcdf6fcfae4c0ba6c45c959625569a62e6f030ca885c7bc157" -> "sha256:1a4348a31c089f9b26d60ed1b7246f58ffe74b5814de2e0ca18397286f8396a9" [label=""];
  "sha256:1a4348a31c089f9b26d60ed1b7246f58ffe74b5814de2e0ca18397286f8396a9" -> "sha256:62f01badba4456a92c37436a8dc1756870a8b35a8be5e406e88db6524f5191ed" [label=""];
  "sha256:62f01badba4456a92c37436a8dc1756870a8b35a8be5e406e88db6524f5191ed" -> "sha256:c4d74a98a656b18c7a3f7310a2b597e1411631ccfb5eeabe888589e536282de4" [label=""];
  "sha256:c4d74a98a656b18c7a3f7310a2b597e1411631ccfb5eeabe888589e536282de4" -> "sha256:d35de5c5824b829ca6253f95d48fdb57b23e8f203ceabaaa61481c30fed8f192" [label=""];
}

