[app/sources/341301459.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label="/bin/sh -c apt-get update && apt-get install libcap2-bin mumble-server -y" shape="box"];
  "sha256:e6db343892c2ddf8501780fc83896031a1fb8e0e39c87271a3fbd6695f160387" [label="local://context" shape="ellipse"];
  "sha256:caa6cf62fe97ae2b355d4bda117c53d78b8b6707fcc229e0ee60fa8a817a356e" [label="copy{src=/mumble-server.ini, dest=/etc/mumble-server.ini}" shape="note"];
  "sha256:734101cc30ae8921f8bc5cb3ffc2bb485deffebfde78526f92cb1e7686ad1c6f" [label="sha256:734101cc30ae8921f8bc5cb3ffc2bb485deffebfde78526f92cb1e7686ad1c6f" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label=""];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" -> "sha256:caa6cf62fe97ae2b355d4bda117c53d78b8b6707fcc229e0ee60fa8a817a356e" [label=""];
  "sha256:e6db343892c2ddf8501780fc83896031a1fb8e0e39c87271a3fbd6695f160387" -> "sha256:caa6cf62fe97ae2b355d4bda117c53d78b8b6707fcc229e0ee60fa8a817a356e" [label=""];
  "sha256:caa6cf62fe97ae2b355d4bda117c53d78b8b6707fcc229e0ee60fa8a817a356e" -> "sha256:734101cc30ae8921f8bc5cb3ffc2bb485deffebfde78526f92cb1e7686ad1c6f" [label=""];
}

