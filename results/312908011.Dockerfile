[app/sources/312908011.Dockerfile]
digraph {
  "sha256:527c6632179c0f960354cff64a839c45214021bdc41574c73e8ef84bffa153db" [label="docker-image://docker.io/library/golang:1.12@sha256:d0e79a9c39cdb3d71cc45fec929d1308d50420b79201467ec602b1b80cc314a8" shape="ellipse"];
  "sha256:acbeec1dcdd232fa689b7e0ef7fb518c1778bdc03dd7c3cf7ff43cf376eeb02f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tlibicu-dev \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:de1e13ffd5a8afd4ca34382998aada0e817ef29f0dc26fd84c374af62b025f71" [label="/bin/sh -c go get github.com/mattn/goveralls" shape="box"];
  "sha256:c4c811ef6d4feea9453c5739a28504012e5008bb87ee99cbd89eed1408a0f887" [label="/bin/sh -c go get github.com/haya14busa/goverage" shape="box"];
  "sha256:89dfbd382ae77ea11e39ad935b79961a7f6e56d33a20bd7a5288a57164f78367" [label="/bin/sh -c go get golang.org/x/lint/golint" shape="box"];
  "sha256:fb84942c3d1a307535527db5690eb317b6bb84f2ccd8d19f1db93326dbea1aa8" [label="/bin/sh -c go get github.com/haya14busa/reviewdog/cmd/reviewdog" shape="box"];
  "sha256:e77ff80cfde97214fccc2f7b2194a5126355a7617440134f1f83cbc1b0d4c689" [label="mkdir{path=/go}" shape="note"];
  "sha256:5701b98cc67c45a27737ff8be391c2d46188084d34245a686bda22f6b8cf3f27" [label="sha256:5701b98cc67c45a27737ff8be391c2d46188084d34245a686bda22f6b8cf3f27" shape="plaintext"];
  "sha256:527c6632179c0f960354cff64a839c45214021bdc41574c73e8ef84bffa153db" -> "sha256:acbeec1dcdd232fa689b7e0ef7fb518c1778bdc03dd7c3cf7ff43cf376eeb02f" [label=""];
  "sha256:acbeec1dcdd232fa689b7e0ef7fb518c1778bdc03dd7c3cf7ff43cf376eeb02f" -> "sha256:de1e13ffd5a8afd4ca34382998aada0e817ef29f0dc26fd84c374af62b025f71" [label=""];
  "sha256:de1e13ffd5a8afd4ca34382998aada0e817ef29f0dc26fd84c374af62b025f71" -> "sha256:c4c811ef6d4feea9453c5739a28504012e5008bb87ee99cbd89eed1408a0f887" [label=""];
  "sha256:c4c811ef6d4feea9453c5739a28504012e5008bb87ee99cbd89eed1408a0f887" -> "sha256:89dfbd382ae77ea11e39ad935b79961a7f6e56d33a20bd7a5288a57164f78367" [label=""];
  "sha256:89dfbd382ae77ea11e39ad935b79961a7f6e56d33a20bd7a5288a57164f78367" -> "sha256:fb84942c3d1a307535527db5690eb317b6bb84f2ccd8d19f1db93326dbea1aa8" [label=""];
  "sha256:fb84942c3d1a307535527db5690eb317b6bb84f2ccd8d19f1db93326dbea1aa8" -> "sha256:e77ff80cfde97214fccc2f7b2194a5126355a7617440134f1f83cbc1b0d4c689" [label=""];
  "sha256:e77ff80cfde97214fccc2f7b2194a5126355a7617440134f1f83cbc1b0d4c689" -> "sha256:5701b98cc67c45a27737ff8be391c2d46188084d34245a686bda22f6b8cf3f27" [label=""];
}

