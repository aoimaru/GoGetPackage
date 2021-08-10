[app/sources/252782523.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:2587aa4b7893c004f3fabf0c86b4ad369b6548a073be4e65065fb4565ae8d8d9" [label="local://context" shape="ellipse"];
  "sha256:3a2d7edc61cb838dc0d618df8ad65126315413c137f25c5062be5adc62a0ddd8" [label="copy{src=/install.sh, dest=/tmp/install.sh}" shape="note"];
  "sha256:e2b0f8daaf91793cac1a6cf732af2448c66f2f4faf635b6921b5e5744aad859f" [label="/bin/sh -c sh -xe /tmp/install.sh" shape="box"];
  "sha256:2ced6a6a140cd3ea67ea2c98c7219ad2fce1b21ab3afaaa53b5a3cdb475d5a07" [label="sha256:2ced6a6a140cd3ea67ea2c98c7219ad2fce1b21ab3afaaa53b5a3cdb475d5a07" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:3a2d7edc61cb838dc0d618df8ad65126315413c137f25c5062be5adc62a0ddd8" [label=""];
  "sha256:2587aa4b7893c004f3fabf0c86b4ad369b6548a073be4e65065fb4565ae8d8d9" -> "sha256:3a2d7edc61cb838dc0d618df8ad65126315413c137f25c5062be5adc62a0ddd8" [label=""];
  "sha256:3a2d7edc61cb838dc0d618df8ad65126315413c137f25c5062be5adc62a0ddd8" -> "sha256:e2b0f8daaf91793cac1a6cf732af2448c66f2f4faf635b6921b5e5744aad859f" [label=""];
  "sha256:e2b0f8daaf91793cac1a6cf732af2448c66f2f4faf635b6921b5e5744aad859f" -> "sha256:2ced6a6a140cd3ea67ea2c98c7219ad2fce1b21ab3afaaa53b5a3cdb475d5a07" [label=""];
}

