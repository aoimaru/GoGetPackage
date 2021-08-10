[app/sources/345368456.Dockerfile]
digraph {
  "sha256:02279ec4deec8fac6c92257ecdf693b6c246c9d909eba2a2addcfd05f6d6a7cb" [label="docker-image://docker.io/balenalib/bananapi-m1-plus-debian:buster-build" shape="ellipse"];
  "sha256:fb6087f202b32601361f8c40ac876b78f5ab6007dd1bdf9f9dbf00da711b643b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:a9e96a9adab272bb6f7a6689cbb6c3903bd48c3f864b15a77f7d8780304db28c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:78bcc712075f2a6cab04634f9a84698df3501596407def436c0e22ab3a07111c" [label="mkdir{path=/go}" shape="note"];
  "sha256:2713879323b79fd2ecb02ee77ac3d9ab166da10b07915242a51b1f15d8c97faa" [label="sha256:2713879323b79fd2ecb02ee77ac3d9ab166da10b07915242a51b1f15d8c97faa" shape="plaintext"];
  "sha256:02279ec4deec8fac6c92257ecdf693b6c246c9d909eba2a2addcfd05f6d6a7cb" -> "sha256:fb6087f202b32601361f8c40ac876b78f5ab6007dd1bdf9f9dbf00da711b643b" [label=""];
  "sha256:fb6087f202b32601361f8c40ac876b78f5ab6007dd1bdf9f9dbf00da711b643b" -> "sha256:a9e96a9adab272bb6f7a6689cbb6c3903bd48c3f864b15a77f7d8780304db28c" [label=""];
  "sha256:a9e96a9adab272bb6f7a6689cbb6c3903bd48c3f864b15a77f7d8780304db28c" -> "sha256:78bcc712075f2a6cab04634f9a84698df3501596407def436c0e22ab3a07111c" [label=""];
  "sha256:78bcc712075f2a6cab04634f9a84698df3501596407def436c0e22ab3a07111c" -> "sha256:2713879323b79fd2ecb02ee77ac3d9ab166da10b07915242a51b1f15d8c97faa" [label=""];
}

