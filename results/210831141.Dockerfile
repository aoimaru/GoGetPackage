[app/sources/210831141.Dockerfile]
digraph {
  "sha256:01b5680fa79c16fe1f73312626e94fd0dd00ed381254563fe2bbac752d24ec6e" [label="docker-image://docker.io/stuckless/sagetv-server-java8:latest" shape="ellipse"];
  "sha256:4d0015683f1258f52c213e042b7844f5f3644866b82c39f1201145ae2778e83a" [label="/bin/sh -c set -x" shape="box"];
  "sha256:ff9a1c88f27c76c5948afcf69fce655ec9a650f9f5c98f7fdcafd6f9095baf98" [label="local://context" shape="ellipse"];
  "sha256:ddecbe84f757d85e3c822d5a4abfd6df2e063f397336f2b90d759c284a1e7d6c" [label="copy{src=/init.d/86-sagetv-dev, dest=/etc/my_init.d/86-sagetv-dev}" shape="note"];
  "sha256:ef3adb8836863f642e4b88f31309e552cedc1d89b88252b5ca42ae4526d8fda1" [label="/bin/sh -c chmod 755 /etc/my_init.d/86-sagetv-dev" shape="box"];
  "sha256:d6e158036a21b5574c88c103b7847e6ac06e4fc493beff4dfacebce7cd081cc8" [label="/bin/sh -c set -x   && apt-get update   && apt-get install -y moreutils libxrender1 xvfb \tlibxtst6 xauth libxi6" shape="box"];
  "sha256:7c4b48d53b178a24e61e5e129ea52086baa20be56a9091f3e613db9c76ac1c08" [label="sha256:7c4b48d53b178a24e61e5e129ea52086baa20be56a9091f3e613db9c76ac1c08" shape="plaintext"];
  "sha256:01b5680fa79c16fe1f73312626e94fd0dd00ed381254563fe2bbac752d24ec6e" -> "sha256:4d0015683f1258f52c213e042b7844f5f3644866b82c39f1201145ae2778e83a" [label=""];
  "sha256:4d0015683f1258f52c213e042b7844f5f3644866b82c39f1201145ae2778e83a" -> "sha256:ddecbe84f757d85e3c822d5a4abfd6df2e063f397336f2b90d759c284a1e7d6c" [label=""];
  "sha256:ff9a1c88f27c76c5948afcf69fce655ec9a650f9f5c98f7fdcafd6f9095baf98" -> "sha256:ddecbe84f757d85e3c822d5a4abfd6df2e063f397336f2b90d759c284a1e7d6c" [label=""];
  "sha256:ddecbe84f757d85e3c822d5a4abfd6df2e063f397336f2b90d759c284a1e7d6c" -> "sha256:ef3adb8836863f642e4b88f31309e552cedc1d89b88252b5ca42ae4526d8fda1" [label=""];
  "sha256:ef3adb8836863f642e4b88f31309e552cedc1d89b88252b5ca42ae4526d8fda1" -> "sha256:d6e158036a21b5574c88c103b7847e6ac06e4fc493beff4dfacebce7cd081cc8" [label=""];
  "sha256:d6e158036a21b5574c88c103b7847e6ac06e4fc493beff4dfacebce7cd081cc8" -> "sha256:7c4b48d53b178a24e61e5e129ea52086baa20be56a9091f3e613db9c76ac1c08" [label=""];
}

