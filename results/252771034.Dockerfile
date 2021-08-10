[app/sources/252771034.Dockerfile]
digraph {
  "sha256:3b0640586b3354a16b07ec3571127fc65355c9e46ffd4ac86bfba292f458d378" [label="docker-image://docker.io/library/node:boron-alpine" shape="ellipse"];
  "sha256:1c8a3860cfddf981a9fcdcde8d809088e9d0c590094a5505ea13aa3e1aa0e7c7" [label="/bin/sh -c apk --update add git curl bash binutils tar && rm -rf /var/cache/apk/* && /bin/bash && touch ~/.bashrc && curl -o- -L https://yarnpkg.com/install.sh | bash && apk del curl tar binutils" shape="box"];
  "sha256:0a005fae52b2b377ebfe7cc3c30deb1f2ad78dac7736405a0cb15fedc892cf3f" [label="sha256:0a005fae52b2b377ebfe7cc3c30deb1f2ad78dac7736405a0cb15fedc892cf3f" shape="plaintext"];
  "sha256:3b0640586b3354a16b07ec3571127fc65355c9e46ffd4ac86bfba292f458d378" -> "sha256:1c8a3860cfddf981a9fcdcde8d809088e9d0c590094a5505ea13aa3e1aa0e7c7" [label=""];
  "sha256:1c8a3860cfddf981a9fcdcde8d809088e9d0c590094a5505ea13aa3e1aa0e7c7" -> "sha256:0a005fae52b2b377ebfe7cc3c30deb1f2ad78dac7736405a0cb15fedc892cf3f" [label=""];
}

