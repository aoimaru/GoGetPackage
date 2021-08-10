[app/sources/290316936.Dockerfile]
digraph {
  "sha256:f3ad5ef80e554e1f51114654073548e6a9f57f41d63cd05f353630a5e00d6769" [label="docker-image://docker.io/nvidia/cuda:9.2-cudnn7-devel" shape="ellipse"];
  "sha256:013e0d6a6a8759c24ad5c4dac6a2e5cfc47fccb436c07329d65b11604d6bc79f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:74e4e1a9e782bde91fd4aeed1cf493114f1c60deac5d47687ba5058c0ae9005c" [label="/bin/sh -c apt-get install -y wget python gcc" shape="box"];
  "sha256:217d9f8fb1bede5a23ee341f40eca3dab0646718300b50d141d684463cd3a74b" [label="/bin/sh -c wget https://bootstrap.pypa.io/get-pip.py" shape="box"];
  "sha256:6bf3031819eb30ac0d196e6110aaf28ca36ecb0376deb0afd09b634ccc152790" [label="/bin/sh -c python get-pip.py" shape="box"];
  "sha256:17f8a1d413734d56093bc1f380b5c5bdd4ff5aa295f7f5fee60b1b0913b290ca" [label="/bin/sh -c pip install mxnet-cu92" shape="box"];
  "sha256:8a1e17cad79cd2eff7861b6ba32d8317d73bd7eb2ae8dee510e719ac0547bbe7" [label="sha256:8a1e17cad79cd2eff7861b6ba32d8317d73bd7eb2ae8dee510e719ac0547bbe7" shape="plaintext"];
  "sha256:f3ad5ef80e554e1f51114654073548e6a9f57f41d63cd05f353630a5e00d6769" -> "sha256:013e0d6a6a8759c24ad5c4dac6a2e5cfc47fccb436c07329d65b11604d6bc79f" [label=""];
  "sha256:013e0d6a6a8759c24ad5c4dac6a2e5cfc47fccb436c07329d65b11604d6bc79f" -> "sha256:74e4e1a9e782bde91fd4aeed1cf493114f1c60deac5d47687ba5058c0ae9005c" [label=""];
  "sha256:74e4e1a9e782bde91fd4aeed1cf493114f1c60deac5d47687ba5058c0ae9005c" -> "sha256:217d9f8fb1bede5a23ee341f40eca3dab0646718300b50d141d684463cd3a74b" [label=""];
  "sha256:217d9f8fb1bede5a23ee341f40eca3dab0646718300b50d141d684463cd3a74b" -> "sha256:6bf3031819eb30ac0d196e6110aaf28ca36ecb0376deb0afd09b634ccc152790" [label=""];
  "sha256:6bf3031819eb30ac0d196e6110aaf28ca36ecb0376deb0afd09b634ccc152790" -> "sha256:17f8a1d413734d56093bc1f380b5c5bdd4ff5aa295f7f5fee60b1b0913b290ca" [label=""];
  "sha256:17f8a1d413734d56093bc1f380b5c5bdd4ff5aa295f7f5fee60b1b0913b290ca" -> "sha256:8a1e17cad79cd2eff7861b6ba32d8317d73bd7eb2ae8dee510e719ac0547bbe7" [label=""];
}

