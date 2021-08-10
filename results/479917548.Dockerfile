[app/sources/479917548.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b4bb0679c959daaf1a9a49fe015e12b6eb76bb86f54ae9cbb5016d3508bd7371" [label="/bin/sh -c apt-get update && apt-get install -y git npm nodejs openjdk-7-jre" shape="box"];
  "sha256:46be32f24382f415f93f38d2f734a8b7e4095449ea34af02163ec7e76f9a5bcd" [label="/bin/sh -c ln -s /usr/bin/nodejs /usr/local/bin/node" shape="box"];
  "sha256:5abb1793115ce8174461319d994778cf51957ebc86422089a62263a77b645b78" [label="mkdir{path=/build}" shape="note"];
  "sha256:626c5f6493ac3c8ae6b0cecb1576cc34d82cc1c2297f4fa092e149a53a22d719" [label="local://context" shape="ellipse"];
  "sha256:3a95a4e375f4bdbb4c2ce0c8e9671afe3a7cab4b06059058be2af0aeb7a935ed" [label="copy{src=/package.json, dest=/build/package.json}" shape="note"];
  "sha256:7539f7463e6a99ebdf4378130e8b56a3cc66cb41c0feb9a48c03c74b4002c25e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9db9c9b5e3fc6af4d0643387bc2b5e0438ad4f647e7c6f1e416d743e7c342838" [label="copy{src=/, dest=/build}" shape="note"];
  "sha256:3a75468ee8deff4bbf43233bb327f21cd890b4e7c3cb0e2379df378dec24f1c9" [label="sha256:3a75468ee8deff4bbf43233bb327f21cd890b4e7c3cb0e2379df378dec24f1c9" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b4bb0679c959daaf1a9a49fe015e12b6eb76bb86f54ae9cbb5016d3508bd7371" [label=""];
  "sha256:b4bb0679c959daaf1a9a49fe015e12b6eb76bb86f54ae9cbb5016d3508bd7371" -> "sha256:46be32f24382f415f93f38d2f734a8b7e4095449ea34af02163ec7e76f9a5bcd" [label=""];
  "sha256:46be32f24382f415f93f38d2f734a8b7e4095449ea34af02163ec7e76f9a5bcd" -> "sha256:5abb1793115ce8174461319d994778cf51957ebc86422089a62263a77b645b78" [label=""];
  "sha256:5abb1793115ce8174461319d994778cf51957ebc86422089a62263a77b645b78" -> "sha256:3a95a4e375f4bdbb4c2ce0c8e9671afe3a7cab4b06059058be2af0aeb7a935ed" [label=""];
  "sha256:626c5f6493ac3c8ae6b0cecb1576cc34d82cc1c2297f4fa092e149a53a22d719" -> "sha256:3a95a4e375f4bdbb4c2ce0c8e9671afe3a7cab4b06059058be2af0aeb7a935ed" [label=""];
  "sha256:3a95a4e375f4bdbb4c2ce0c8e9671afe3a7cab4b06059058be2af0aeb7a935ed" -> "sha256:7539f7463e6a99ebdf4378130e8b56a3cc66cb41c0feb9a48c03c74b4002c25e" [label=""];
  "sha256:7539f7463e6a99ebdf4378130e8b56a3cc66cb41c0feb9a48c03c74b4002c25e" -> "sha256:9db9c9b5e3fc6af4d0643387bc2b5e0438ad4f647e7c6f1e416d743e7c342838" [label=""];
  "sha256:626c5f6493ac3c8ae6b0cecb1576cc34d82cc1c2297f4fa092e149a53a22d719" -> "sha256:9db9c9b5e3fc6af4d0643387bc2b5e0438ad4f647e7c6f1e416d743e7c342838" [label=""];
  "sha256:9db9c9b5e3fc6af4d0643387bc2b5e0438ad4f647e7c6f1e416d743e7c342838" -> "sha256:3a75468ee8deff4bbf43233bb327f21cd890b4e7c3cb0e2379df378dec24f1c9" [label=""];
}

