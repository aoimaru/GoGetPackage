[app/sources/252782355.Dockerfile]
digraph {
  "sha256:e553bdf88f8ab6a55e5c4a8e02ea89e66e95dba6eb8eb517d97ef791a545ee7f" [label="local://context" shape="ellipse"];
  "sha256:19608c711a8c33bb56d0be479e0233f0cdd9bf96f8305c924a4fd6578322ca5a" [label="docker-image://docker.io/library/nginx:1.13.5-alpine" shape="ellipse"];
  "sha256:54acaaf63f7762bbe35a9c31b56aa2ff1fea29d845ba13d558ebcb995349e162" [label="/bin/sh -c rm /etc/nginx/nginx.conf /etc/nginx/mime.types" shape="box"];
  "sha256:5db67f00b0670fd18550c87634084214d8e6b5253094cafaadb6f7eaba2c4bbf" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:58f9fdd2eb8dd1286e5a33ff9cb28f4a4306509860a43a8cfc44c36075e9ba90" [label="copy{src=/mime.types, dest=/etc/nginx/mime.types}" shape="note"];
  "sha256:c9dccb4a8655b7f2e419b066e232dd9af62164938b39fe0cc10057dc32ca2e49" [label="copy{src=/default, dest=/etc/nginx/sites-enabled/default}" shape="note"];
  "sha256:e28b01c023c316527cce299489a66f5ee3323f6f6a1813e9746713534853e6f6" [label="sha256:e28b01c023c316527cce299489a66f5ee3323f6f6a1813e9746713534853e6f6" shape="plaintext"];
  "sha256:19608c711a8c33bb56d0be479e0233f0cdd9bf96f8305c924a4fd6578322ca5a" -> "sha256:54acaaf63f7762bbe35a9c31b56aa2ff1fea29d845ba13d558ebcb995349e162" [label=""];
  "sha256:54acaaf63f7762bbe35a9c31b56aa2ff1fea29d845ba13d558ebcb995349e162" -> "sha256:5db67f00b0670fd18550c87634084214d8e6b5253094cafaadb6f7eaba2c4bbf" [label=""];
  "sha256:e553bdf88f8ab6a55e5c4a8e02ea89e66e95dba6eb8eb517d97ef791a545ee7f" -> "sha256:5db67f00b0670fd18550c87634084214d8e6b5253094cafaadb6f7eaba2c4bbf" [label=""];
  "sha256:5db67f00b0670fd18550c87634084214d8e6b5253094cafaadb6f7eaba2c4bbf" -> "sha256:58f9fdd2eb8dd1286e5a33ff9cb28f4a4306509860a43a8cfc44c36075e9ba90" [label=""];
  "sha256:e553bdf88f8ab6a55e5c4a8e02ea89e66e95dba6eb8eb517d97ef791a545ee7f" -> "sha256:58f9fdd2eb8dd1286e5a33ff9cb28f4a4306509860a43a8cfc44c36075e9ba90" [label=""];
  "sha256:58f9fdd2eb8dd1286e5a33ff9cb28f4a4306509860a43a8cfc44c36075e9ba90" -> "sha256:c9dccb4a8655b7f2e419b066e232dd9af62164938b39fe0cc10057dc32ca2e49" [label=""];
  "sha256:e553bdf88f8ab6a55e5c4a8e02ea89e66e95dba6eb8eb517d97ef791a545ee7f" -> "sha256:c9dccb4a8655b7f2e419b066e232dd9af62164938b39fe0cc10057dc32ca2e49" [label=""];
  "sha256:c9dccb4a8655b7f2e419b066e232dd9af62164938b39fe0cc10057dc32ca2e49" -> "sha256:e28b01c023c316527cce299489a66f5ee3323f6f6a1813e9746713534853e6f6" [label=""];
}

