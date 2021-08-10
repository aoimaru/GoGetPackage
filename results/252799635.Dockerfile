[app/sources/252799635.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:1de30926ae6c3148d0fe506d9f661bdabe40124ba21cb33903d9ad9c15a61a24" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:58539ec8c2ac9eea73f3157309a5e3a23a60fe6c034d1cb3e9b83eb771e91a4a" [label="local://context" shape="ellipse"];
  "sha256:906d2170e081d6a18f1ff9df27508efaa18e76d598b5adb689728c39bc0392c0" [label="copy{src=/--from=0, dest=/usr/local/bin/},copy{src=/go/src/github.com/modware-user/app, dest=/usr/local/bin/}" shape="note"];
  "sha256:009883cfe3f0c6cbf4426290c19836bb41aff90acdbf2f30eed9d1719df9e782" [label="sha256:009883cfe3f0c6cbf4426290c19836bb41aff90acdbf2f30eed9d1719df9e782" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:1de30926ae6c3148d0fe506d9f661bdabe40124ba21cb33903d9ad9c15a61a24" [label=""];
  "sha256:1de30926ae6c3148d0fe506d9f661bdabe40124ba21cb33903d9ad9c15a61a24" -> "sha256:906d2170e081d6a18f1ff9df27508efaa18e76d598b5adb689728c39bc0392c0" [label=""];
  "sha256:58539ec8c2ac9eea73f3157309a5e3a23a60fe6c034d1cb3e9b83eb771e91a4a" -> "sha256:906d2170e081d6a18f1ff9df27508efaa18e76d598b5adb689728c39bc0392c0" [label=""];
  "sha256:906d2170e081d6a18f1ff9df27508efaa18e76d598b5adb689728c39bc0392c0" -> "sha256:009883cfe3f0c6cbf4426290c19836bb41aff90acdbf2f30eed9d1719df9e782" [label=""];
}

