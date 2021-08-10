[app/sources/198233980.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b4bb0679c959daaf1a9a49fe015e12b6eb76bb86f54ae9cbb5016d3508bd7371" [label="/bin/sh -c apt-get update && apt-get install -y git npm nodejs openjdk-7-jre" shape="box"];
  "sha256:46be32f24382f415f93f38d2f734a8b7e4095449ea34af02163ec7e76f9a5bcd" [label="/bin/sh -c ln -s /usr/bin/nodejs /usr/local/bin/node" shape="box"];
  "sha256:5abb1793115ce8174461319d994778cf51957ebc86422089a62263a77b645b78" [label="mkdir{path=/build}" shape="note"];
  "sha256:67959d9fa72d27e2384ccf5cde1d9f0c5d424c3819bea06aac8dcda248af5002" [label="local://context" shape="ellipse"];
  "sha256:eca73fc6cd4b36dde8155162b7f06a15b331c76f56700e81bc891f02fe4e7d59" [label="copy{src=/package.json, dest=/build/package.json}" shape="note"];
  "sha256:236c63333b3208694a641330e7cb775310934d3f0ac14771a0f73102a3b27710" [label="/bin/sh -c npm install" shape="box"];
  "sha256:e5e9b9261c5c14ebeab6a201fc5ba1b8a56400ac69f9bf5770a5c7cd9c4059d0" [label="copy{src=/, dest=/build}" shape="note"];
  "sha256:e9c0af2d44f1e2ec1a166ebcfd779cef3f1bf0f78ab296d32fd26c7aa8ca8ba2" [label="sha256:e9c0af2d44f1e2ec1a166ebcfd779cef3f1bf0f78ab296d32fd26c7aa8ca8ba2" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b4bb0679c959daaf1a9a49fe015e12b6eb76bb86f54ae9cbb5016d3508bd7371" [label=""];
  "sha256:b4bb0679c959daaf1a9a49fe015e12b6eb76bb86f54ae9cbb5016d3508bd7371" -> "sha256:46be32f24382f415f93f38d2f734a8b7e4095449ea34af02163ec7e76f9a5bcd" [label=""];
  "sha256:46be32f24382f415f93f38d2f734a8b7e4095449ea34af02163ec7e76f9a5bcd" -> "sha256:5abb1793115ce8174461319d994778cf51957ebc86422089a62263a77b645b78" [label=""];
  "sha256:5abb1793115ce8174461319d994778cf51957ebc86422089a62263a77b645b78" -> "sha256:eca73fc6cd4b36dde8155162b7f06a15b331c76f56700e81bc891f02fe4e7d59" [label=""];
  "sha256:67959d9fa72d27e2384ccf5cde1d9f0c5d424c3819bea06aac8dcda248af5002" -> "sha256:eca73fc6cd4b36dde8155162b7f06a15b331c76f56700e81bc891f02fe4e7d59" [label=""];
  "sha256:eca73fc6cd4b36dde8155162b7f06a15b331c76f56700e81bc891f02fe4e7d59" -> "sha256:236c63333b3208694a641330e7cb775310934d3f0ac14771a0f73102a3b27710" [label=""];
  "sha256:236c63333b3208694a641330e7cb775310934d3f0ac14771a0f73102a3b27710" -> "sha256:e5e9b9261c5c14ebeab6a201fc5ba1b8a56400ac69f9bf5770a5c7cd9c4059d0" [label=""];
  "sha256:67959d9fa72d27e2384ccf5cde1d9f0c5d424c3819bea06aac8dcda248af5002" -> "sha256:e5e9b9261c5c14ebeab6a201fc5ba1b8a56400ac69f9bf5770a5c7cd9c4059d0" [label=""];
  "sha256:e5e9b9261c5c14ebeab6a201fc5ba1b8a56400ac69f9bf5770a5c7cd9c4059d0" -> "sha256:e9c0af2d44f1e2ec1a166ebcfd779cef3f1bf0f78ab296d32fd26c7aa8ca8ba2" [label=""];
}

