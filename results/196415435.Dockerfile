[app/sources/196415435.Dockerfile]
digraph {
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" [label="docker-image://docker.io/resin/rpi-raspbian:jessie" shape="ellipse"];
  "sha256:5e0ef75deddda0b64091f0365533ae06c10515b875d158c7cd4419a5bf68993c" [label="/bin/sh -c mkdir -p /opt/vc/bin" shape="box"];
  "sha256:c4dcfde779814fc35206ee418f230ef42c2b6f47d754d9c90d12ba730a070cb8" [label="local://context" shape="ellipse"];
  "sha256:c077bc3dea6fc881c2d1210124b3cd0a811f1e49aa95ddf18e35b0a9004898a6" [label="copy{src=/opt_vc, dest=/opt/vc}" shape="note"];
  "sha256:9197878ff83baeca0b70875fec9b391378745366af9266ee0ac820600f4ef9fd" [label="/bin/sh -c echo \"/opt/vc/lib\" > /etc/ld.so.conf.d/00-vmcs.conf" shape="box"];
  "sha256:0508a8fdb78857d08219b1f6ff7e14d37b120eb94521fdd2183c083d4fda1b22" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:c005c6fc8085052332406f7c6ac04d29b48e5f285474b06039ea78390f212bde" [label="/bin/sh -c ls -l /opt/vc/" shape="box"];
  "sha256:65f50fb83942813f367220bea02af16eaf91777907599e6a62315864b42ac935" [label="/bin/sh -c mkdir /root/images/" shape="box"];
  "sha256:66ec8cdf274cd8e9af1ec2e4cebd7f9693c22e22b0654007498cacdebbe79bc6" [label="mkdir{path=/root/images}" shape="note"];
  "sha256:5d8d6ee40a418f703896d2d68dbb6d4e1c72660fd44cebca86901d409bc0a0ca" [label="sha256:5d8d6ee40a418f703896d2d68dbb6d4e1c72660fd44cebca86901d409bc0a0ca" shape="plaintext"];
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" -> "sha256:5e0ef75deddda0b64091f0365533ae06c10515b875d158c7cd4419a5bf68993c" [label=""];
  "sha256:5e0ef75deddda0b64091f0365533ae06c10515b875d158c7cd4419a5bf68993c" -> "sha256:c077bc3dea6fc881c2d1210124b3cd0a811f1e49aa95ddf18e35b0a9004898a6" [label=""];
  "sha256:c4dcfde779814fc35206ee418f230ef42c2b6f47d754d9c90d12ba730a070cb8" -> "sha256:c077bc3dea6fc881c2d1210124b3cd0a811f1e49aa95ddf18e35b0a9004898a6" [label=""];
  "sha256:c077bc3dea6fc881c2d1210124b3cd0a811f1e49aa95ddf18e35b0a9004898a6" -> "sha256:9197878ff83baeca0b70875fec9b391378745366af9266ee0ac820600f4ef9fd" [label=""];
  "sha256:9197878ff83baeca0b70875fec9b391378745366af9266ee0ac820600f4ef9fd" -> "sha256:0508a8fdb78857d08219b1f6ff7e14d37b120eb94521fdd2183c083d4fda1b22" [label=""];
  "sha256:0508a8fdb78857d08219b1f6ff7e14d37b120eb94521fdd2183c083d4fda1b22" -> "sha256:c005c6fc8085052332406f7c6ac04d29b48e5f285474b06039ea78390f212bde" [label=""];
  "sha256:c005c6fc8085052332406f7c6ac04d29b48e5f285474b06039ea78390f212bde" -> "sha256:65f50fb83942813f367220bea02af16eaf91777907599e6a62315864b42ac935" [label=""];
  "sha256:65f50fb83942813f367220bea02af16eaf91777907599e6a62315864b42ac935" -> "sha256:66ec8cdf274cd8e9af1ec2e4cebd7f9693c22e22b0654007498cacdebbe79bc6" [label=""];
  "sha256:66ec8cdf274cd8e9af1ec2e4cebd7f9693c22e22b0654007498cacdebbe79bc6" -> "sha256:5d8d6ee40a418f703896d2d68dbb6d4e1c72660fd44cebca86901d409bc0a0ca" [label=""];
}

