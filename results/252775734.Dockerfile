[app/sources/252775734.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:4d9d25c56a0131b7d7ee528ba4112ff82f356e6e8e80f6430e4cd48bd62e0069" [label="/bin/sh -c apk --update add rsync=3.1.3-r0 && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:d4604c80948112eba7605b86c4fd4db5a4d6fa7ff6347757ebb9433f1f2c2a8c" [label="sha256:d4604c80948112eba7605b86c4fd4db5a4d6fa7ff6347757ebb9433f1f2c2a8c" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:4d9d25c56a0131b7d7ee528ba4112ff82f356e6e8e80f6430e4cd48bd62e0069" [label=""];
  "sha256:4d9d25c56a0131b7d7ee528ba4112ff82f356e6e8e80f6430e4cd48bd62e0069" -> "sha256:d4604c80948112eba7605b86c4fd4db5a4d6fa7ff6347757ebb9433f1f2c2a8c" [label=""];
}

