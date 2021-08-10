[app/sources/472133749.Dockerfile]
digraph {
  "sha256:032492b653bf476a6c833707335ad8b26281f6c4b93f6e496e6da1ff5fa3dacf" [label="docker-image://gcr.io/distroless/base:latest@sha256:97f9cbf81590c7dd878d7e10c20116fa7488c2fb91b3c839df1ebdcb61ab13ca" shape="ellipse"];
  "sha256:961b7cdeaf15aeb718e4fbb113dcad015250fd04bd5a65e9729bd9f77293e87a" [label="docker-image://gcr.io/kaniko-project/executor:debug@sha256:fcccd2ab9f3892e33fc7f2e950c8e4fc665e7a4c66f6a9d70b300d7a2103592f" shape="ellipse"];
  "sha256:7a9981a41609d22504168f5071142323c9b4953b92a5047b7211f1f136a2f25a" [label="copy{src=/busybox, dest=/busybox}" shape="note"];
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" [label="docker-image://docker.io/library/buildpack-deps:stretch-curl" shape="ellipse"];
  "sha256:a97c2bb950355edb6e1babdfa19b2dfe436efd4965c9f14ddec1c556e3fb447b" [label="/bin/sh -c curl -L https://storage.googleapis.com/container-structure-test/v1.8.0/container-structure-test-linux-amd64 -o /container-structure-test &&   chmod +x /container-structure-test" shape="box"];
  "sha256:d713f1ceefa56943c793bb68e723ea7b3aa65c22b917f380eda94d328b969ed2" [label="copy{src=/container-structure-test, dest=/busybox/container-structure-test}" shape="note"];
  "sha256:4392ee57022f2403cba0f2af02a374f98b7d38fa978473bcd7ed277298e9d840" [label="sha256:4392ee57022f2403cba0f2af02a374f98b7d38fa978473bcd7ed277298e9d840" shape="plaintext"];
  "sha256:032492b653bf476a6c833707335ad8b26281f6c4b93f6e496e6da1ff5fa3dacf" -> "sha256:7a9981a41609d22504168f5071142323c9b4953b92a5047b7211f1f136a2f25a" [label=""];
  "sha256:961b7cdeaf15aeb718e4fbb113dcad015250fd04bd5a65e9729bd9f77293e87a" -> "sha256:7a9981a41609d22504168f5071142323c9b4953b92a5047b7211f1f136a2f25a" [label=""];
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" -> "sha256:a97c2bb950355edb6e1babdfa19b2dfe436efd4965c9f14ddec1c556e3fb447b" [label=""];
  "sha256:7a9981a41609d22504168f5071142323c9b4953b92a5047b7211f1f136a2f25a" -> "sha256:d713f1ceefa56943c793bb68e723ea7b3aa65c22b917f380eda94d328b969ed2" [label=""];
  "sha256:a97c2bb950355edb6e1babdfa19b2dfe436efd4965c9f14ddec1c556e3fb447b" -> "sha256:d713f1ceefa56943c793bb68e723ea7b3aa65c22b917f380eda94d328b969ed2" [label=""];
  "sha256:d713f1ceefa56943c793bb68e723ea7b3aa65c22b917f380eda94d328b969ed2" -> "sha256:4392ee57022f2403cba0f2af02a374f98b7d38fa978473bcd7ed277298e9d840" [label=""];
}

