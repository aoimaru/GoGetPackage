[app/sources/345373180.Dockerfile]
digraph {
  "sha256:7a191ee34cd83cb7e527e79d5832f45b95dfa9c532d9908b9b2291abe8b0ec99" [label="docker-image://docker.io/balenalib/jetson-nano-fedora:30-run" shape="ellipse"];
  "sha256:3bd7b15f68805ac7424d8e9895fa4a8a03199d55b70404f4d3060610373c727b" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:c2ec5ac59c47e0c6764fe62863eaa0950f6fead68a5f57ec45d46162ba5f73f7" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:8fc680b7e766d257cb11795af74777a25d59b6f8ec440694edce26905cf2c333" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c02e09a3325ec9c3c9368b7eed23afb1af5f6bef5e259ce3ec5c70d620c25e13" [label="mkdir{path=/go}" shape="note"];
  "sha256:9b9871127a7faa65fee347f07c5c1711bd0c6f32842092ab539be42a19f144c3" [label="sha256:9b9871127a7faa65fee347f07c5c1711bd0c6f32842092ab539be42a19f144c3" shape="plaintext"];
  "sha256:7a191ee34cd83cb7e527e79d5832f45b95dfa9c532d9908b9b2291abe8b0ec99" -> "sha256:3bd7b15f68805ac7424d8e9895fa4a8a03199d55b70404f4d3060610373c727b" [label=""];
  "sha256:3bd7b15f68805ac7424d8e9895fa4a8a03199d55b70404f4d3060610373c727b" -> "sha256:c2ec5ac59c47e0c6764fe62863eaa0950f6fead68a5f57ec45d46162ba5f73f7" [label=""];
  "sha256:c2ec5ac59c47e0c6764fe62863eaa0950f6fead68a5f57ec45d46162ba5f73f7" -> "sha256:8fc680b7e766d257cb11795af74777a25d59b6f8ec440694edce26905cf2c333" [label=""];
  "sha256:8fc680b7e766d257cb11795af74777a25d59b6f8ec440694edce26905cf2c333" -> "sha256:c02e09a3325ec9c3c9368b7eed23afb1af5f6bef5e259ce3ec5c70d620c25e13" [label=""];
  "sha256:c02e09a3325ec9c3c9368b7eed23afb1af5f6bef5e259ce3ec5c70d620c25e13" -> "sha256:9b9871127a7faa65fee347f07c5c1711bd0c6f32842092ab539be42a19f144c3" [label=""];
}

