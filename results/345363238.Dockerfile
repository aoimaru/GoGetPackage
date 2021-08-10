[app/sources/345363238.Dockerfile]
digraph {
  "sha256:e14a9fbda5ac8879efbf52c3075bedc5b8a25964534cd73f32ef47d6ac66daec" [label="docker-image://docker.io/balenalib/am571x-evm-debian:jessie-build" shape="ellipse"];
  "sha256:3734f98a8dce571098cdc92823eda602f5651ced9158a65455dd81f02c47db5c" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:2b56565697cb265d35df8274041d804c146428672389f74e559846a7c6aadf3b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:76be3458e66024c826edc150dcdc60b230fac907889b5c1e3c39f8f2746ca1c5" [label="mkdir{path=/go}" shape="note"];
  "sha256:756c021b6422cc1604acc1fe9d9ef8e019ba75d768adff0595bb0a48bac32713" [label="sha256:756c021b6422cc1604acc1fe9d9ef8e019ba75d768adff0595bb0a48bac32713" shape="plaintext"];
  "sha256:e14a9fbda5ac8879efbf52c3075bedc5b8a25964534cd73f32ef47d6ac66daec" -> "sha256:3734f98a8dce571098cdc92823eda602f5651ced9158a65455dd81f02c47db5c" [label=""];
  "sha256:3734f98a8dce571098cdc92823eda602f5651ced9158a65455dd81f02c47db5c" -> "sha256:2b56565697cb265d35df8274041d804c146428672389f74e559846a7c6aadf3b" [label=""];
  "sha256:2b56565697cb265d35df8274041d804c146428672389f74e559846a7c6aadf3b" -> "sha256:76be3458e66024c826edc150dcdc60b230fac907889b5c1e3c39f8f2746ca1c5" [label=""];
  "sha256:76be3458e66024c826edc150dcdc60b230fac907889b5c1e3c39f8f2746ca1c5" -> "sha256:756c021b6422cc1604acc1fe9d9ef8e019ba75d768adff0595bb0a48bac32713" [label=""];
}

