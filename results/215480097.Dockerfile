[app/sources/215480097.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label="/bin/sh -c apt-get update && apt-get install libcap2-bin mumble-server -y" shape="box"];
  "sha256:09d81fdae1f4fb21e1947d5f007b6692c635cf9924832e678ca47645393589a5" [label="local://context" shape="ellipse"];
  "sha256:fb3d33a439965704790069506b4b4ab7b81ffd4b9d107c5914eeddc7070a6a83" [label="copy{src=/mumble-server.ini, dest=/etc/mumble-server.ini}" shape="note"];
  "sha256:20dc04576c0c1ac61b400dc32ec2be9c7ba4afa9313eb46d7581e790d9f4bd71" [label="sha256:20dc04576c0c1ac61b400dc32ec2be9c7ba4afa9313eb46d7581e790d9f4bd71" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label=""];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" -> "sha256:fb3d33a439965704790069506b4b4ab7b81ffd4b9d107c5914eeddc7070a6a83" [label=""];
  "sha256:09d81fdae1f4fb21e1947d5f007b6692c635cf9924832e678ca47645393589a5" -> "sha256:fb3d33a439965704790069506b4b4ab7b81ffd4b9d107c5914eeddc7070a6a83" [label=""];
  "sha256:fb3d33a439965704790069506b4b4ab7b81ffd4b9d107c5914eeddc7070a6a83" -> "sha256:20dc04576c0c1ac61b400dc32ec2be9c7ba4afa9313eb46d7581e790d9f4bd71" [label=""];
}

