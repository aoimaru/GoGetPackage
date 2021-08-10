[app/sources/359403638.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2e348b50f7a327a4d0fa0243527e078fe9959998ee0eb79c29b703c2a921b6a4" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:a87ea8d2db580a4bfefc8f86c2e531bd2affe611034a7891e35231adfc732961" [label="/bin/sh -c apt-get -y install curl file gcc gcc-4.7-arm-linux-gnueabi" shape="box"];
  "sha256:2888e3656210ee5270b7d01e3b23a5790fe7f33e120c5e72b0435ac29e896f87" [label="/bin/sh -c ln -nsf /usr/bin/arm-linux-gnueabi-gcc-4.7             /usr/bin/arm-linux-gnueabi-gcc" shape="box"];
  "sha256:133b0238b281f26d265e87a600b9e9fedf2fc2a0da20a9ca401124fe90bd7d25" [label="local://context" shape="ellipse"];
  "sha256:e93fba7cdd29dfb8ff3457503c857989c494affce08e2f61cec61425f28772d6" [label="copy{src=/support/install-rust.sh, dest=/tmp/}" shape="note"];
  "sha256:116de156bb64b5a70bb25b563ae2ecf890808455e5d38632a6fe8f1833c95103" [label="/bin/sh -c sh /tmp/install-rust.sh arm-unknown-linux-gnueabi" shape="box"];
  "sha256:f33e60f1d599b8a6166940744cec6540a4086fb6a3b578a14c4c6b04be05c472" [label="copy{src=/arm-unknown-linux-gnueabi/cargo-config, dest=/.cargo/config}" shape="note"];
  "sha256:5ecfb868d6ab8c5ade6345aab9dd27982046db548b8f1572a40a18a98d819ed4" [label="sha256:5ecfb868d6ab8c5ade6345aab9dd27982046db548b8f1572a40a18a98d819ed4" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2e348b50f7a327a4d0fa0243527e078fe9959998ee0eb79c29b703c2a921b6a4" [label=""];
  "sha256:2e348b50f7a327a4d0fa0243527e078fe9959998ee0eb79c29b703c2a921b6a4" -> "sha256:a87ea8d2db580a4bfefc8f86c2e531bd2affe611034a7891e35231adfc732961" [label=""];
  "sha256:a87ea8d2db580a4bfefc8f86c2e531bd2affe611034a7891e35231adfc732961" -> "sha256:2888e3656210ee5270b7d01e3b23a5790fe7f33e120c5e72b0435ac29e896f87" [label=""];
  "sha256:2888e3656210ee5270b7d01e3b23a5790fe7f33e120c5e72b0435ac29e896f87" -> "sha256:e93fba7cdd29dfb8ff3457503c857989c494affce08e2f61cec61425f28772d6" [label=""];
  "sha256:133b0238b281f26d265e87a600b9e9fedf2fc2a0da20a9ca401124fe90bd7d25" -> "sha256:e93fba7cdd29dfb8ff3457503c857989c494affce08e2f61cec61425f28772d6" [label=""];
  "sha256:e93fba7cdd29dfb8ff3457503c857989c494affce08e2f61cec61425f28772d6" -> "sha256:116de156bb64b5a70bb25b563ae2ecf890808455e5d38632a6fe8f1833c95103" [label=""];
  "sha256:116de156bb64b5a70bb25b563ae2ecf890808455e5d38632a6fe8f1833c95103" -> "sha256:f33e60f1d599b8a6166940744cec6540a4086fb6a3b578a14c4c6b04be05c472" [label=""];
  "sha256:133b0238b281f26d265e87a600b9e9fedf2fc2a0da20a9ca401124fe90bd7d25" -> "sha256:f33e60f1d599b8a6166940744cec6540a4086fb6a3b578a14c4c6b04be05c472" [label=""];
  "sha256:f33e60f1d599b8a6166940744cec6540a4086fb6a3b578a14c4c6b04be05c472" -> "sha256:5ecfb868d6ab8c5ade6345aab9dd27982046db548b8f1572a40a18a98d819ed4" [label=""];
}

