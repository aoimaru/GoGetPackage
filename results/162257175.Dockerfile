[app/sources/162257175.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:93660a8d7025da6ffb135988cd53106ed7c5b3ba86dd127bf1ae8124455bb84a" [label="/bin/sh -c apk update &&   apk upgrade" shape="box"];
  "sha256:86075bdad1f00b3f386a90e82788df9393223bee246342211023fc120bb2cf01" [label="/bin/sh -c set -x &&   addgroup -g 82 -S www-data &&   adduser -u 82 -D -S -G www-data www-data" shape="box"];
  "sha256:206f2eb4f96fe6380bd91b6d0a4152b5273d1ec1b42e138b6c9d7e1cd85459b7" [label="/bin/sh -c apk add nginx" shape="box"];
  "sha256:e539f69c428b2d3b55c1622fa3f2fb5b3db68f703470cc09448ae532694b88f1" [label="local://context" shape="ellipse"];
  "sha256:0e1cacc2b9645f3717d1c88611c6fc292142fd2f1170dbcfca9f7a6238a6b477" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:2f566ee5f7eb3bf42c6ee4b6c9ba083a752f12b14b3a71313fdf475133be7e6d" [label="/bin/sh -c mkdir /run/nginx &&   chown -R www-data /run/nginx" shape="box"];
  "sha256:98cff1b62a6bfed1b16f034c0a2e50f91539333bb3bce47a598ea4c296533a1a" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:c1d772a33704530b0f24eddb05e7be6b44cf1203e93c9fed1cb0526e7950adb5" [label="sha256:c1d772a33704530b0f24eddb05e7be6b44cf1203e93c9fed1cb0526e7950adb5" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:93660a8d7025da6ffb135988cd53106ed7c5b3ba86dd127bf1ae8124455bb84a" [label=""];
  "sha256:93660a8d7025da6ffb135988cd53106ed7c5b3ba86dd127bf1ae8124455bb84a" -> "sha256:86075bdad1f00b3f386a90e82788df9393223bee246342211023fc120bb2cf01" [label=""];
  "sha256:86075bdad1f00b3f386a90e82788df9393223bee246342211023fc120bb2cf01" -> "sha256:206f2eb4f96fe6380bd91b6d0a4152b5273d1ec1b42e138b6c9d7e1cd85459b7" [label=""];
  "sha256:206f2eb4f96fe6380bd91b6d0a4152b5273d1ec1b42e138b6c9d7e1cd85459b7" -> "sha256:0e1cacc2b9645f3717d1c88611c6fc292142fd2f1170dbcfca9f7a6238a6b477" [label=""];
  "sha256:e539f69c428b2d3b55c1622fa3f2fb5b3db68f703470cc09448ae532694b88f1" -> "sha256:0e1cacc2b9645f3717d1c88611c6fc292142fd2f1170dbcfca9f7a6238a6b477" [label=""];
  "sha256:0e1cacc2b9645f3717d1c88611c6fc292142fd2f1170dbcfca9f7a6238a6b477" -> "sha256:2f566ee5f7eb3bf42c6ee4b6c9ba083a752f12b14b3a71313fdf475133be7e6d" [label=""];
  "sha256:2f566ee5f7eb3bf42c6ee4b6c9ba083a752f12b14b3a71313fdf475133be7e6d" -> "sha256:98cff1b62a6bfed1b16f034c0a2e50f91539333bb3bce47a598ea4c296533a1a" [label=""];
  "sha256:98cff1b62a6bfed1b16f034c0a2e50f91539333bb3bce47a598ea4c296533a1a" -> "sha256:c1d772a33704530b0f24eddb05e7be6b44cf1203e93c9fed1cb0526e7950adb5" [label=""];
}

