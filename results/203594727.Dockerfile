[app/sources/203594727.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:c1cd4ed801cc86ace2addb1294186b787c524dafb1e6c4087d79f1694331d24f" [label="local://context" shape="ellipse"];
  "sha256:07901f5ef520d8e9a612b4c1555bd3fc4b87650dd63ed2a8cb444f219e091a4d" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:c90f4da1e01259dcf5404b5001ec4260260f27c44a01756667731cc12799c614" [label="/bin/sh -c chmod a+x /run.sh" shape="box"];
  "sha256:bd30a266e782514e10d6e0f748762c20a4bb15d54477a40242fdd1a2f160b897" [label="sha256:bd30a266e782514e10d6e0f748762c20a4bb15d54477a40242fdd1a2f160b897" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:07901f5ef520d8e9a612b4c1555bd3fc4b87650dd63ed2a8cb444f219e091a4d" [label=""];
  "sha256:c1cd4ed801cc86ace2addb1294186b787c524dafb1e6c4087d79f1694331d24f" -> "sha256:07901f5ef520d8e9a612b4c1555bd3fc4b87650dd63ed2a8cb444f219e091a4d" [label=""];
  "sha256:07901f5ef520d8e9a612b4c1555bd3fc4b87650dd63ed2a8cb444f219e091a4d" -> "sha256:c90f4da1e01259dcf5404b5001ec4260260f27c44a01756667731cc12799c614" [label=""];
  "sha256:c90f4da1e01259dcf5404b5001ec4260260f27c44a01756667731cc12799c614" -> "sha256:bd30a266e782514e10d6e0f748762c20a4bb15d54477a40242fdd1a2f160b897" [label=""];
}

