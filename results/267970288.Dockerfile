[app/sources/267970288.Dockerfile]
digraph {
  "sha256:0a23f90f137301a0993b98828ae8caae243ad488a48a81525b40834aabd325eb" [label="local://context" shape="ellipse"];
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" [label="docker-image://docker.io/library/solaris:latest" shape="ellipse"];
  "sha256:59541e3ed3227b1a6a7a90388e4ed0d3f0664e98b0d8bab6b467e9d997e41916" [label="/bin/sh -c pkg install --accept \t\tgit \t\tgnu-coreutils \t\tgnu-make \t\tgnu-tar \t\tdiagnostic/top \t\tgolang \t\tlibrary/golang/* \t\tdeveloper/gcc-*" shape="box"];
  "sha256:5654660b40b1396626de2c1d1234e97e36e504cd0492cee51807e93ba4a13861" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:05a6a80705f6898e240b4f6ab353189b59f9548dc503271ff34b309c1a74a7da" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:8f2c7fb46c2d5e28670a601d1ef009c7bac66792fcd2f994cb02eb204e11c007" [label="sha256:8f2c7fb46c2d5e28670a601d1ef009c7bac66792fcd2f994cb02eb204e11c007" shape="plaintext"];
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" -> "sha256:59541e3ed3227b1a6a7a90388e4ed0d3f0664e98b0d8bab6b467e9d997e41916" [label=""];
  "sha256:59541e3ed3227b1a6a7a90388e4ed0d3f0664e98b0d8bab6b467e9d997e41916" -> "sha256:5654660b40b1396626de2c1d1234e97e36e504cd0492cee51807e93ba4a13861" [label=""];
  "sha256:5654660b40b1396626de2c1d1234e97e36e504cd0492cee51807e93ba4a13861" -> "sha256:05a6a80705f6898e240b4f6ab353189b59f9548dc503271ff34b309c1a74a7da" [label=""];
  "sha256:0a23f90f137301a0993b98828ae8caae243ad488a48a81525b40834aabd325eb" -> "sha256:05a6a80705f6898e240b4f6ab353189b59f9548dc503271ff34b309c1a74a7da" [label=""];
  "sha256:05a6a80705f6898e240b4f6ab353189b59f9548dc503271ff34b309c1a74a7da" -> "sha256:8f2c7fb46c2d5e28670a601d1ef009c7bac66792fcd2f994cb02eb204e11c007" [label=""];
}

