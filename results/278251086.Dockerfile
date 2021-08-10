[app/sources/278251086.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:41f27c2764d92aaa0b6758343e388d33c4840633048137bd1f3f7381eff29b96" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends         software-properties-common         build-essential         vim         wget         curl         git         zip         unzip &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d030b0fdd9507876286e74f883e48f3f3313ac32f4fc0b50c3566cb1e15ce15c" [label="/bin/sh -c add-apt-repository -y ppa:deadsnakes/ppa &&     apt-get update &&     apt-get install -y --no-install-recommends         python3-pip         python3-setuptools         python3.6         python3.6-dev         python3.6-venv &&     pip3 install --no-cache-dir --upgrade pip &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4add43a48b7699e6a6b08c0bfb0e79ea00cc979b0bce93f89f0841be351dbc11" [label="local://context" shape="ellipse"];
  "sha256:d81e499663ea5077a0b829f56005ab99897bb72dd04bb879ef4dc1ab028e6c00" [label="copy{src=/src/requirements.txt, dest=/tmp/}" shape="note"];
  "sha256:3105ce557b006e10eef06d3e3cbf63cf6e21552fd32d2452fe3a7951c07239c6" [label="/bin/sh -c pip install -r /tmp/requirements.txt" shape="box"];
  "sha256:671bb3aebe3f57be4f41bc5974fd149090e1660ffcf6f7707e63ec2d1a0ca569" [label="sha256:671bb3aebe3f57be4f41bc5974fd149090e1660ffcf6f7707e63ec2d1a0ca569" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:41f27c2764d92aaa0b6758343e388d33c4840633048137bd1f3f7381eff29b96" [label=""];
  "sha256:41f27c2764d92aaa0b6758343e388d33c4840633048137bd1f3f7381eff29b96" -> "sha256:d030b0fdd9507876286e74f883e48f3f3313ac32f4fc0b50c3566cb1e15ce15c" [label=""];
  "sha256:d030b0fdd9507876286e74f883e48f3f3313ac32f4fc0b50c3566cb1e15ce15c" -> "sha256:d81e499663ea5077a0b829f56005ab99897bb72dd04bb879ef4dc1ab028e6c00" [label=""];
  "sha256:4add43a48b7699e6a6b08c0bfb0e79ea00cc979b0bce93f89f0841be351dbc11" -> "sha256:d81e499663ea5077a0b829f56005ab99897bb72dd04bb879ef4dc1ab028e6c00" [label=""];
  "sha256:d81e499663ea5077a0b829f56005ab99897bb72dd04bb879ef4dc1ab028e6c00" -> "sha256:3105ce557b006e10eef06d3e3cbf63cf6e21552fd32d2452fe3a7951c07239c6" [label=""];
  "sha256:3105ce557b006e10eef06d3e3cbf63cf6e21552fd32d2452fe3a7951c07239c6" -> "sha256:671bb3aebe3f57be4f41bc5974fd149090e1660ffcf6f7707e63ec2d1a0ca569" [label=""];
}

