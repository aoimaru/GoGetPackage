[app/sources/201188217.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:7c975fc3470ce3bfafc250fb8d63824ba6977304d85be6cadc9c35e948e0260b" [label="/bin/sh -c apk --no-cache add openssh git && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:626693e335f9de85f8c62c11fb2df4efb5f6312ae72ddf2c0dded2b82f83558a" [label="sha256:626693e335f9de85f8c62c11fb2df4efb5f6312ae72ddf2c0dded2b82f83558a" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:7c975fc3470ce3bfafc250fb8d63824ba6977304d85be6cadc9c35e948e0260b" [label=""];
  "sha256:7c975fc3470ce3bfafc250fb8d63824ba6977304d85be6cadc9c35e948e0260b" -> "sha256:626693e335f9de85f8c62c11fb2df4efb5f6312ae72ddf2c0dded2b82f83558a" [label=""];
}

