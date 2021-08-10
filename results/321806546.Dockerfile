[app/sources/321806546.Dockerfile]
digraph {
  "sha256:9c6b590e8c2703c1c07ffd49eab0e75ae344e6d388c32e0d0051c24a29bc293c" [label="local://context" shape="ellipse"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" [label="docker-image://docker.io/library/ubuntu:17.04" shape="ellipse"];
  "sha256:5df7a1d0e917e6c223c56b2b3490033339dfb0b00ccdc99a9cf9e6669d21bc3d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3d736575bfa1a980986e83080783b9207ec4343e69416a1e6d9ee8bf47564fae" [label="/bin/sh -c apt-get -y install build-essential" shape="box"];
  "sha256:5de124dc1b38935b71b2a106e5ab658926162236fa64b00036d3e01902334859" [label="/bin/sh -c set -e -x ;        groupadd -g 1337 chall ;        useradd -g 1337 -u 1337 -m chall" shape="box"];
  "sha256:20e507c574ef8e24f98287cffdc3b2fa80e8bd4581bb26e39350160047ff9741" [label="copy{src=/challenge/flag.txt, dest=/home/chall}" shape="note"];
  "sha256:452ff9c34ebbbc292fc8e9ee2ecc77360ed54dcaab20763c28c5ecb352fb677b" [label="copy{src=/challenge/compile.sh, dest=/home/chall}" shape="note"];
  "sha256:853f1b0939e30ce58de18ab1814fd647154e215e90ef764c72baf1f25ec6e60c" [label="/bin/sh -c set -e -x ;        chown -R chall:chall /home/chall ;        chmod -R 755 /home/chall ;        chmod 0000 /home/chall/flag.txt" shape="box"];
  "sha256:f648e28b9a3149f5a7259e8115a40416c1ee4f74a4f6f6a6ea609d495c5e39a1" [label="sha256:f648e28b9a3149f5a7259e8115a40416c1ee4f74a4f6f6a6ea609d495c5e39a1" shape="plaintext"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" -> "sha256:5df7a1d0e917e6c223c56b2b3490033339dfb0b00ccdc99a9cf9e6669d21bc3d" [label=""];
  "sha256:5df7a1d0e917e6c223c56b2b3490033339dfb0b00ccdc99a9cf9e6669d21bc3d" -> "sha256:3d736575bfa1a980986e83080783b9207ec4343e69416a1e6d9ee8bf47564fae" [label=""];
  "sha256:3d736575bfa1a980986e83080783b9207ec4343e69416a1e6d9ee8bf47564fae" -> "sha256:5de124dc1b38935b71b2a106e5ab658926162236fa64b00036d3e01902334859" [label=""];
  "sha256:5de124dc1b38935b71b2a106e5ab658926162236fa64b00036d3e01902334859" -> "sha256:20e507c574ef8e24f98287cffdc3b2fa80e8bd4581bb26e39350160047ff9741" [label=""];
  "sha256:9c6b590e8c2703c1c07ffd49eab0e75ae344e6d388c32e0d0051c24a29bc293c" -> "sha256:20e507c574ef8e24f98287cffdc3b2fa80e8bd4581bb26e39350160047ff9741" [label=""];
  "sha256:20e507c574ef8e24f98287cffdc3b2fa80e8bd4581bb26e39350160047ff9741" -> "sha256:452ff9c34ebbbc292fc8e9ee2ecc77360ed54dcaab20763c28c5ecb352fb677b" [label=""];
  "sha256:9c6b590e8c2703c1c07ffd49eab0e75ae344e6d388c32e0d0051c24a29bc293c" -> "sha256:452ff9c34ebbbc292fc8e9ee2ecc77360ed54dcaab20763c28c5ecb352fb677b" [label=""];
  "sha256:452ff9c34ebbbc292fc8e9ee2ecc77360ed54dcaab20763c28c5ecb352fb677b" -> "sha256:853f1b0939e30ce58de18ab1814fd647154e215e90ef764c72baf1f25ec6e60c" [label=""];
  "sha256:853f1b0939e30ce58de18ab1814fd647154e215e90ef764c72baf1f25ec6e60c" -> "sha256:f648e28b9a3149f5a7259e8115a40416c1ee4f74a4f6f6a6ea609d495c5e39a1" [label=""];
}

