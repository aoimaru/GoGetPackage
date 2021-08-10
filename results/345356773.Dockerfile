[app/sources/345356773.Dockerfile]
digraph {
  "sha256:822f95b4b3a5b465bb25281e0519e143f59a01ebf27c1ad0f70537e098717908" [label="docker-image://docker.io/balenalib/armv7hf-debian:buster-build" shape="ellipse"];
  "sha256:f09167a18eadba12db74714f0c217e7f117d4e8a546cd7b7a2f04b662922e917" [label="/bin/sh -c echo \"deb http://archive.raspbian.org/raspbian buster main contrib non-free rpi firmware\" >>  /etc/apt/sources.list \t&& apt-key adv --batch --keyserver pgp.mit.edu  --recv-key 0x9165938D90FDDD2E" shape="box"];
  "sha256:3415a2b6a7e64e332584b81d8e7fdaee590fc018bbcd64c01ddcf57dbbddad2d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tlibraspberrypi-bin \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2f8acb767eeda443bd60d764fdfcb1af4775d34ec8a6b9e0ad3c036e15a959f5" [label="sha256:2f8acb767eeda443bd60d764fdfcb1af4775d34ec8a6b9e0ad3c036e15a959f5" shape="plaintext"];
  "sha256:822f95b4b3a5b465bb25281e0519e143f59a01ebf27c1ad0f70537e098717908" -> "sha256:f09167a18eadba12db74714f0c217e7f117d4e8a546cd7b7a2f04b662922e917" [label=""];
  "sha256:f09167a18eadba12db74714f0c217e7f117d4e8a546cd7b7a2f04b662922e917" -> "sha256:3415a2b6a7e64e332584b81d8e7fdaee590fc018bbcd64c01ddcf57dbbddad2d" [label=""];
  "sha256:3415a2b6a7e64e332584b81d8e7fdaee590fc018bbcd64c01ddcf57dbbddad2d" -> "sha256:2f8acb767eeda443bd60d764fdfcb1af4775d34ec8a6b9e0ad3c036e15a959f5" [label=""];
}

