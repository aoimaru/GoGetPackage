[app/sources/286009552.Dockerfile]
digraph {
  "sha256:96caf5e6cc01141d384d2d1163a906ba7c274f28a2a961105315c1457861d641" [label="docker-image://docker.io/linuxkit/alpine:1b05307ae8152e3d38f79e297b0632697a30c65c@sha256:e72d03f77798bde01ff8ee0592f867d8f79867e458db95829be49bb4731a7b54" shape="ellipse"];
  "sha256:f24cdbcaf6f09d2a54dfc15bf8e7a32d7c09d92fb7b737958d136069db540983" [label="/bin/sh -c apk add -U --no-cache   bash   coreutils   curl   findutils   git   go   grep   libc-dev   linux-headers   make   rsync   && true" shape="box"];
  "sha256:1d5e913b57d8c7f67e1e45a29e075dab99fbf0cf906d545c3f83fce54a8bac5e" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/kubernetes &&     cd $GOPATH/src/github.com/kubernetes &&     git clone $KUBERNETES_URL kubernetes" shape="box"];
  "sha256:68fca66b0fe3bb81d4a3626f96a99feac796131aff36093d3a834137417df5b1" [label="mkdir{path=/go/src/github.com/kubernetes/kubernetes}" shape="note"];
  "sha256:4d858b74b18bfb35b6ba9d28467c8459dd18876af47c314359cc74b9821f8f4c" [label="/bin/sh -c set -e;     if [ -n \"$KUBERNETES_BRANCH\" ] ; then         git fetch origin \"$KUBERNETES_BRANCH\";     fi;     git checkout -q $KUBERNETES_COMMIT" shape="box"];
  "sha256:fe7140f58bf757f59f29cb8bdd62f2041c34236f527be774737104d605384941" [label="/bin/sh -c make WHAT=\"cmd/kubectl test/e2e/e2e.test vendor/github.com/onsi/ginkgo/ginkgo\"" shape="box"];
  "sha256:e0c5f9c564346fae3a2918d15b43ee1f394029052d0b7fb829a8b1ccc03288c5" [label="/bin/sh -c mkdir -p /out/etc/apk && cp -r /etc/apk/* /out/etc/apk/" shape="box"];
  "sha256:bdbd91560aeaccb7711d152bdb076416a3ec47bf613b732029c6de563a8651c1" [label="/bin/sh -c apk add --no-cache --initdb -p /out     alpine-baselayout     bash     busybox     ca-certificates     curl     musl     socat     util-linux     && true" shape="box"];
  "sha256:da4926ad8f8ddb8e86b08a0479c5a042688a06c2486dad0200dabbfb764fa7c1" [label="/bin/sh -c cp _output/bin/kubectl /out/usr/bin/kubectl" shape="box"];
  "sha256:1c59d4e78b369a47a90fe38345e7433a2f16b68bc50b7d71f940d918e75670e2" [label="/bin/sh -c cp _output/bin/ginkgo /out/usr/bin/ginkgo" shape="box"];
  "sha256:1f9584c0df9e4a25c7d861977518a87738a6a547f1144a3ef86fbf1925c439e6" [label="/bin/sh -c cp _output/bin/e2e.test /out/usr/bin/e2e.test" shape="box"];
  "sha256:7c39934bd40d5becc22e9756c8546a7ba3eae159420fe3ed963a2b29546574d4" [label="/bin/sh -c rm -rf /out/etc/apk /out/lib/apk /out/var/cache" shape="box"];
  "sha256:1f64de845872dd043a53a980dc146577303d5bf10384e03a8f774490611d0e40" [label="local://context" shape="ellipse"];
  "sha256:d04fe9c291828e6eae3dfe329ebd3026e62ce3d862238567771bf30766791d70" [label="copy{src=/in-cluster-config.yaml, dest=/out/etc/in-cluster-config.yaml}" shape="note"];
  "sha256:1a6e526bc29f6e4ef904463c976da2f6d347e18a7e71d1538ca909d25d64064e" [label="copy{src=/e2e.sh, dest=/out/usr/bin/e2e.sh}" shape="note"];
  "sha256:ea6f279dc9aa33308fb20379b4341474c15f903816b0e739f54b04e78cca344b" [label="copy{src=/out, dest=/}" shape="note"];
  "sha256:133f6158e4ad572a0e7590b637a0073cf744f41459fc008deee86942ebc4c80e" [label="sha256:133f6158e4ad572a0e7590b637a0073cf744f41459fc008deee86942ebc4c80e" shape="plaintext"];
  "sha256:96caf5e6cc01141d384d2d1163a906ba7c274f28a2a961105315c1457861d641" -> "sha256:f24cdbcaf6f09d2a54dfc15bf8e7a32d7c09d92fb7b737958d136069db540983" [label=""];
  "sha256:f24cdbcaf6f09d2a54dfc15bf8e7a32d7c09d92fb7b737958d136069db540983" -> "sha256:1d5e913b57d8c7f67e1e45a29e075dab99fbf0cf906d545c3f83fce54a8bac5e" [label=""];
  "sha256:1d5e913b57d8c7f67e1e45a29e075dab99fbf0cf906d545c3f83fce54a8bac5e" -> "sha256:68fca66b0fe3bb81d4a3626f96a99feac796131aff36093d3a834137417df5b1" [label=""];
  "sha256:68fca66b0fe3bb81d4a3626f96a99feac796131aff36093d3a834137417df5b1" -> "sha256:4d858b74b18bfb35b6ba9d28467c8459dd18876af47c314359cc74b9821f8f4c" [label=""];
  "sha256:4d858b74b18bfb35b6ba9d28467c8459dd18876af47c314359cc74b9821f8f4c" -> "sha256:fe7140f58bf757f59f29cb8bdd62f2041c34236f527be774737104d605384941" [label=""];
  "sha256:fe7140f58bf757f59f29cb8bdd62f2041c34236f527be774737104d605384941" -> "sha256:e0c5f9c564346fae3a2918d15b43ee1f394029052d0b7fb829a8b1ccc03288c5" [label=""];
  "sha256:e0c5f9c564346fae3a2918d15b43ee1f394029052d0b7fb829a8b1ccc03288c5" -> "sha256:bdbd91560aeaccb7711d152bdb076416a3ec47bf613b732029c6de563a8651c1" [label=""];
  "sha256:bdbd91560aeaccb7711d152bdb076416a3ec47bf613b732029c6de563a8651c1" -> "sha256:da4926ad8f8ddb8e86b08a0479c5a042688a06c2486dad0200dabbfb764fa7c1" [label=""];
  "sha256:da4926ad8f8ddb8e86b08a0479c5a042688a06c2486dad0200dabbfb764fa7c1" -> "sha256:1c59d4e78b369a47a90fe38345e7433a2f16b68bc50b7d71f940d918e75670e2" [label=""];
  "sha256:1c59d4e78b369a47a90fe38345e7433a2f16b68bc50b7d71f940d918e75670e2" -> "sha256:1f9584c0df9e4a25c7d861977518a87738a6a547f1144a3ef86fbf1925c439e6" [label=""];
  "sha256:1f9584c0df9e4a25c7d861977518a87738a6a547f1144a3ef86fbf1925c439e6" -> "sha256:7c39934bd40d5becc22e9756c8546a7ba3eae159420fe3ed963a2b29546574d4" [label=""];
  "sha256:7c39934bd40d5becc22e9756c8546a7ba3eae159420fe3ed963a2b29546574d4" -> "sha256:d04fe9c291828e6eae3dfe329ebd3026e62ce3d862238567771bf30766791d70" [label=""];
  "sha256:1f64de845872dd043a53a980dc146577303d5bf10384e03a8f774490611d0e40" -> "sha256:d04fe9c291828e6eae3dfe329ebd3026e62ce3d862238567771bf30766791d70" [label=""];
  "sha256:d04fe9c291828e6eae3dfe329ebd3026e62ce3d862238567771bf30766791d70" -> "sha256:1a6e526bc29f6e4ef904463c976da2f6d347e18a7e71d1538ca909d25d64064e" [label=""];
  "sha256:1f64de845872dd043a53a980dc146577303d5bf10384e03a8f774490611d0e40" -> "sha256:1a6e526bc29f6e4ef904463c976da2f6d347e18a7e71d1538ca909d25d64064e" [label=""];
  "sha256:1a6e526bc29f6e4ef904463c976da2f6d347e18a7e71d1538ca909d25d64064e" -> "sha256:ea6f279dc9aa33308fb20379b4341474c15f903816b0e739f54b04e78cca344b" [label=""];
  "sha256:ea6f279dc9aa33308fb20379b4341474c15f903816b0e739f54b04e78cca344b" -> "sha256:133f6158e4ad572a0e7590b637a0073cf744f41459fc008deee86942ebc4c80e" [label=""];
}

