[app/sources/315863741.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:54043da903f3383f68ebd88f492df7ef816a08c285916880ded500d56f1870cf" [label="local://context" shape="ellipse"];
  "sha256:1e27233fea6a0dda3bc8bfacd9c7a0459e0cea69ff39a34aa2b86d7ed4cde7fe" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:20344b5630429ca84a258d46bacc1a65a8e9df49067a7520e6db6d70cf5ea4b4" [label="/bin/sh -c chmod a+x /run.sh" shape="box"];
  "sha256:3e70e365d8213e1a30d45ce7c5800a53e22fdf67514c07d5d829adc8087c2144" [label="sha256:3e70e365d8213e1a30d45ce7c5800a53e22fdf67514c07d5d829adc8087c2144" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:1e27233fea6a0dda3bc8bfacd9c7a0459e0cea69ff39a34aa2b86d7ed4cde7fe" [label=""];
  "sha256:54043da903f3383f68ebd88f492df7ef816a08c285916880ded500d56f1870cf" -> "sha256:1e27233fea6a0dda3bc8bfacd9c7a0459e0cea69ff39a34aa2b86d7ed4cde7fe" [label=""];
  "sha256:1e27233fea6a0dda3bc8bfacd9c7a0459e0cea69ff39a34aa2b86d7ed4cde7fe" -> "sha256:20344b5630429ca84a258d46bacc1a65a8e9df49067a7520e6db6d70cf5ea4b4" [label=""];
  "sha256:20344b5630429ca84a258d46bacc1a65a8e9df49067a7520e6db6d70cf5ea4b4" -> "sha256:3e70e365d8213e1a30d45ce7c5800a53e22fdf67514c07d5d829adc8087c2144" [label=""];
}

