[app/sources/209343549.Dockerfile]
digraph {
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" [label="docker-image://docker.io/library/buildpack-deps:stretch-curl" shape="ellipse"];
  "sha256:2a98e4147cef4af93d512570d618c34708c6029134f73ccd44eb1b13ae078bfd" [label="/bin/sh -c set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ||         gpg --keyserver pgp.mit.edu --recv-keys \"$key\" ||         gpg --keyserver keyserver.pgp.com --recv-keys \"$key\" ;     done" shape="box"];
  "sha256:303866576d88ab0b60554c11903d9b716e9a47a0401d5bc355cb184f540492bd" [label="/bin/sh -c wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*" shape="box"];
  "sha256:e1b2c58b6740072bdf6e176b6aded82e22272d9f1bbe3cbfaca89b42a742c168" [label="local://context" shape="ellipse"];
  "sha256:f8416d5240c360e72672b7b1c1525028418fd554308b807ab127563be6f40b5c" [label="copy{src=/influxdb-meta.conf, dest=/etc/influxdb/influxdb-meta.conf}" shape="note"];
  "sha256:5bf73701364e7d1a5c0b014840009da1a4856de778c2ce36f62e7bcfb0a55b54" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:f435ea27c8867e2f8ae1e5bbd6fee891a29034807ef8c1b2dd1531c1683bf597" [label="sha256:f435ea27c8867e2f8ae1e5bbd6fee891a29034807ef8c1b2dd1531c1683bf597" shape="plaintext"];
  "sha256:a2a0ef237df153165d725216b139aa16ee8733bace25c01a80bbd3f2d92110c4" -> "sha256:2a98e4147cef4af93d512570d618c34708c6029134f73ccd44eb1b13ae078bfd" [label=""];
  "sha256:2a98e4147cef4af93d512570d618c34708c6029134f73ccd44eb1b13ae078bfd" -> "sha256:303866576d88ab0b60554c11903d9b716e9a47a0401d5bc355cb184f540492bd" [label=""];
  "sha256:303866576d88ab0b60554c11903d9b716e9a47a0401d5bc355cb184f540492bd" -> "sha256:f8416d5240c360e72672b7b1c1525028418fd554308b807ab127563be6f40b5c" [label=""];
  "sha256:e1b2c58b6740072bdf6e176b6aded82e22272d9f1bbe3cbfaca89b42a742c168" -> "sha256:f8416d5240c360e72672b7b1c1525028418fd554308b807ab127563be6f40b5c" [label=""];
  "sha256:f8416d5240c360e72672b7b1c1525028418fd554308b807ab127563be6f40b5c" -> "sha256:5bf73701364e7d1a5c0b014840009da1a4856de778c2ce36f62e7bcfb0a55b54" [label=""];
  "sha256:e1b2c58b6740072bdf6e176b6aded82e22272d9f1bbe3cbfaca89b42a742c168" -> "sha256:5bf73701364e7d1a5c0b014840009da1a4856de778c2ce36f62e7bcfb0a55b54" [label=""];
  "sha256:5bf73701364e7d1a5c0b014840009da1a4856de778c2ce36f62e7bcfb0a55b54" -> "sha256:f435ea27c8867e2f8ae1e5bbd6fee891a29034807ef8c1b2dd1531c1683bf597" [label=""];
}

