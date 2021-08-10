[app/sources/240351546.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:0864922fe2846f6e8f842b072bb222189f4ad3976d877286ebf8e9bf7b217158" [label="/bin/sh -c npm install -g grunt" shape="box"];
  "sha256:39fc180ce6248f9a7ea3cbd909538a084210be330b48c46c45a08d70a1ca8b02" [label="local://context" shape="ellipse"];
  "sha256:e97c68e6aea9c4306c0c1edea8f3b3a633ad4aab61d3cfacd500641bf0041c0a" [label="copy{src=/package.json, dest=/usr/src/app/package.json}" shape="note"];
  "sha256:416d6aa7c7fd5a18895baa2e2003d450f2e7054083d4d91a4a72b711b10217fa" [label="/bin/sh -c npm install" shape="box"];
  "sha256:88db81182e8c481b7c97204b75a14e0ebd239f4b43235d0d6855516597660a74" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:2c776448f881f9a43e2e86dcf9e65d477d89430d72527c6600dd955957bb1a41" [label="sha256:2c776448f881f9a43e2e86dcf9e65d477d89430d72527c6600dd955957bb1a41" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label=""];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" -> "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" [label=""];
  "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" -> "sha256:0864922fe2846f6e8f842b072bb222189f4ad3976d877286ebf8e9bf7b217158" [label=""];
  "sha256:0864922fe2846f6e8f842b072bb222189f4ad3976d877286ebf8e9bf7b217158" -> "sha256:e97c68e6aea9c4306c0c1edea8f3b3a633ad4aab61d3cfacd500641bf0041c0a" [label=""];
  "sha256:39fc180ce6248f9a7ea3cbd909538a084210be330b48c46c45a08d70a1ca8b02" -> "sha256:e97c68e6aea9c4306c0c1edea8f3b3a633ad4aab61d3cfacd500641bf0041c0a" [label=""];
  "sha256:e97c68e6aea9c4306c0c1edea8f3b3a633ad4aab61d3cfacd500641bf0041c0a" -> "sha256:416d6aa7c7fd5a18895baa2e2003d450f2e7054083d4d91a4a72b711b10217fa" [label=""];
  "sha256:416d6aa7c7fd5a18895baa2e2003d450f2e7054083d4d91a4a72b711b10217fa" -> "sha256:88db81182e8c481b7c97204b75a14e0ebd239f4b43235d0d6855516597660a74" [label=""];
  "sha256:39fc180ce6248f9a7ea3cbd909538a084210be330b48c46c45a08d70a1ca8b02" -> "sha256:88db81182e8c481b7c97204b75a14e0ebd239f4b43235d0d6855516597660a74" [label=""];
  "sha256:88db81182e8c481b7c97204b75a14e0ebd239f4b43235d0d6855516597660a74" -> "sha256:2c776448f881f9a43e2e86dcf9e65d477d89430d72527c6600dd955957bb1a41" [label=""];
}

