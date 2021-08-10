[app/sources/361983833.Dockerfile]
digraph {
  "sha256:6ab170245b2885adcf685a5c091222fce739739a51924bb919506d842459f82c" [label="local://context" shape="ellipse"];
  "sha256:2d105d7d1f9dbc50bc49a10733461a59c633766110ba29938de070793db34f23" [label="docker-image://docker.io/aarch64/ubuntu:xenial" shape="ellipse"];
  "sha256:974199d4c7a11e605be150e5047fa8940d3b072e088a0a37c0abe884bc86e455" [label="/bin/sh -c apt-get update && apt-get install -y git golang-go" shape="box"];
  "sha256:c174591b37258ba363fbb7f4439b9ff767f2470518d69bdd43fcad5f7f5af046" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:8e92fe58212dbf834c342dd4ecaa9fa02c0846e34ec4d1c13ac4479f297be3ed" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:6292eabfdca631917a011d3a46385c58f02e33b8c41b82a93f5be9968b527bc8" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:f1c77bef79e25f1534e0e18e4746173cdb399c434f8939ea4bdb5365039855ad" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:ebee75f04d70ada5b291f920b36ed1b4b0e9b09ed72db1155afb2e2ff4add169" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:3ef3530d286c9101d2a5d11b5d5ed888ae42c727803e469f7e73499a99ead29d" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:368ca68b4b3d1fbdc99684d5e74dcb37dbb08711cae81be05afb4e90ce3d87d0" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:f41b073f47c6ef6c071b963c6d648c7f25b7c5d60a13edbc08682024616c08a2" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:7eb7671e6ae21fda5b496b5c7958e926f58c95e18fcf97a96b0c498647cd648e" [label="sha256:7eb7671e6ae21fda5b496b5c7958e926f58c95e18fcf97a96b0c498647cd648e" shape="plaintext"];
  "sha256:2d105d7d1f9dbc50bc49a10733461a59c633766110ba29938de070793db34f23" -> "sha256:974199d4c7a11e605be150e5047fa8940d3b072e088a0a37c0abe884bc86e455" [label=""];
  "sha256:974199d4c7a11e605be150e5047fa8940d3b072e088a0a37c0abe884bc86e455" -> "sha256:c174591b37258ba363fbb7f4439b9ff767f2470518d69bdd43fcad5f7f5af046" [label=""];
  "sha256:c174591b37258ba363fbb7f4439b9ff767f2470518d69bdd43fcad5f7f5af046" -> "sha256:8e92fe58212dbf834c342dd4ecaa9fa02c0846e34ec4d1c13ac4479f297be3ed" [label=""];
  "sha256:8e92fe58212dbf834c342dd4ecaa9fa02c0846e34ec4d1c13ac4479f297be3ed" -> "sha256:6292eabfdca631917a011d3a46385c58f02e33b8c41b82a93f5be9968b527bc8" [label=""];
  "sha256:6ab170245b2885adcf685a5c091222fce739739a51924bb919506d842459f82c" -> "sha256:6292eabfdca631917a011d3a46385c58f02e33b8c41b82a93f5be9968b527bc8" [label=""];
  "sha256:6292eabfdca631917a011d3a46385c58f02e33b8c41b82a93f5be9968b527bc8" -> "sha256:f1c77bef79e25f1534e0e18e4746173cdb399c434f8939ea4bdb5365039855ad" [label=""];
  "sha256:6ab170245b2885adcf685a5c091222fce739739a51924bb919506d842459f82c" -> "sha256:f1c77bef79e25f1534e0e18e4746173cdb399c434f8939ea4bdb5365039855ad" [label=""];
  "sha256:f1c77bef79e25f1534e0e18e4746173cdb399c434f8939ea4bdb5365039855ad" -> "sha256:ebee75f04d70ada5b291f920b36ed1b4b0e9b09ed72db1155afb2e2ff4add169" [label=""];
  "sha256:ebee75f04d70ada5b291f920b36ed1b4b0e9b09ed72db1155afb2e2ff4add169" -> "sha256:3ef3530d286c9101d2a5d11b5d5ed888ae42c727803e469f7e73499a99ead29d" [label=""];
  "sha256:3ef3530d286c9101d2a5d11b5d5ed888ae42c727803e469f7e73499a99ead29d" -> "sha256:368ca68b4b3d1fbdc99684d5e74dcb37dbb08711cae81be05afb4e90ce3d87d0" [label=""];
  "sha256:368ca68b4b3d1fbdc99684d5e74dcb37dbb08711cae81be05afb4e90ce3d87d0" -> "sha256:f41b073f47c6ef6c071b963c6d648c7f25b7c5d60a13edbc08682024616c08a2" [label=""];
  "sha256:f41b073f47c6ef6c071b963c6d648c7f25b7c5d60a13edbc08682024616c08a2" -> "sha256:7eb7671e6ae21fda5b496b5c7958e926f58c95e18fcf97a96b0c498647cd648e" [label=""];
}

