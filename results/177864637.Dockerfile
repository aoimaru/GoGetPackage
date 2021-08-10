[app/sources/177864637.Dockerfile]
digraph {
  "sha256:e2c09379e676679eb29e9eb4efe7fe36dc6ecd1607bb433cfaa045840222b99e" [label="docker-image://docker.io/library/nginx:1.7" shape="ellipse"];
  "sha256:5a266b3747866af89466b083cda28a0624b223999d5b1dd8985e626c42182559" [label="local://context" shape="ellipse"];
  "sha256:58a94e8664383686154f5439e1fbb7ae5348bd73ff9b3d6833ac80984ad2d0e7" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:13da459059511ef56dc9855eb8d970ce02d65ba6010f06ea3422cb30a8808a59" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:dd5de849ab8ed0e87cddbb0b57023de598a6f53ecc5d3b4b67081be5090fd2ff" [label="copy{src=/docker-registry.conf, dest=/etc/nginx/docker-registry.conf}" shape="note"];
  "sha256:0646095a4054802c0159a7269e21c237df4f240cc1b4782a02e0edaaa5af30d8" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:7ff4c3a31e6f61ac17cb61b0470a46acd2cf9cc9e3083713a6edd19701cb67fa" [label="sha256:7ff4c3a31e6f61ac17cb61b0470a46acd2cf9cc9e3083713a6edd19701cb67fa" shape="plaintext"];
  "sha256:e2c09379e676679eb29e9eb4efe7fe36dc6ecd1607bb433cfaa045840222b99e" -> "sha256:58a94e8664383686154f5439e1fbb7ae5348bd73ff9b3d6833ac80984ad2d0e7" [label=""];
  "sha256:5a266b3747866af89466b083cda28a0624b223999d5b1dd8985e626c42182559" -> "sha256:58a94e8664383686154f5439e1fbb7ae5348bd73ff9b3d6833ac80984ad2d0e7" [label=""];
  "sha256:58a94e8664383686154f5439e1fbb7ae5348bd73ff9b3d6833ac80984ad2d0e7" -> "sha256:13da459059511ef56dc9855eb8d970ce02d65ba6010f06ea3422cb30a8808a59" [label=""];
  "sha256:5a266b3747866af89466b083cda28a0624b223999d5b1dd8985e626c42182559" -> "sha256:13da459059511ef56dc9855eb8d970ce02d65ba6010f06ea3422cb30a8808a59" [label=""];
  "sha256:13da459059511ef56dc9855eb8d970ce02d65ba6010f06ea3422cb30a8808a59" -> "sha256:dd5de849ab8ed0e87cddbb0b57023de598a6f53ecc5d3b4b67081be5090fd2ff" [label=""];
  "sha256:5a266b3747866af89466b083cda28a0624b223999d5b1dd8985e626c42182559" -> "sha256:dd5de849ab8ed0e87cddbb0b57023de598a6f53ecc5d3b4b67081be5090fd2ff" [label=""];
  "sha256:dd5de849ab8ed0e87cddbb0b57023de598a6f53ecc5d3b4b67081be5090fd2ff" -> "sha256:0646095a4054802c0159a7269e21c237df4f240cc1b4782a02e0edaaa5af30d8" [label=""];
  "sha256:5a266b3747866af89466b083cda28a0624b223999d5b1dd8985e626c42182559" -> "sha256:0646095a4054802c0159a7269e21c237df4f240cc1b4782a02e0edaaa5af30d8" [label=""];
  "sha256:0646095a4054802c0159a7269e21c237df4f240cc1b4782a02e0edaaa5af30d8" -> "sha256:7ff4c3a31e6f61ac17cb61b0470a46acd2cf9cc9e3083713a6edd19701cb67fa" [label=""];
}

