[app/sources/189170937.Dockerfile]
digraph {
  "sha256:65fb2585432088564f9c49d29ec8b6946867b4fad5a14f209f077aaf13853f3a" [label="docker-image://docker.io/library/python:latest" shape="ellipse"];
  "sha256:0018e6250b503fd8a25fb65b7fc09e20871a62ea489d7193d43b579f300a9878" [label="/bin/sh -c apt-get update && apt-get install -y     libjpeg-dev     libfreetype6     libfreetype6-dev     zlib1g-dev     --no-install-recommends" shape="box"];
  "sha256:1a9a6a8d71fe9c9f0639cabdbefac5149e7d4ea68d4ee74a4aa578b460ca899b" [label="/bin/sh -c pip install rainbowstream" shape="box"];
  "sha256:1a839d910ee470ddde6dbd5f2e6baa667458ca595a9fe7afed4c2b0be3829f2c" [label="sha256:1a839d910ee470ddde6dbd5f2e6baa667458ca595a9fe7afed4c2b0be3829f2c" shape="plaintext"];
  "sha256:65fb2585432088564f9c49d29ec8b6946867b4fad5a14f209f077aaf13853f3a" -> "sha256:0018e6250b503fd8a25fb65b7fc09e20871a62ea489d7193d43b579f300a9878" [label=""];
  "sha256:0018e6250b503fd8a25fb65b7fc09e20871a62ea489d7193d43b579f300a9878" -> "sha256:1a9a6a8d71fe9c9f0639cabdbefac5149e7d4ea68d4ee74a4aa578b460ca899b" [label=""];
  "sha256:1a9a6a8d71fe9c9f0639cabdbefac5149e7d4ea68d4ee74a4aa578b460ca899b" -> "sha256:1a839d910ee470ddde6dbd5f2e6baa667458ca595a9fe7afed4c2b0be3829f2c" [label=""];
}

