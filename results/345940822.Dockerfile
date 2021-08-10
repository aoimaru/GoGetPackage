[app/sources/345940822.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:67fa46f482aac0d1fc08f5a86e6dda1a0032f3ba2f54e75c59e244cb7ef229d8" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:4a73fee521abd0871092ec7186f296aa2b44de0d049c9c25a5f93c0c7140ccd0" [label="/bin/sh -c rm /etc/nginx/conf.d/example_ssl.conf" shape="box"];
  "sha256:9451522b40dae60e2668a0a074a68f18756cb9b64a3984dff10b901763fa04e0" [label="local://context" shape="ellipse"];
  "sha256:2c0fcee57a49960bab07fc5664305c0a7736eca30601ee6eaf060aaebbce1022" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:bdf6f7332500edf9d868936c8c7c41da9ea3c59234a5a3fbe0070b944c3f0d40" [label="sha256:bdf6f7332500edf9d868936c8c7c41da9ea3c59234a5a3fbe0070b944c3f0d40" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:67fa46f482aac0d1fc08f5a86e6dda1a0032f3ba2f54e75c59e244cb7ef229d8" [label=""];
  "sha256:67fa46f482aac0d1fc08f5a86e6dda1a0032f3ba2f54e75c59e244cb7ef229d8" -> "sha256:4a73fee521abd0871092ec7186f296aa2b44de0d049c9c25a5f93c0c7140ccd0" [label=""];
  "sha256:4a73fee521abd0871092ec7186f296aa2b44de0d049c9c25a5f93c0c7140ccd0" -> "sha256:2c0fcee57a49960bab07fc5664305c0a7736eca30601ee6eaf060aaebbce1022" [label=""];
  "sha256:9451522b40dae60e2668a0a074a68f18756cb9b64a3984dff10b901763fa04e0" -> "sha256:2c0fcee57a49960bab07fc5664305c0a7736eca30601ee6eaf060aaebbce1022" [label=""];
  "sha256:2c0fcee57a49960bab07fc5664305c0a7736eca30601ee6eaf060aaebbce1022" -> "sha256:bdf6f7332500edf9d868936c8c7c41da9ea3c59234a5a3fbe0070b944c3f0d40" [label=""];
}

