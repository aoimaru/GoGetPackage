[app/sources/442691664.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:d875d9731fc7c21a35f03ba053f3681150ec8f0acdf6e4663107be82cf8c9ab2" [label="local://context" shape="ellipse"];
  "sha256:f42c4f0b90b0d48d72fc76a546e36d40eacf9f514107b2d4eb2e0e7df71db02a" [label="copy{src=/, dest=/usr/local/src/gdal-docker/}" shape="note"];
  "sha256:978264fc209547bf2f7d1855861ef9e2297c4bdf22b07d97121c1a01b43434f1" [label="/bin/sh -c /usr/local/src/gdal-docker/build.sh" shape="box"];
  "sha256:eb19fa631b8a53bc056a5a54cd44bb2b123aadd8d454bffc86e27adf97fe70b0" [label="mkdir{path=/data}" shape="note"];
  "sha256:48b1ba56c4f6d39792ed2ff471ec2cad2ed278ac398383e36a8eb7dcbcd5ce35" [label="sha256:48b1ba56c4f6d39792ed2ff471ec2cad2ed278ac398383e36a8eb7dcbcd5ce35" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:f42c4f0b90b0d48d72fc76a546e36d40eacf9f514107b2d4eb2e0e7df71db02a" [label=""];
  "sha256:d875d9731fc7c21a35f03ba053f3681150ec8f0acdf6e4663107be82cf8c9ab2" -> "sha256:f42c4f0b90b0d48d72fc76a546e36d40eacf9f514107b2d4eb2e0e7df71db02a" [label=""];
  "sha256:f42c4f0b90b0d48d72fc76a546e36d40eacf9f514107b2d4eb2e0e7df71db02a" -> "sha256:978264fc209547bf2f7d1855861ef9e2297c4bdf22b07d97121c1a01b43434f1" [label=""];
  "sha256:978264fc209547bf2f7d1855861ef9e2297c4bdf22b07d97121c1a01b43434f1" -> "sha256:eb19fa631b8a53bc056a5a54cd44bb2b123aadd8d454bffc86e27adf97fe70b0" [label=""];
  "sha256:eb19fa631b8a53bc056a5a54cd44bb2b123aadd8d454bffc86e27adf97fe70b0" -> "sha256:48b1ba56c4f6d39792ed2ff471ec2cad2ed278ac398383e36a8eb7dcbcd5ce35" [label=""];
}

