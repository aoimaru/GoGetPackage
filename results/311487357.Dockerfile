[app/sources/311487357.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:2c4517ad365abd94aa750e178ba22a5590cb94b0b27d1a521ed0ee1022dcfac1" [label="docker-image://docker.io/networkservicemesh/release:latest" shape="ellipse"];
  "sha256:8a0439c7b9f2b28de6d3706932e5177a6dc2d30dfd64eed35bbd29beb3674c1a" [label="copy{src=/go/bin/nsmdp, dest=/go/bin/nsmdp}" shape="note"];
  "sha256:78bdd3224639a8683ff36570191bc683c76d6e6162d79b3bc8fd49d6dd8d8f19" [label="sha256:78bdd3224639a8683ff36570191bc683c76d6e6162d79b3bc8fd49d6dd8d8f19" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:8a0439c7b9f2b28de6d3706932e5177a6dc2d30dfd64eed35bbd29beb3674c1a" [label=""];
  "sha256:2c4517ad365abd94aa750e178ba22a5590cb94b0b27d1a521ed0ee1022dcfac1" -> "sha256:8a0439c7b9f2b28de6d3706932e5177a6dc2d30dfd64eed35bbd29beb3674c1a" [label=""];
  "sha256:8a0439c7b9f2b28de6d3706932e5177a6dc2d30dfd64eed35bbd29beb3674c1a" -> "sha256:78bdd3224639a8683ff36570191bc683c76d6e6162d79b3bc8fd49d6dd8d8f19" [label=""];
}

