[app/sources/246186483.Dockerfile]
digraph {
  "sha256:e0d271bcd484959ecefab77a805800c3fae51ffbe840cb4daf0881b4a5f6fe8c" [label="docker-image://docker.io/library/golang:1.8.0" shape="ellipse"];
  "sha256:cf4daa9b0ca28f888ec95c01af753b9a281dbdfe2f49c4e68624af407a21b6bf" [label="/bin/sh -c go get -u github.com/kardianos/govendor" shape="box"];
  "sha256:cf218197e61912adeaf39304a3c9e779af9835e5523847ee22375aa027565e05" [label="/bin/sh -c go get github.com/onsi/ginkgo/ginkgo" shape="box"];
  "sha256:d99c2b7da9b8aaa5aae37e7e9b736a54fc1bce064f372ad4f031dd23d45a1376" [label="/bin/sh -c go get github.com/onsi/gomega" shape="box"];
  "sha256:afe4b7c08ba9de3ce87f238f423f2957743e837fc3215395005cc2f8afe34a61" [label="local://context" shape="ellipse"];
  "sha256:8737328c8a6d42c6bd245c3b5d62f93b1535f06c16c06d78619068a9ba54da4f" [label="copy{src=/, dest=/go/src/banku}" shape="note"];
  "sha256:da1e9712efb49ad3521581e1b02043c0684886885dab47639a087eeb084c7847" [label="mkdir{path=/go/src/banku}" shape="note"];
  "sha256:2eecd90c0e7c20bf9be71aced68834cf925327ee3ac43bc8c315164d25a92cff" [label="/bin/sh -c govendor sync" shape="box"];
  "sha256:43cf88300be3e453d5a62e72096efb219edecfd4d93cdd9e2125c03eb7186c8d" [label="sha256:43cf88300be3e453d5a62e72096efb219edecfd4d93cdd9e2125c03eb7186c8d" shape="plaintext"];
  "sha256:e0d271bcd484959ecefab77a805800c3fae51ffbe840cb4daf0881b4a5f6fe8c" -> "sha256:cf4daa9b0ca28f888ec95c01af753b9a281dbdfe2f49c4e68624af407a21b6bf" [label=""];
  "sha256:cf4daa9b0ca28f888ec95c01af753b9a281dbdfe2f49c4e68624af407a21b6bf" -> "sha256:cf218197e61912adeaf39304a3c9e779af9835e5523847ee22375aa027565e05" [label=""];
  "sha256:cf218197e61912adeaf39304a3c9e779af9835e5523847ee22375aa027565e05" -> "sha256:d99c2b7da9b8aaa5aae37e7e9b736a54fc1bce064f372ad4f031dd23d45a1376" [label=""];
  "sha256:d99c2b7da9b8aaa5aae37e7e9b736a54fc1bce064f372ad4f031dd23d45a1376" -> "sha256:8737328c8a6d42c6bd245c3b5d62f93b1535f06c16c06d78619068a9ba54da4f" [label=""];
  "sha256:afe4b7c08ba9de3ce87f238f423f2957743e837fc3215395005cc2f8afe34a61" -> "sha256:8737328c8a6d42c6bd245c3b5d62f93b1535f06c16c06d78619068a9ba54da4f" [label=""];
  "sha256:8737328c8a6d42c6bd245c3b5d62f93b1535f06c16c06d78619068a9ba54da4f" -> "sha256:da1e9712efb49ad3521581e1b02043c0684886885dab47639a087eeb084c7847" [label=""];
  "sha256:da1e9712efb49ad3521581e1b02043c0684886885dab47639a087eeb084c7847" -> "sha256:2eecd90c0e7c20bf9be71aced68834cf925327ee3ac43bc8c315164d25a92cff" [label=""];
  "sha256:2eecd90c0e7c20bf9be71aced68834cf925327ee3ac43bc8c315164d25a92cff" -> "sha256:43cf88300be3e453d5a62e72096efb219edecfd4d93cdd9e2125c03eb7186c8d" [label=""];
}

