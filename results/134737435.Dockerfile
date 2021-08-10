[app/sources/134737435.Dockerfile]
digraph {
  "sha256:207237cf3203f4e03c369c3ad465d289de1d5c9af831688ebcfa671433e20ccb" [label="docker-image://docker.io/library/node:4" shape="ellipse"];
  "sha256:40fa5b0427f4e629a2660eff57f9d3b52ae398047d49e26db7f3b5b964d4e70f" [label="/bin/sh -c mkdir $APP_DIR" shape="box"];
  "sha256:5aecef18f15f0d2208dbf7fc0fd8272384caa125dd035686a9985588275982d0" [label="mkdir{path=/usr/src/mmlc-api}" shape="note"];
  "sha256:e97b1b16802b3d27515afaf60faae64ed22988a78d0eded4df92c82761bc551a" [label="local://context" shape="ellipse"];
  "sha256:d6e6ef9c5f7afc98ee0161a974829c00604a956640d11638596cca12947c06a0" [label="copy{src=/, dest=/usr/src/mmlc-api}" shape="note"];
  "sha256:eafa6f48900a3fd678d62abf65bc98968549ee3755d4541194ebf81f8f335e19" [label="/bin/sh -c apt-get update &&     apt-get install -y $BUILD_PACKAGES $RUNTIME_PACKAGES &&     npm -y install &&     curl -O http://www.apache.org/dist/xmlgraphics/batik/binaries/batik-1.7.zip &&     unzip batik-1.7.zip &&     cp -r batik-1.7/* node_modules/mathjax-node/batik/ &&     rm -rf batik* &&     chmod -R ugo+rw $APP_DIR &&     apt-get purge --yes --auto-remove $BUILD_PACKAGES &&     apt-get clean" shape="box"];
  "sha256:05f65a77d005377b9c2beb462b1cb8f2a30b3724d9d7a3b87f74870c60109c82" [label="sha256:05f65a77d005377b9c2beb462b1cb8f2a30b3724d9d7a3b87f74870c60109c82" shape="plaintext"];
  "sha256:207237cf3203f4e03c369c3ad465d289de1d5c9af831688ebcfa671433e20ccb" -> "sha256:40fa5b0427f4e629a2660eff57f9d3b52ae398047d49e26db7f3b5b964d4e70f" [label=""];
  "sha256:40fa5b0427f4e629a2660eff57f9d3b52ae398047d49e26db7f3b5b964d4e70f" -> "sha256:5aecef18f15f0d2208dbf7fc0fd8272384caa125dd035686a9985588275982d0" [label=""];
  "sha256:5aecef18f15f0d2208dbf7fc0fd8272384caa125dd035686a9985588275982d0" -> "sha256:d6e6ef9c5f7afc98ee0161a974829c00604a956640d11638596cca12947c06a0" [label=""];
  "sha256:e97b1b16802b3d27515afaf60faae64ed22988a78d0eded4df92c82761bc551a" -> "sha256:d6e6ef9c5f7afc98ee0161a974829c00604a956640d11638596cca12947c06a0" [label=""];
  "sha256:d6e6ef9c5f7afc98ee0161a974829c00604a956640d11638596cca12947c06a0" -> "sha256:eafa6f48900a3fd678d62abf65bc98968549ee3755d4541194ebf81f8f335e19" [label=""];
  "sha256:eafa6f48900a3fd678d62abf65bc98968549ee3755d4541194ebf81f8f335e19" -> "sha256:05f65a77d005377b9c2beb462b1cb8f2a30b3724d9d7a3b87f74870c60109c82" [label=""];
}

