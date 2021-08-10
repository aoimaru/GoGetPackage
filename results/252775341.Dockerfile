[app/sources/252775341.Dockerfile]
digraph {
  "sha256:b9c3c0b075e352a141c3d5b04327a03e0eb1cf8a1dc9270334743515fd4ca465" [label="docker-image://docker.io/beginor/ubuntu-china:16.04" shape="ellipse"];
  "sha256:67a60f5c65ff59cea41a64ca49dc0c3113a537fa0d84b75b6d07caa91fa6c6f6" [label="local://context" shape="ellipse"];
  "sha256:5f2d0d4fc06e9bbb694b1c70c67c51756dd6f79fde57b7d0dff321ee99bac9f6" [label="copy{src=/src/install.sh, dest=/tmp/}" shape="note"];
  "sha256:854c1160106fafff153a9caf592c581da64ab865f0fb9768f90a31dd7253021a" [label="/bin/sh -c /tmp/install.sh" shape="box"];
  "sha256:554eb95fef3c26195dcab5b8002f70e7d9ee5edade66decb3102493da00b668c" [label="sha256:554eb95fef3c26195dcab5b8002f70e7d9ee5edade66decb3102493da00b668c" shape="plaintext"];
  "sha256:b9c3c0b075e352a141c3d5b04327a03e0eb1cf8a1dc9270334743515fd4ca465" -> "sha256:5f2d0d4fc06e9bbb694b1c70c67c51756dd6f79fde57b7d0dff321ee99bac9f6" [label=""];
  "sha256:67a60f5c65ff59cea41a64ca49dc0c3113a537fa0d84b75b6d07caa91fa6c6f6" -> "sha256:5f2d0d4fc06e9bbb694b1c70c67c51756dd6f79fde57b7d0dff321ee99bac9f6" [label=""];
  "sha256:5f2d0d4fc06e9bbb694b1c70c67c51756dd6f79fde57b7d0dff321ee99bac9f6" -> "sha256:854c1160106fafff153a9caf592c581da64ab865f0fb9768f90a31dd7253021a" [label=""];
  "sha256:854c1160106fafff153a9caf592c581da64ab865f0fb9768f90a31dd7253021a" -> "sha256:554eb95fef3c26195dcab5b8002f70e7d9ee5edade66decb3102493da00b668c" [label=""];
}

