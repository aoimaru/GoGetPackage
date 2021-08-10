[app/sources/345357631.Dockerfile]
digraph {
  "sha256:6cab0273e48687749b668d4a028f9b5c78ac694c6ee46c93a68a4ce8ec6d0f3a" [label="docker-image://docker.io/balenalib/parallella-fedora:29-run" shape="ellipse"];
  "sha256:2176c4bbedb54ca5f12d323e898f0e51222c92426b3a82653c369397a1fff731" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:504f4f318dcd4debeec4e0f5973a4e938c65c0b8b832f014c5afddff13c99a8e" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:24e4ce7cbd1d577f870c1720047e8e944153ce76fa2976e230f337063dec5084" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4df6bdaf28480eafed6ac1d7e5eae22a99d585fdcc0c9eb48fa00b2391b48908" [label="mkdir{path=/go}" shape="note"];
  "sha256:880359945fea3e34dd03f7762d5a2b77b00421d6bad609754687d95b0a52f3bc" [label="sha256:880359945fea3e34dd03f7762d5a2b77b00421d6bad609754687d95b0a52f3bc" shape="plaintext"];
  "sha256:6cab0273e48687749b668d4a028f9b5c78ac694c6ee46c93a68a4ce8ec6d0f3a" -> "sha256:2176c4bbedb54ca5f12d323e898f0e51222c92426b3a82653c369397a1fff731" [label=""];
  "sha256:2176c4bbedb54ca5f12d323e898f0e51222c92426b3a82653c369397a1fff731" -> "sha256:504f4f318dcd4debeec4e0f5973a4e938c65c0b8b832f014c5afddff13c99a8e" [label=""];
  "sha256:504f4f318dcd4debeec4e0f5973a4e938c65c0b8b832f014c5afddff13c99a8e" -> "sha256:24e4ce7cbd1d577f870c1720047e8e944153ce76fa2976e230f337063dec5084" [label=""];
  "sha256:24e4ce7cbd1d577f870c1720047e8e944153ce76fa2976e230f337063dec5084" -> "sha256:4df6bdaf28480eafed6ac1d7e5eae22a99d585fdcc0c9eb48fa00b2391b48908" [label=""];
  "sha256:4df6bdaf28480eafed6ac1d7e5eae22a99d585fdcc0c9eb48fa00b2391b48908" -> "sha256:880359945fea3e34dd03f7762d5a2b77b00421d6bad609754687d95b0a52f3bc" [label=""];
}

