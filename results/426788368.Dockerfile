[app/sources/426788368.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:9f18e93c1d3e9bb72cf86f0910af656551c7d9dd91d692fde789e65805497ecc" [label="/bin/sh -c apt-get update && apt-get -y --no-install-recommends install dput tree && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6f6dc6aa02f27838ac45f8efd0a588267c47f8ae13641cb5e54262228e5258e4" [label="/bin/sh -c mkdir -p /to_upload/empty" shape="box"];
  "sha256:a47feac06252201d1487d039f7c00df46eab3eaf1f9adf248f808ea1c0bdbed9" [label="local://context" shape="ellipse"];
  "sha256:b49f23e15aa1a9c8b5feb59f25f7250e803e7a09a5757ea37288532d49813980" [label="copy{src=/docker/upload_to_launchpad.sh, dest=/opt/upload_to_launchpad.sh}" shape="note"];
  "sha256:09e7343f0bb79c62cf4ac1fe55b95289fe1dacc9cc0cb5876c177e10500df783" [label="sha256:09e7343f0bb79c62cf4ac1fe55b95289fe1dacc9cc0cb5876c177e10500df783" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:9f18e93c1d3e9bb72cf86f0910af656551c7d9dd91d692fde789e65805497ecc" [label=""];
  "sha256:9f18e93c1d3e9bb72cf86f0910af656551c7d9dd91d692fde789e65805497ecc" -> "sha256:6f6dc6aa02f27838ac45f8efd0a588267c47f8ae13641cb5e54262228e5258e4" [label=""];
  "sha256:6f6dc6aa02f27838ac45f8efd0a588267c47f8ae13641cb5e54262228e5258e4" -> "sha256:b49f23e15aa1a9c8b5feb59f25f7250e803e7a09a5757ea37288532d49813980" [label=""];
  "sha256:a47feac06252201d1487d039f7c00df46eab3eaf1f9adf248f808ea1c0bdbed9" -> "sha256:b49f23e15aa1a9c8b5feb59f25f7250e803e7a09a5757ea37288532d49813980" [label=""];
  "sha256:b49f23e15aa1a9c8b5feb59f25f7250e803e7a09a5757ea37288532d49813980" -> "sha256:09e7343f0bb79c62cf4ac1fe55b95289fe1dacc9cc0cb5876c177e10500df783" [label=""];
}

