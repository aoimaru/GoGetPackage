[app/sources/216703985.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:c203ab7d4df35aa6f8275f0ddce6a6030a56690dfe1811b97e5e48d8628f461c" [label="/bin/sh -c apk add --no-cache     ffmpeg" shape="box"];
  "sha256:76a0841beca7ff64a17ca19b8213534c3d730d13a3c38437466048c16d646c2b" [label="local://context" shape="ellipse"];
  "sha256:3914cdd59cb407a384c45738e22cffbba7941fd5f5abf1339e843d13271734a6" [label="copy{src=/spotdl, dest=/spotify-downloader/spotdl}" shape="note"];
  "sha256:8de66bc00ac7aef91797defdf0c5746988ac621154a5e75262ad7583a12fd262" [label="copy{src=/setup.py, dest=/spotify-downloader/setup.py}" shape="note"];
  "sha256:23d9e0abc185e23a55388b4d20b52d76feace3eba10f3a9d2d363544e4888ad2" [label="copy{src=/README.md, dest=/spotify-downloader/README.md}" shape="note"];
  "sha256:1e5e2c0580acb394ea0da7b9b8a3c65f07b41e9a6267bec1b06f86a0ade7abb0" [label="mkdir{path=/spotify-downloader}" shape="note"];
  "sha256:09aaa65cc623700d649f45619585f5111045cae15d5beefc296ad0a2e979f767" [label="/bin/sh -c pip install ." shape="box"];
  "sha256:a70054e00ee4a70d16005ae6038fe3cfe5eb6dcae58c680bd3d006ae2302395a" [label="/bin/sh -c mkdir /music" shape="box"];
  "sha256:45799ab739df17bbf24e5573c9f84eb3f3c27e08b21951b7f9e22dda308ea754" [label="mkdir{path=/music}" shape="note"];
  "sha256:5eab04060e6c23756dc04436f0d1e38b9b00cc517348b9311190b346970a23f6" [label="sha256:5eab04060e6c23756dc04436f0d1e38b9b00cc517348b9311190b346970a23f6" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:c203ab7d4df35aa6f8275f0ddce6a6030a56690dfe1811b97e5e48d8628f461c" [label=""];
  "sha256:c203ab7d4df35aa6f8275f0ddce6a6030a56690dfe1811b97e5e48d8628f461c" -> "sha256:3914cdd59cb407a384c45738e22cffbba7941fd5f5abf1339e843d13271734a6" [label=""];
  "sha256:76a0841beca7ff64a17ca19b8213534c3d730d13a3c38437466048c16d646c2b" -> "sha256:3914cdd59cb407a384c45738e22cffbba7941fd5f5abf1339e843d13271734a6" [label=""];
  "sha256:3914cdd59cb407a384c45738e22cffbba7941fd5f5abf1339e843d13271734a6" -> "sha256:8de66bc00ac7aef91797defdf0c5746988ac621154a5e75262ad7583a12fd262" [label=""];
  "sha256:76a0841beca7ff64a17ca19b8213534c3d730d13a3c38437466048c16d646c2b" -> "sha256:8de66bc00ac7aef91797defdf0c5746988ac621154a5e75262ad7583a12fd262" [label=""];
  "sha256:8de66bc00ac7aef91797defdf0c5746988ac621154a5e75262ad7583a12fd262" -> "sha256:23d9e0abc185e23a55388b4d20b52d76feace3eba10f3a9d2d363544e4888ad2" [label=""];
  "sha256:76a0841beca7ff64a17ca19b8213534c3d730d13a3c38437466048c16d646c2b" -> "sha256:23d9e0abc185e23a55388b4d20b52d76feace3eba10f3a9d2d363544e4888ad2" [label=""];
  "sha256:23d9e0abc185e23a55388b4d20b52d76feace3eba10f3a9d2d363544e4888ad2" -> "sha256:1e5e2c0580acb394ea0da7b9b8a3c65f07b41e9a6267bec1b06f86a0ade7abb0" [label=""];
  "sha256:1e5e2c0580acb394ea0da7b9b8a3c65f07b41e9a6267bec1b06f86a0ade7abb0" -> "sha256:09aaa65cc623700d649f45619585f5111045cae15d5beefc296ad0a2e979f767" [label=""];
  "sha256:09aaa65cc623700d649f45619585f5111045cae15d5beefc296ad0a2e979f767" -> "sha256:a70054e00ee4a70d16005ae6038fe3cfe5eb6dcae58c680bd3d006ae2302395a" [label=""];
  "sha256:a70054e00ee4a70d16005ae6038fe3cfe5eb6dcae58c680bd3d006ae2302395a" -> "sha256:45799ab739df17bbf24e5573c9f84eb3f3c27e08b21951b7f9e22dda308ea754" [label=""];
  "sha256:45799ab739df17bbf24e5573c9f84eb3f3c27e08b21951b7f9e22dda308ea754" -> "sha256:5eab04060e6c23756dc04436f0d1e38b9b00cc517348b9311190b346970a23f6" [label=""];
}

