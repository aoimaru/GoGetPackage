[app/sources/217116696.Dockerfile]
digraph {
  "sha256:19faeb343e9f649f519607727b849740ca9821340e9431c38ac677cb5abfb52f" [label="local://context" shape="ellipse"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:67fa46f482aac0d1fc08f5a86e6dda1a0032f3ba2f54e75c59e244cb7ef229d8" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:9d3eabcc915e616d52f4eda45d6eef3aee89e444f94b804443e5dcbfb8d6d775" [label="copy{src=/godmode.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:f52a3d8a926eb4fb3d677e8df56b46ebea9f170e8444ad511f0ab933f044de76" [label="sha256:f52a3d8a926eb4fb3d677e8df56b46ebea9f170e8444ad511f0ab933f044de76" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:67fa46f482aac0d1fc08f5a86e6dda1a0032f3ba2f54e75c59e244cb7ef229d8" [label=""];
  "sha256:67fa46f482aac0d1fc08f5a86e6dda1a0032f3ba2f54e75c59e244cb7ef229d8" -> "sha256:9d3eabcc915e616d52f4eda45d6eef3aee89e444f94b804443e5dcbfb8d6d775" [label=""];
  "sha256:19faeb343e9f649f519607727b849740ca9821340e9431c38ac677cb5abfb52f" -> "sha256:9d3eabcc915e616d52f4eda45d6eef3aee89e444f94b804443e5dcbfb8d6d775" [label=""];
  "sha256:9d3eabcc915e616d52f4eda45d6eef3aee89e444f94b804443e5dcbfb8d6d775" -> "sha256:f52a3d8a926eb4fb3d677e8df56b46ebea9f170e8444ad511f0ab933f044de76" [label=""];
}

