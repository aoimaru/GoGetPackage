[app/sources/217271817.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:5b7626a16b2846a9bd673afadba079828d5d33cb9016d78882fa64202ef29be5" [label="/bin/sh -c npm install -g yapi-cli --registry https://registry.npm.taobao.org" shape="box"];
  "sha256:26c25091d2b02e6f4ce5d28919498add14ea07e3afc7034084cfbac8376ed909" [label="sha256:26c25091d2b02e6f4ce5d28919498add14ea07e3afc7034084cfbac8376ed909" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:5b7626a16b2846a9bd673afadba079828d5d33cb9016d78882fa64202ef29be5" [label=""];
  "sha256:5b7626a16b2846a9bd673afadba079828d5d33cb9016d78882fa64202ef29be5" -> "sha256:26c25091d2b02e6f4ce5d28919498add14ea07e3afc7034084cfbac8376ed909" [label=""];
}

