[app/sources/293006869.Dockerfile]
digraph {
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" [label="docker-image://docker.io/library/solaris:latest" shape="ellipse"];
  "sha256:59541e3ed3227b1a6a7a90388e4ed0d3f0664e98b0d8bab6b467e9d997e41916" [label="/bin/sh -c pkg install --accept \t\tgit \t\tgnu-coreutils \t\tgnu-make \t\tgnu-tar \t\tdiagnostic/top \t\tgolang \t\tlibrary/golang/* \t\tdeveloper/gcc-*" shape="box"];
  "sha256:5654660b40b1396626de2c1d1234e97e36e504cd0492cee51807e93ba4a13861" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:5a3da78af267376cef8dc98ea622477ab57cba8e3de5d0bf496b24d68ca2abe0" [label="local://context" shape="ellipse"];
  "sha256:50b1e9eaeb8b0472243d98c2f274e58f040a4ddab4bf997be24ae90d996e8c0d" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:86f7b1fb474acbcafe79c9623ecde05a5d048481399e3fc4f62b81ec594d591c" [label="sha256:86f7b1fb474acbcafe79c9623ecde05a5d048481399e3fc4f62b81ec594d591c" shape="plaintext"];
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" -> "sha256:59541e3ed3227b1a6a7a90388e4ed0d3f0664e98b0d8bab6b467e9d997e41916" [label=""];
  "sha256:59541e3ed3227b1a6a7a90388e4ed0d3f0664e98b0d8bab6b467e9d997e41916" -> "sha256:5654660b40b1396626de2c1d1234e97e36e504cd0492cee51807e93ba4a13861" [label=""];
  "sha256:5654660b40b1396626de2c1d1234e97e36e504cd0492cee51807e93ba4a13861" -> "sha256:50b1e9eaeb8b0472243d98c2f274e58f040a4ddab4bf997be24ae90d996e8c0d" [label=""];
  "sha256:5a3da78af267376cef8dc98ea622477ab57cba8e3de5d0bf496b24d68ca2abe0" -> "sha256:50b1e9eaeb8b0472243d98c2f274e58f040a4ddab4bf997be24ae90d996e8c0d" [label=""];
  "sha256:50b1e9eaeb8b0472243d98c2f274e58f040a4ddab4bf997be24ae90d996e8c0d" -> "sha256:86f7b1fb474acbcafe79c9623ecde05a5d048481399e3fc4f62b81ec594d591c" [label=""];
}

