[app/sources/224627362.Dockerfile]
digraph {
  "sha256:29cd9ce681b08e211a3dfc9916d06a752e1aea01652674c9a8ca600ecb0ef686" [label="docker-image://docker.io/phundament/app:4.0.2" shape="ellipse"];
  "sha256:cc276c2d2115c0683152f0dc5b14cea33d1242584893f639c7dd19d865ba9fbe" [label="/bin/sh -c composer require     yiisoft/yii2-apidoc:dev-master     schmunk42/yii2-apidoc-template:dev-master" shape="box"];
  "sha256:fa7f6630b13447724a2c8117558d52e38200836bbe1e9ca301007e120bc8247a" [label="sha256:fa7f6630b13447724a2c8117558d52e38200836bbe1e9ca301007e120bc8247a" shape="plaintext"];
  "sha256:29cd9ce681b08e211a3dfc9916d06a752e1aea01652674c9a8ca600ecb0ef686" -> "sha256:cc276c2d2115c0683152f0dc5b14cea33d1242584893f639c7dd19d865ba9fbe" [label=""];
  "sha256:cc276c2d2115c0683152f0dc5b14cea33d1242584893f639c7dd19d865ba9fbe" -> "sha256:fa7f6630b13447724a2c8117558d52e38200836bbe1e9ca301007e120bc8247a" [label=""];
}

