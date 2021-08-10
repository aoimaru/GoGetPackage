[app/sources/228394224.Dockerfile]
digraph {
  "sha256:6069aa90f22eb31c75581c0ecb85e5f1c46c6fbc34b1301cd6563995969be97a" [label="docker-image://docker.io/linuxkit/alpine:86cd4f51b49fb9a078b50201d892a3c7973d48ec@sha256:9a8e4da72c695dad31047a21522d754ec3aed023f7d9ef1b276863fe1f2998e9" shape="ellipse"];
  "sha256:ed294ecbfee559b1296546eb45256ce5e174df03842761a89a2d845e14b1a73d" [label="/bin/sh -c mkdir -p /out/etc/apk && cp -r /etc/apk/* /out/etc/apk/" shape="box"];
  "sha256:fc7fff6ecc8af0be2945e7eeab359bea1fa341208e8c2d4714cf0831a881897a" [label="/bin/sh -c apk add --no-cache --initdb -p /out     tini" shape="box"];
  "sha256:983e6e692713a0e85e95ddaf2ce6f65cb15a7512a9f4b05540468fde110b9320" [label="/bin/sh -c rm -rf /out/etc/apk /out/lib/apk /out/var/cache" shape="box"];
  "sha256:a366ab1e380c94055e36c6a1acb90691008856509970da3a8b447739aa548fb1" [label="copy{src=/out, dest=/}" shape="note"];
  "sha256:a3997aa537834ffb3299588a370fb75bedde8953d87ad6511b5b149538682bbc" [label="/bin/sh -c apk add --no-cache go musl-dev git make" shape="box"];
  "sha256:778d289a041af9649b3395ebc5907fe215eeded1ed09ebc18ba408e9047a0a29" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/linuxkit &&   cd $GOPATH/src/github.com/linuxkit &&   git clone https://github.com/linuxkit/virtsock.git" shape="box"];
  "sha256:00eac1cf59376129044e42a9e62cf3b4ce9cfab90e24c647233d59e67ce2299c" [label="mkdir{path=/go/src/github.com/linuxkit/virtsock}" shape="note"];
  "sha256:2f39318e2be1d570abc25b9fc2319440bbc24649b3a30fccf63744faab688ec9" [label="/bin/sh -c git checkout $VIRTSOCK_COMMIT" shape="box"];
  "sha256:e726f022a7650995180614a350c384654fd2fec6d1568a57d4b31dd7f7150b7d" [label="/bin/sh -c make bin/sock_stress.linux &&     cp -a bin/sock_stress.linux /sock_stress" shape="box"];
  "sha256:2ecdf8b4b06a8896688bbf668bea113c4688836e7c7416baaab6ccc4a0dfd55d" [label="copy{src=/go/src/github.com/linuxkit/virtsock/sock_stress, dest=/usr/bin/sock_stress}" shape="note"];
  "sha256:38299b07444a8851a77c0265bf3625bbda633e2ddd6e7ae00af4e1a925fe0f8e" [label="sha256:38299b07444a8851a77c0265bf3625bbda633e2ddd6e7ae00af4e1a925fe0f8e" shape="plaintext"];
  "sha256:6069aa90f22eb31c75581c0ecb85e5f1c46c6fbc34b1301cd6563995969be97a" -> "sha256:ed294ecbfee559b1296546eb45256ce5e174df03842761a89a2d845e14b1a73d" [label=""];
  "sha256:ed294ecbfee559b1296546eb45256ce5e174df03842761a89a2d845e14b1a73d" -> "sha256:fc7fff6ecc8af0be2945e7eeab359bea1fa341208e8c2d4714cf0831a881897a" [label=""];
  "sha256:fc7fff6ecc8af0be2945e7eeab359bea1fa341208e8c2d4714cf0831a881897a" -> "sha256:983e6e692713a0e85e95ddaf2ce6f65cb15a7512a9f4b05540468fde110b9320" [label=""];
  "sha256:983e6e692713a0e85e95ddaf2ce6f65cb15a7512a9f4b05540468fde110b9320" -> "sha256:a366ab1e380c94055e36c6a1acb90691008856509970da3a8b447739aa548fb1" [label=""];
  "sha256:6069aa90f22eb31c75581c0ecb85e5f1c46c6fbc34b1301cd6563995969be97a" -> "sha256:a3997aa537834ffb3299588a370fb75bedde8953d87ad6511b5b149538682bbc" [label=""];
  "sha256:a3997aa537834ffb3299588a370fb75bedde8953d87ad6511b5b149538682bbc" -> "sha256:778d289a041af9649b3395ebc5907fe215eeded1ed09ebc18ba408e9047a0a29" [label=""];
  "sha256:778d289a041af9649b3395ebc5907fe215eeded1ed09ebc18ba408e9047a0a29" -> "sha256:00eac1cf59376129044e42a9e62cf3b4ce9cfab90e24c647233d59e67ce2299c" [label=""];
  "sha256:00eac1cf59376129044e42a9e62cf3b4ce9cfab90e24c647233d59e67ce2299c" -> "sha256:2f39318e2be1d570abc25b9fc2319440bbc24649b3a30fccf63744faab688ec9" [label=""];
  "sha256:2f39318e2be1d570abc25b9fc2319440bbc24649b3a30fccf63744faab688ec9" -> "sha256:e726f022a7650995180614a350c384654fd2fec6d1568a57d4b31dd7f7150b7d" [label=""];
  "sha256:a366ab1e380c94055e36c6a1acb90691008856509970da3a8b447739aa548fb1" -> "sha256:2ecdf8b4b06a8896688bbf668bea113c4688836e7c7416baaab6ccc4a0dfd55d" [label=""];
  "sha256:e726f022a7650995180614a350c384654fd2fec6d1568a57d4b31dd7f7150b7d" -> "sha256:2ecdf8b4b06a8896688bbf668bea113c4688836e7c7416baaab6ccc4a0dfd55d" [label=""];
  "sha256:2ecdf8b4b06a8896688bbf668bea113c4688836e7c7416baaab6ccc4a0dfd55d" -> "sha256:38299b07444a8851a77c0265bf3625bbda633e2ddd6e7ae00af4e1a925fe0f8e" [label=""];
}

