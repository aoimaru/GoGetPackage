[app/sources/471552950.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:5b45f67faca135f9d0631b1affda076604d3f10d2e943648bd34e7f0b6e7bbf4" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y          g++          make          cmake          wget          unzip          vim          git          libopencv-dev          libboost-all-dev          python-pip" shape="box"];
  "sha256:297eb9714c2ac09c8b2391928b37789575b79b160bdc62ecc5ebcce75888e0a6" [label="/bin/sh -c pip install https://download.pytorch.org/whl/cpu/torch-1.0.0-cp27-cp27mu-linux_x86_64.whl" shape="box"];
  "sha256:a84ae6113d74ed69149891da382c6a05ec0f9319f208c5535ff7b6add98d2860" [label="/bin/sh -c pip install numpy pillow torchvision" shape="box"];
  "sha256:4fae829c6872041857ec72282ceb123f9f47d6ecf00d53924a4e00984a891fe0" [label="sha256:4fae829c6872041857ec72282ceb123f9f47d6ecf00d53924a4e00984a891fe0" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:5b45f67faca135f9d0631b1affda076604d3f10d2e943648bd34e7f0b6e7bbf4" [label=""];
  "sha256:5b45f67faca135f9d0631b1affda076604d3f10d2e943648bd34e7f0b6e7bbf4" -> "sha256:297eb9714c2ac09c8b2391928b37789575b79b160bdc62ecc5ebcce75888e0a6" [label=""];
  "sha256:297eb9714c2ac09c8b2391928b37789575b79b160bdc62ecc5ebcce75888e0a6" -> "sha256:a84ae6113d74ed69149891da382c6a05ec0f9319f208c5535ff7b6add98d2860" [label=""];
  "sha256:a84ae6113d74ed69149891da382c6a05ec0f9319f208c5535ff7b6add98d2860" -> "sha256:4fae829c6872041857ec72282ceb123f9f47d6ecf00d53924a4e00984a891fe0" [label=""];
}

