[app/sources/335080466.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:eb6877a0550d1e0333a7c1ef473f5480489dd92c4fe88b76f8d410395f780619" [label="/bin/sh -c set -ex;     apk add --no-cache bash build-base curl git &&     echo \"http://dl-cdn.alpinelinux.org/alpine/edge/community\" >> /etc/apk/repositories &&     echo \"http://dl-cdn.alpinelinux.org/alpine/edge/main\" >> /etc/apk/repositories &&     apk add --no-cache upx nodejs nodejs-npm &&     go get -d github.com/vkuznecovas/mouthful &&     go get -u github.com/golang/dep/cmd/dep" shape="box"];
  "sha256:7668b404ae6ed90e60ec89047b697a2bb86de9e389ddf198ba043885a3d007eb" [label="mkdir{path=/go/src/github.com/vkuznecovas/mouthful}" shape="note"];
  "sha256:b17b3e02f42668530803fe9ae3d4522cc529b700ec0c0ac1260e8b97411923e3" [label="/bin/sh -c git checkout $MOUTHFUL_VER &&     ./build.sh &&     cd dist/ &&     upx --best mouthful" shape="box"];
  "sha256:c457b1038c9e97167cea080ef6c2b0c47eb110979f2d88634906177e848b6962" [label="copy{src=/go/src/github.com/vkuznecovas/mouthful/dist, dest=/app/}" shape="note"];
  "sha256:e1b0278b8be1648120913456366a8f4a0336f6b52fc1755842ee5d66d40cfe05" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:796528fd89b21ee6bf7a0bd1129daac989fd7d7fbdc0eae0f1bbceacd5d1c0f3" [label="mkdir{path=/app}" shape="note"];
  "sha256:c08b16ec7d8df7fcd2ab4f804c8af9429f557dae62580a693e6bcc741e8f3c78" [label="sha256:c08b16ec7d8df7fcd2ab4f804c8af9429f557dae62580a693e6bcc741e8f3c78" shape="plaintext"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:eb6877a0550d1e0333a7c1ef473f5480489dd92c4fe88b76f8d410395f780619" [label=""];
  "sha256:eb6877a0550d1e0333a7c1ef473f5480489dd92c4fe88b76f8d410395f780619" -> "sha256:7668b404ae6ed90e60ec89047b697a2bb86de9e389ddf198ba043885a3d007eb" [label=""];
  "sha256:7668b404ae6ed90e60ec89047b697a2bb86de9e389ddf198ba043885a3d007eb" -> "sha256:b17b3e02f42668530803fe9ae3d4522cc529b700ec0c0ac1260e8b97411923e3" [label=""];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:c457b1038c9e97167cea080ef6c2b0c47eb110979f2d88634906177e848b6962" [label=""];
  "sha256:b17b3e02f42668530803fe9ae3d4522cc529b700ec0c0ac1260e8b97411923e3" -> "sha256:c457b1038c9e97167cea080ef6c2b0c47eb110979f2d88634906177e848b6962" [label=""];
  "sha256:c457b1038c9e97167cea080ef6c2b0c47eb110979f2d88634906177e848b6962" -> "sha256:e1b0278b8be1648120913456366a8f4a0336f6b52fc1755842ee5d66d40cfe05" [label=""];
  "sha256:e1b0278b8be1648120913456366a8f4a0336f6b52fc1755842ee5d66d40cfe05" -> "sha256:796528fd89b21ee6bf7a0bd1129daac989fd7d7fbdc0eae0f1bbceacd5d1c0f3" [label=""];
  "sha256:796528fd89b21ee6bf7a0bd1129daac989fd7d7fbdc0eae0f1bbceacd5d1c0f3" -> "sha256:c08b16ec7d8df7fcd2ab4f804c8af9429f557dae62580a693e6bcc741e8f3c78" [label=""];
}

