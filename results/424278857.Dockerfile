[app/sources/424278857.Dockerfile]
digraph {
  "sha256:a9cea5832c2f1821c82cef33e32060b9f146700ac2266fbd1e4867ce3c854d38" [label="docker-image://docker.io/cfretz244/libdart_ci:bebuilder" shape="ellipse"];
  "sha256:fdecd9bde3a26b5c1ac34653fb9abf5c16ce9213365f05137947eb22633e89b8" [label="/bin/bash --login -c apt-get install -y curl" shape="box"];
  "sha256:a8b9f48c9e1058c2a64bfdfaa259f4ca66399cad70a335641c5a571d974f585b" [label="/bin/bash --login -c BUILD_DIR=$(mktemp -d)                                                                  && pushd $BUILD_DIR                                                                       && curl -sL \"https://github.com/Tencent/rapidjson/archive/v1.1.0.tar.gz\" | tar xzf -      && cd rapidjson-1.1.0                                                                     && cp -r include/rapidjson /usr/local/include                                             && popd                                                                                   && rm -rf $BUILD_DIR" shape="box"];
  "sha256:4bcb8290feb7fcbbc9991405ba3f6893dcd4aa6583aa2757a3ec382e8077fb07" [label="local://context" shape="ellipse"];
  "sha256:37303e6e6d72c6c510c5a200a12ada7d190dbc471a186934d32bdd82f3344f9a" [label="copy{src=/, dest=/root/libdart}" shape="note"];
  "sha256:8a908903b5a5cc68dd0414c87ccafde755ca68ab6d5447ac96ffa140c5a27c1a" [label="sha256:8a908903b5a5cc68dd0414c87ccafde755ca68ab6d5447ac96ffa140c5a27c1a" shape="plaintext"];
  "sha256:a9cea5832c2f1821c82cef33e32060b9f146700ac2266fbd1e4867ce3c854d38" -> "sha256:fdecd9bde3a26b5c1ac34653fb9abf5c16ce9213365f05137947eb22633e89b8" [label=""];
  "sha256:fdecd9bde3a26b5c1ac34653fb9abf5c16ce9213365f05137947eb22633e89b8" -> "sha256:a8b9f48c9e1058c2a64bfdfaa259f4ca66399cad70a335641c5a571d974f585b" [label=""];
  "sha256:a8b9f48c9e1058c2a64bfdfaa259f4ca66399cad70a335641c5a571d974f585b" -> "sha256:37303e6e6d72c6c510c5a200a12ada7d190dbc471a186934d32bdd82f3344f9a" [label=""];
  "sha256:4bcb8290feb7fcbbc9991405ba3f6893dcd4aa6583aa2757a3ec382e8077fb07" -> "sha256:37303e6e6d72c6c510c5a200a12ada7d190dbc471a186934d32bdd82f3344f9a" [label=""];
  "sha256:37303e6e6d72c6c510c5a200a12ada7d190dbc471a186934d32bdd82f3344f9a" -> "sha256:8a908903b5a5cc68dd0414c87ccafde755ca68ab6d5447ac96ffa140c5a27c1a" [label=""];
}

