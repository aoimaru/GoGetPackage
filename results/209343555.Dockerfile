[app/sources/209343555.Dockerfile]
digraph {
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" [label="docker-image://docker.io/library/buildpack-deps:stretch-curl" shape="ellipse"];
  "sha256:2a98e4147cef4af93d512570d618c34708c6029134f73ccd44eb1b13ae078bfd" [label="/bin/sh -c set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ||         gpg --keyserver pgp.mit.edu --recv-keys \"$key\" ||         gpg --keyserver keyserver.pgp.com --recv-keys \"$key\" ;     done" shape="box"];
  "sha256:0055d71f743facb7bc10a6d1a8bff3d990c089281580b931ce078aecdf457261" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\" &&     case \"${dpkgArch##*-}\" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo \"Unsupported architecture: ${dpkgArch}\"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*" shape="box"];
  "sha256:584db566dc0dee8d0fcb1b08d0348c41715fe05ff825181e64d6d6e48a359204" [label="local://context" shape="ellipse"];
  "sha256:87fe7feb42311991602f8deab5fddbf53e72b5a99a9bad2a5755c22aea07dc27" [label="copy{src=/influxdb.conf, dest=/etc/influxdb/influxdb.conf}" shape="note"];
  "sha256:dc1dfa9a82f65395a0dccfd522992532b3080d8f118cb44c8c61e417b226100e" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:2fd9fdd06f345da34b8dda05afe040a396708af006dadbe7eccb066554833d94" [label="copy{src=/init-influxdb.sh, dest=/init-influxdb.sh}" shape="note"];
  "sha256:0ef8daca58cb36b023af50bb741c3a1d2c37943fe152aa6b36ed3b4e95c4e5d2" [label="sha256:0ef8daca58cb36b023af50bb741c3a1d2c37943fe152aa6b36ed3b4e95c4e5d2" shape="plaintext"];
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" -> "sha256:2a98e4147cef4af93d512570d618c34708c6029134f73ccd44eb1b13ae078bfd" [label=""];
  "sha256:2a98e4147cef4af93d512570d618c34708c6029134f73ccd44eb1b13ae078bfd" -> "sha256:0055d71f743facb7bc10a6d1a8bff3d990c089281580b931ce078aecdf457261" [label=""];
  "sha256:0055d71f743facb7bc10a6d1a8bff3d990c089281580b931ce078aecdf457261" -> "sha256:87fe7feb42311991602f8deab5fddbf53e72b5a99a9bad2a5755c22aea07dc27" [label=""];
  "sha256:584db566dc0dee8d0fcb1b08d0348c41715fe05ff825181e64d6d6e48a359204" -> "sha256:87fe7feb42311991602f8deab5fddbf53e72b5a99a9bad2a5755c22aea07dc27" [label=""];
  "sha256:87fe7feb42311991602f8deab5fddbf53e72b5a99a9bad2a5755c22aea07dc27" -> "sha256:dc1dfa9a82f65395a0dccfd522992532b3080d8f118cb44c8c61e417b226100e" [label=""];
  "sha256:584db566dc0dee8d0fcb1b08d0348c41715fe05ff825181e64d6d6e48a359204" -> "sha256:dc1dfa9a82f65395a0dccfd522992532b3080d8f118cb44c8c61e417b226100e" [label=""];
  "sha256:dc1dfa9a82f65395a0dccfd522992532b3080d8f118cb44c8c61e417b226100e" -> "sha256:2fd9fdd06f345da34b8dda05afe040a396708af006dadbe7eccb066554833d94" [label=""];
  "sha256:584db566dc0dee8d0fcb1b08d0348c41715fe05ff825181e64d6d6e48a359204" -> "sha256:2fd9fdd06f345da34b8dda05afe040a396708af006dadbe7eccb066554833d94" [label=""];
  "sha256:2fd9fdd06f345da34b8dda05afe040a396708af006dadbe7eccb066554833d94" -> "sha256:0ef8daca58cb36b023af50bb741c3a1d2c37943fe152aa6b36ed3b4e95c4e5d2" [label=""];
}

