[app/sources/162892618.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:c98aacbdc7dc8649dc510f5e604a3d98fbcfa082f8cc423a3ebf04f673b61652" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c9f11e0a1c8a17145283e4ae4f16e741cf77c844cab1edc522dd8674ffdd84d7" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:e2120268d90045ba2c2e94dd8b56a15f33d694cedee15d7cb72a21e9f9605b89" [label="/bin/sh -c apt-get install privoxy -y" shape="box"];
  "sha256:ce654f8eb9e304f325d17398a6327cf130842e8d01551d4810603ec73051fb8e" [label="mkdir{path=/home/privoxy}" shape="note"];
  "sha256:fe04db014660a6c3a978fa5a6e6ca4b49db17ed5a6ec6570ecb36ceb5db7bdfb" [label="local://context" shape="ellipse"];
  "sha256:8f765e935f2cec6a013820085304054703ca0c5e80835368e1dc3fbc69126a00" [label="copy{src=/privoxy/config, dest=/etc/privoxy/config}" shape="note"];
  "sha256:7690545a860914695b768608481767f68bcdc5e5d28fb6c29dace899af89a465" [label="sha256:7690545a860914695b768608481767f68bcdc5e5d28fb6c29dace899af89a465" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:c98aacbdc7dc8649dc510f5e604a3d98fbcfa082f8cc423a3ebf04f673b61652" [label=""];
  "sha256:c98aacbdc7dc8649dc510f5e604a3d98fbcfa082f8cc423a3ebf04f673b61652" -> "sha256:c9f11e0a1c8a17145283e4ae4f16e741cf77c844cab1edc522dd8674ffdd84d7" [label=""];
  "sha256:c9f11e0a1c8a17145283e4ae4f16e741cf77c844cab1edc522dd8674ffdd84d7" -> "sha256:e2120268d90045ba2c2e94dd8b56a15f33d694cedee15d7cb72a21e9f9605b89" [label=""];
  "sha256:e2120268d90045ba2c2e94dd8b56a15f33d694cedee15d7cb72a21e9f9605b89" -> "sha256:ce654f8eb9e304f325d17398a6327cf130842e8d01551d4810603ec73051fb8e" [label=""];
  "sha256:ce654f8eb9e304f325d17398a6327cf130842e8d01551d4810603ec73051fb8e" -> "sha256:8f765e935f2cec6a013820085304054703ca0c5e80835368e1dc3fbc69126a00" [label=""];
  "sha256:fe04db014660a6c3a978fa5a6e6ca4b49db17ed5a6ec6570ecb36ceb5db7bdfb" -> "sha256:8f765e935f2cec6a013820085304054703ca0c5e80835368e1dc3fbc69126a00" [label=""];
  "sha256:8f765e935f2cec6a013820085304054703ca0c5e80835368e1dc3fbc69126a00" -> "sha256:7690545a860914695b768608481767f68bcdc5e5d28fb6c29dace899af89a465" [label=""];
}

