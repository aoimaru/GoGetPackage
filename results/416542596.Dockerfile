[app/sources/416542596.Dockerfile]
digraph {
  "sha256:174711015de4f7461c96d532e9f6d29eac77f3b9ec11c00ecc00ed409bfaf2b3" [label="local://context" shape="ellipse"];
  "sha256:4e2590b8e8eb44e24512c5d73598a82f5003b7c8bfcce5a054b0e658a61494f4" [label="docker-image://docker.io/library/debian:latest@sha256:cc58a29c333ee594f7624d968123429b26916face46169304f07580644dde6b2" shape="ellipse"];
  "sha256:31574878210bb48321b9b0aaf00b4f33e8f784dae63c35e30a48c8160e82ae96" [label="copy{src=/Dockerfile, dest=/}" shape="note"];
  "sha256:1ca24eb9809661f7db73c3d8e788702a3fd9a16abd13c159c4d5fa792430aa0e" [label="copy{src=/docker/setup.sh, dest=/opt/setup.sh}" shape="note"];
  "sha256:30aceffe7e9cb0399a10b606154b444822c4a22ae4442666eaafa792bc47d14f" [label="copy{src=/rdesktop-fork-bd6aa6acddf0ba640a49834807872f4cc0d0a773, dest=/opt/rdesktop}" shape="note"];
  "sha256:bec4d869bbdcd057ce2df2b1a528de0c1ae5468a8f1bbe7f3f4e4229dc4ebcfc" [label="/bin/sh -c /opt/setup.sh" shape="box"];
  "sha256:3a7f258650e7d5b4ec53c95089e5cd15d567d27f0a7c1f906a457bd98f03d891" [label="copy{src=/docker/entrypoint.sh, dest=/opt/entrypoint.sh}" shape="note"];
  "sha256:257933ae594a30018495d9da4dbb16e372fe3d96a5da11c43a8af4aae427771f" [label="sha256:257933ae594a30018495d9da4dbb16e372fe3d96a5da11c43a8af4aae427771f" shape="plaintext"];
  "sha256:4e2590b8e8eb44e24512c5d73598a82f5003b7c8bfcce5a054b0e658a61494f4" -> "sha256:31574878210bb48321b9b0aaf00b4f33e8f784dae63c35e30a48c8160e82ae96" [label=""];
  "sha256:174711015de4f7461c96d532e9f6d29eac77f3b9ec11c00ecc00ed409bfaf2b3" -> "sha256:31574878210bb48321b9b0aaf00b4f33e8f784dae63c35e30a48c8160e82ae96" [label=""];
  "sha256:31574878210bb48321b9b0aaf00b4f33e8f784dae63c35e30a48c8160e82ae96" -> "sha256:1ca24eb9809661f7db73c3d8e788702a3fd9a16abd13c159c4d5fa792430aa0e" [label=""];
  "sha256:174711015de4f7461c96d532e9f6d29eac77f3b9ec11c00ecc00ed409bfaf2b3" -> "sha256:1ca24eb9809661f7db73c3d8e788702a3fd9a16abd13c159c4d5fa792430aa0e" [label=""];
  "sha256:1ca24eb9809661f7db73c3d8e788702a3fd9a16abd13c159c4d5fa792430aa0e" -> "sha256:30aceffe7e9cb0399a10b606154b444822c4a22ae4442666eaafa792bc47d14f" [label=""];
  "sha256:174711015de4f7461c96d532e9f6d29eac77f3b9ec11c00ecc00ed409bfaf2b3" -> "sha256:30aceffe7e9cb0399a10b606154b444822c4a22ae4442666eaafa792bc47d14f" [label=""];
  "sha256:30aceffe7e9cb0399a10b606154b444822c4a22ae4442666eaafa792bc47d14f" -> "sha256:bec4d869bbdcd057ce2df2b1a528de0c1ae5468a8f1bbe7f3f4e4229dc4ebcfc" [label=""];
  "sha256:bec4d869bbdcd057ce2df2b1a528de0c1ae5468a8f1bbe7f3f4e4229dc4ebcfc" -> "sha256:3a7f258650e7d5b4ec53c95089e5cd15d567d27f0a7c1f906a457bd98f03d891" [label=""];
  "sha256:174711015de4f7461c96d532e9f6d29eac77f3b9ec11c00ecc00ed409bfaf2b3" -> "sha256:3a7f258650e7d5b4ec53c95089e5cd15d567d27f0a7c1f906a457bd98f03d891" [label=""];
  "sha256:3a7f258650e7d5b4ec53c95089e5cd15d567d27f0a7c1f906a457bd98f03d891" -> "sha256:257933ae594a30018495d9da4dbb16e372fe3d96a5da11c43a8af4aae427771f" [label=""];
}

