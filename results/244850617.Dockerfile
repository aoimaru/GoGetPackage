[app/sources/244850617.Dockerfile]
digraph {
  "sha256:ef9d67d1c6f38298cc105bdf480ee67f93fa2032ccc1c077554b43752638a78b" [label="https://github.com/jprjr/sockexec/releases/download/2.0.3/sockexec-x86_64-linux-musl.tar.gz" shape="ellipse"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:66dcd25a994c2be06d1e64f58a0550c58060379e215f80e73079898bc86648f3" [label="https://github.com/just-containers/s6-overlay/releases/download/v1.21.2.2/s6-overlay-amd64.tar.gz" shape="ellipse"];
  "sha256:64d73b8bafc19366a2759a2fa0a534092c64664a3a9245a5f530d9cdc2efc817" [label="copy{src=/s6-overlay-amd64.tar.gz, dest=/tmp/s6-overlay.tar.gz}" shape="note"];
  "sha256:f7a22a8ead72806f629d1491d6cb0da8592c565d65e0e3e48b226a5bbd2f7832" [label="copy{src=/sockexec-x86_64-linux-musl.tar.gz, dest=/tmp/sockexec.tar.gz}" shape="note"];
  "sha256:396d0e7e1f5a8148a1539cdcd7d3745e24f50a065c9a55fef7af58a1e536ff71" [label="local://context" shape="ellipse"];
  "sha256:4234afcaa87711cd43fb97c6f80c55afe32f4fcd0457d0a97f239342a5e0cb90" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:1671be899b2e336d17f83724fdb794be076fc21f870f71e2d31943f14ca42ba8" [label="/bin/sh -c /opt/multistreamer/build" shape="box"];
  "sha256:878f788933871e9821594dcbd5a66e4715e254d388735068aa480b3ca90f443a" [label="sha256:878f788933871e9821594dcbd5a66e4715e254d388735068aa480b3ca90f443a" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:64d73b8bafc19366a2759a2fa0a534092c64664a3a9245a5f530d9cdc2efc817" [label=""];
  "sha256:66dcd25a994c2be06d1e64f58a0550c58060379e215f80e73079898bc86648f3" -> "sha256:64d73b8bafc19366a2759a2fa0a534092c64664a3a9245a5f530d9cdc2efc817" [label=""];
  "sha256:64d73b8bafc19366a2759a2fa0a534092c64664a3a9245a5f530d9cdc2efc817" -> "sha256:f7a22a8ead72806f629d1491d6cb0da8592c565d65e0e3e48b226a5bbd2f7832" [label=""];
  "sha256:ef9d67d1c6f38298cc105bdf480ee67f93fa2032ccc1c077554b43752638a78b" -> "sha256:f7a22a8ead72806f629d1491d6cb0da8592c565d65e0e3e48b226a5bbd2f7832" [label=""];
  "sha256:f7a22a8ead72806f629d1491d6cb0da8592c565d65e0e3e48b226a5bbd2f7832" -> "sha256:4234afcaa87711cd43fb97c6f80c55afe32f4fcd0457d0a97f239342a5e0cb90" [label=""];
  "sha256:396d0e7e1f5a8148a1539cdcd7d3745e24f50a065c9a55fef7af58a1e536ff71" -> "sha256:4234afcaa87711cd43fb97c6f80c55afe32f4fcd0457d0a97f239342a5e0cb90" [label=""];
  "sha256:4234afcaa87711cd43fb97c6f80c55afe32f4fcd0457d0a97f239342a5e0cb90" -> "sha256:1671be899b2e336d17f83724fdb794be076fc21f870f71e2d31943f14ca42ba8" [label=""];
  "sha256:1671be899b2e336d17f83724fdb794be076fc21f870f71e2d31943f14ca42ba8" -> "sha256:878f788933871e9821594dcbd5a66e4715e254d388735068aa480b3ca90f443a" [label=""];
}

