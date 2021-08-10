[app/sources/470775248.Dockerfile]
digraph {
  "sha256:4323167c14668c28cd7fe6f4c4c7ab7a0dc4adef6822cdd4f3dc27ddce83f563" [label="docker-image://docker.io/library/mxnet.build.ubuntu-17.04:latest" shape="ellipse"];
  "sha256:cea60c64dec9ad789608b0ea8fcac1b72bb902b9c921097954145a7eaec52ed4" [label="mkdir{path=/work}" shape="note"];
  "sha256:2db7baf45e90ec0500a1b74b17895897d3d5a159cab0e858c98140263887d412" [label="/bin/sh -c wget --quiet http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.deb" shape="box"];
  "sha256:c6392e18e22709b2682973532f277c894082b0a8c04331cf87ff4541ba9d4769" [label="/bin/sh -c dpkg -i scala-2.11.8.deb && rm scala-2.11.8.deb" shape="box"];
  "sha256:d365420f86bdd6688d13c24ee8a0a4aaaaae2fa5c2aa2cd1d4d0ca854957ee57" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:fe4cea8b7c5aeefda4f4d732c908f91adac8362b38d35b8af6b2b3c5409671ec" [label="/bin/sh -c make scalapkg $BUILD_OPTS" shape="box"];
  "sha256:0e9794895db1a68b9e5cacd50c1cf6ad3633bb36146d53da986f54f9f0969dcb" [label="mkdir{path=/work/build/scala}" shape="note"];
  "sha256:09cd58c73744d9a6a4f89cda1d818f80ec4b055b1c7b824aa0adc514067cce3c" [label="/bin/sh -c cp /work/mxnet/scala-package/core/target/*.jar ." shape="box"];
  "sha256:b3b8bc95be5de0e3d0d5b63976597a9aada5cf540664687ba8a87e55bf78caf4" [label="/bin/sh -c cp /work/mxnet/scala-package/assembly/linux-x86_64-cpu/target/*.jar ." shape="box"];
  "sha256:26142cb6f34599572137816d97fd772db3f408cdffbfa50941a7c676ac66500a" [label="sha256:26142cb6f34599572137816d97fd772db3f408cdffbfa50941a7c676ac66500a" shape="plaintext"];
  "sha256:4323167c14668c28cd7fe6f4c4c7ab7a0dc4adef6822cdd4f3dc27ddce83f563" -> "sha256:cea60c64dec9ad789608b0ea8fcac1b72bb902b9c921097954145a7eaec52ed4" [label=""];
  "sha256:cea60c64dec9ad789608b0ea8fcac1b72bb902b9c921097954145a7eaec52ed4" -> "sha256:2db7baf45e90ec0500a1b74b17895897d3d5a159cab0e858c98140263887d412" [label=""];
  "sha256:2db7baf45e90ec0500a1b74b17895897d3d5a159cab0e858c98140263887d412" -> "sha256:c6392e18e22709b2682973532f277c894082b0a8c04331cf87ff4541ba9d4769" [label=""];
  "sha256:c6392e18e22709b2682973532f277c894082b0a8c04331cf87ff4541ba9d4769" -> "sha256:d365420f86bdd6688d13c24ee8a0a4aaaaae2fa5c2aa2cd1d4d0ca854957ee57" [label=""];
  "sha256:d365420f86bdd6688d13c24ee8a0a4aaaaae2fa5c2aa2cd1d4d0ca854957ee57" -> "sha256:fe4cea8b7c5aeefda4f4d732c908f91adac8362b38d35b8af6b2b3c5409671ec" [label=""];
  "sha256:fe4cea8b7c5aeefda4f4d732c908f91adac8362b38d35b8af6b2b3c5409671ec" -> "sha256:0e9794895db1a68b9e5cacd50c1cf6ad3633bb36146d53da986f54f9f0969dcb" [label=""];
  "sha256:0e9794895db1a68b9e5cacd50c1cf6ad3633bb36146d53da986f54f9f0969dcb" -> "sha256:09cd58c73744d9a6a4f89cda1d818f80ec4b055b1c7b824aa0adc514067cce3c" [label=""];
  "sha256:09cd58c73744d9a6a4f89cda1d818f80ec4b055b1c7b824aa0adc514067cce3c" -> "sha256:b3b8bc95be5de0e3d0d5b63976597a9aada5cf540664687ba8a87e55bf78caf4" [label=""];
  "sha256:b3b8bc95be5de0e3d0d5b63976597a9aada5cf540664687ba8a87e55bf78caf4" -> "sha256:26142cb6f34599572137816d97fd772db3f408cdffbfa50941a7c676ac66500a" [label=""];
}

