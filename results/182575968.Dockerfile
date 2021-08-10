[app/sources/182575968.Dockerfile]
digraph {
  "sha256:b600466d588429b88371a4e7c3f7133b4efb4b8113420f5f35afb3881792ddb9" [label="docker-image://docker.io/meteorhacks/meteord:base" shape="ellipse"];
  "sha256:30dcf4988ff38ae4ce202040f58bbd1d59f0a082d8162a90cc8d16e1c3a8a954" [label="local://context" shape="ellipse"];
  "sha256:dfb01c8b83a83c09aed7262629b231bf497b48fb180af93f557ee53d5b81d1dd" [label="copy{src=/scripts/install_binbuild_tools.sh, dest=/install_binbuild_tools.sh}" shape="note"];
  "sha256:94e73dc32f7ef673175262d9f9cce4d3c11faea6246175d9a857095e48f30b6f" [label="copy{src=/scripts/rebuild_npm_modules.sh, dest=/rebuild_npm_modules.sh}" shape="note"];
  "sha256:5f9f764ad4beb5c3036310e5c85bee28d01ab1c211ef9c5c45d7497fb4685b20" [label="/bin/sh -c bash $METEORD_DIR/install_binbuild_tools.sh" shape="box"];
  "sha256:a88ac1a353d64eeeffe667b2ed0dedbf03707f81af142fe18d8cb090881ea71e" [label="sha256:a88ac1a353d64eeeffe667b2ed0dedbf03707f81af142fe18d8cb090881ea71e" shape="plaintext"];
  "sha256:b600466d588429b88371a4e7c3f7133b4efb4b8113420f5f35afb3881792ddb9" -> "sha256:dfb01c8b83a83c09aed7262629b231bf497b48fb180af93f557ee53d5b81d1dd" [label=""];
  "sha256:30dcf4988ff38ae4ce202040f58bbd1d59f0a082d8162a90cc8d16e1c3a8a954" -> "sha256:dfb01c8b83a83c09aed7262629b231bf497b48fb180af93f557ee53d5b81d1dd" [label=""];
  "sha256:dfb01c8b83a83c09aed7262629b231bf497b48fb180af93f557ee53d5b81d1dd" -> "sha256:94e73dc32f7ef673175262d9f9cce4d3c11faea6246175d9a857095e48f30b6f" [label=""];
  "sha256:30dcf4988ff38ae4ce202040f58bbd1d59f0a082d8162a90cc8d16e1c3a8a954" -> "sha256:94e73dc32f7ef673175262d9f9cce4d3c11faea6246175d9a857095e48f30b6f" [label=""];
  "sha256:94e73dc32f7ef673175262d9f9cce4d3c11faea6246175d9a857095e48f30b6f" -> "sha256:5f9f764ad4beb5c3036310e5c85bee28d01ab1c211ef9c5c45d7497fb4685b20" [label=""];
  "sha256:5f9f764ad4beb5c3036310e5c85bee28d01ab1c211ef9c5c45d7497fb4685b20" -> "sha256:a88ac1a353d64eeeffe667b2ed0dedbf03707f81af142fe18d8cb090881ea71e" [label=""];
}

