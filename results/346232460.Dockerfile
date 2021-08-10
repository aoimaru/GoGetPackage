[app/sources/346232460.Dockerfile]
digraph {
  "sha256:d2ac270a35e0cb0aed1dd77a85fa9434b3851579354f968482aaa7e6c078338a" [label="docker-image://docker.io/apsl/thumbor-multiprocess:latest" shape="ellipse"];
  "sha256:c0764fb72e0801a675564b9a54a78bd2243b4294dfaf4b0604b93472cf82b02d" [label="/bin/sh -c pip uninstall -y pillow; true;" shape="box"];
  "sha256:9657b8fcdcb613daea60e5d8c86d406c04a02c51ba14607ebd89d139b37b6b77" [label="/bin/sh -c CC=\"cc -m$SIMD_LEVEL\" pip install --no-cache-dir -U --force-reinstall pillow-simd" shape="box"];
  "sha256:d432f0e632632909b0313cd32f4b3b45c8e01988044b06e45c05c434375ec58f" [label="sha256:d432f0e632632909b0313cd32f4b3b45c8e01988044b06e45c05c434375ec58f" shape="plaintext"];
  "sha256:d2ac270a35e0cb0aed1dd77a85fa9434b3851579354f968482aaa7e6c078338a" -> "sha256:c0764fb72e0801a675564b9a54a78bd2243b4294dfaf4b0604b93472cf82b02d" [label=""];
  "sha256:c0764fb72e0801a675564b9a54a78bd2243b4294dfaf4b0604b93472cf82b02d" -> "sha256:9657b8fcdcb613daea60e5d8c86d406c04a02c51ba14607ebd89d139b37b6b77" [label=""];
  "sha256:9657b8fcdcb613daea60e5d8c86d406c04a02c51ba14607ebd89d139b37b6b77" -> "sha256:d432f0e632632909b0313cd32f4b3b45c8e01988044b06e45c05c434375ec58f" [label=""];
}

