[app/sources/155621690.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7ce29315bba63cc8e9217ff27148eee7a9aea15cf4f34f67f16fe4901ef6341a" [label="/bin/sh -c dpkg-divert --local --rename --add /sbin/initctl   && ln -sFf /bin/true /sbin/initctl   && echo \"initscripts hold\" | dpkg --set-selections   && apt-get update -y   && apt-get install -y -qq --no-install-recommends     apt-transport-https     build-essential     curl     openssh-client     make     git-core     pkg-config     mercurial     ca-certificates   && update-ca-certificates --fresh   && curl -sLO https://storage.googleapis.com/golang/$GO_TARBALL   && bash -c \"test \\\"$(openssl sha1 $GO_TARBALL | awk '{print $2}')\\\" == '$TARBALL_SHA1_SUM'\"   && tar -C /usr/local -xzf $GO_TARBALL   && ln -sv /usr/local/go/bin/* /usr/local/bin   && rm -f $GO_TARBALL" shape="box"];
  "sha256:f631567f78c2a963c8fdda511bfd4ea694d14d3e9830bd46c6dfa9bde426f155" [label="mkdir{path=/app/src/github.com/winchman/builder-core}" shape="note"];
  "sha256:6ad85b8060150c8d90f5a8f119b960c0d44e6f9bb6bc99da992ef3e9bc8bafc8" [label="local://context" shape="ellipse"];
  "sha256:4f5a40812a6c1a6f16e6bad940b9f8e0faeae48877bf60de48bbfea88414eb0f" [label="copy{src=/, dest=/app/src/github.com/winchman/builder-core}" shape="note"];
  "sha256:a1103dab09a1c3769ecca3f17b571dbe244fa3fd925bf510e6b65217da4a123f" [label="/bin/sh -c ssh-keyscan github.com > /etc/ssh/ssh_known_hosts   && touch Makefile   && make build   && rm -rf $GOPATH/src   && rm -rf $GOPATH/pkg   && rm -f $GOPATH/bin/deppy" shape="box"];
  "sha256:8d06fee7abf70dddc28e5fff0a2c350e05d847083bfd6da528320867bc31eea9" [label="sha256:8d06fee7abf70dddc28e5fff0a2c350e05d847083bfd6da528320867bc31eea9" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7ce29315bba63cc8e9217ff27148eee7a9aea15cf4f34f67f16fe4901ef6341a" [label=""];
  "sha256:7ce29315bba63cc8e9217ff27148eee7a9aea15cf4f34f67f16fe4901ef6341a" -> "sha256:f631567f78c2a963c8fdda511bfd4ea694d14d3e9830bd46c6dfa9bde426f155" [label=""];
  "sha256:f631567f78c2a963c8fdda511bfd4ea694d14d3e9830bd46c6dfa9bde426f155" -> "sha256:4f5a40812a6c1a6f16e6bad940b9f8e0faeae48877bf60de48bbfea88414eb0f" [label=""];
  "sha256:6ad85b8060150c8d90f5a8f119b960c0d44e6f9bb6bc99da992ef3e9bc8bafc8" -> "sha256:4f5a40812a6c1a6f16e6bad940b9f8e0faeae48877bf60de48bbfea88414eb0f" [label=""];
  "sha256:4f5a40812a6c1a6f16e6bad940b9f8e0faeae48877bf60de48bbfea88414eb0f" -> "sha256:a1103dab09a1c3769ecca3f17b571dbe244fa3fd925bf510e6b65217da4a123f" [label=""];
  "sha256:a1103dab09a1c3769ecca3f17b571dbe244fa3fd925bf510e6b65217da4a123f" -> "sha256:8d06fee7abf70dddc28e5fff0a2c350e05d847083bfd6da528320867bc31eea9" [label=""];
}

