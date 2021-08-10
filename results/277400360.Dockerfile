[app/sources/277400360.Dockerfile]
digraph {
  "sha256:e2c09379e676679eb29e9eb4efe7fe36dc6ecd1607bb433cfaa045840222b99e" [label="docker-image://docker.io/library/nginx:1.7" shape="ellipse"];
  "sha256:a3bb029baeb8bf43a3737bf7cec78de41c1941ac8733948bba782967ff1bf848" [label="local://context" shape="ellipse"];
  "sha256:0a2afcc5ca3555eeb1161222f9b72dd33e29780f5e0864796df0d9b50cded2ad" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:1f40d945bb93e7add4ea20aed799a3f2fa3590862c63f1d6f959d6cf9019ae16" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:831045ff02ffe02f768dd68b6d50f98cf62a6f5717dd2588309e218d2aa084b0" [label="copy{src=/docker-registry.conf, dest=/etc/nginx/docker-registry.conf}" shape="note"];
  "sha256:f443fb69c3672c635817ee6e2f6b16c3884292b79d840e78ecf1545f6c5b45f4" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:ebf232970888a13d563689c5ed534e7cac7c3d1249ac2a5b1f31f93d7ed0c0a1" [label="sha256:ebf232970888a13d563689c5ed534e7cac7c3d1249ac2a5b1f31f93d7ed0c0a1" shape="plaintext"];
  "sha256:e2c09379e676679eb29e9eb4efe7fe36dc6ecd1607bb433cfaa045840222b99e" -> "sha256:0a2afcc5ca3555eeb1161222f9b72dd33e29780f5e0864796df0d9b50cded2ad" [label=""];
  "sha256:a3bb029baeb8bf43a3737bf7cec78de41c1941ac8733948bba782967ff1bf848" -> "sha256:0a2afcc5ca3555eeb1161222f9b72dd33e29780f5e0864796df0d9b50cded2ad" [label=""];
  "sha256:0a2afcc5ca3555eeb1161222f9b72dd33e29780f5e0864796df0d9b50cded2ad" -> "sha256:1f40d945bb93e7add4ea20aed799a3f2fa3590862c63f1d6f959d6cf9019ae16" [label=""];
  "sha256:a3bb029baeb8bf43a3737bf7cec78de41c1941ac8733948bba782967ff1bf848" -> "sha256:1f40d945bb93e7add4ea20aed799a3f2fa3590862c63f1d6f959d6cf9019ae16" [label=""];
  "sha256:1f40d945bb93e7add4ea20aed799a3f2fa3590862c63f1d6f959d6cf9019ae16" -> "sha256:831045ff02ffe02f768dd68b6d50f98cf62a6f5717dd2588309e218d2aa084b0" [label=""];
  "sha256:a3bb029baeb8bf43a3737bf7cec78de41c1941ac8733948bba782967ff1bf848" -> "sha256:831045ff02ffe02f768dd68b6d50f98cf62a6f5717dd2588309e218d2aa084b0" [label=""];
  "sha256:831045ff02ffe02f768dd68b6d50f98cf62a6f5717dd2588309e218d2aa084b0" -> "sha256:f443fb69c3672c635817ee6e2f6b16c3884292b79d840e78ecf1545f6c5b45f4" [label=""];
  "sha256:a3bb029baeb8bf43a3737bf7cec78de41c1941ac8733948bba782967ff1bf848" -> "sha256:f443fb69c3672c635817ee6e2f6b16c3884292b79d840e78ecf1545f6c5b45f4" [label=""];
  "sha256:f443fb69c3672c635817ee6e2f6b16c3884292b79d840e78ecf1545f6c5b45f4" -> "sha256:ebf232970888a13d563689c5ed534e7cac7c3d1249ac2a5b1f31f93d7ed0c0a1" [label=""];
}

