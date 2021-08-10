[app/sources/363906828.Dockerfile]
digraph {
  "sha256:c21e3000c8c29ff36eacd43e7ee132c93e0315847baef971a8b158cf9b098f8e" [label="docker-image://docker.io/tozd/meteor:ubuntu-xenial" shape="ellipse"];
  "sha256:ff7fa82ffe2b4620bffbd692bcbed13a79e81bbc14925a59bdaf7738e090d1e9" [label="local://context" shape="ellipse"];
  "sha256:c20b56c4bc9e731e8c2749be6ab1726b0e0cead3a799c9c213d125c8574567be" [label="copy{src=/docker/etc, dest=/etc}" shape="note"];
  "sha256:9d65214faac5798fff44eea7a256035b1d7debe80df8201aa4507d214617288f" [label="sha256:9d65214faac5798fff44eea7a256035b1d7debe80df8201aa4507d214617288f" shape="plaintext"];
  "sha256:c21e3000c8c29ff36eacd43e7ee132c93e0315847baef971a8b158cf9b098f8e" -> "sha256:c20b56c4bc9e731e8c2749be6ab1726b0e0cead3a799c9c213d125c8574567be" [label=""];
  "sha256:ff7fa82ffe2b4620bffbd692bcbed13a79e81bbc14925a59bdaf7738e090d1e9" -> "sha256:c20b56c4bc9e731e8c2749be6ab1726b0e0cead3a799c9c213d125c8574567be" [label=""];
  "sha256:c20b56c4bc9e731e8c2749be6ab1726b0e0cead3a799c9c213d125c8574567be" -> "sha256:9d65214faac5798fff44eea7a256035b1d7debe80df8201aa4507d214617288f" [label=""];
}

