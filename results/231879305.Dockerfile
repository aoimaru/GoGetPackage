[app/sources/231879305.Dockerfile]
digraph {
  "sha256:67f33265439cde1acafe71327fd74b0a39a76f7f5bf63232355da8a00a388ff5" [label="docker-image://registry.centos.org/kbsingh/openshift-nginx:latest" shape="ellipse"];
  "sha256:a24e6742ecc57bedd918ab88d706cedfaaf3c7ba5a0dffa39f71d129e71950b2" [label="local://context" shape="ellipse"];
  "sha256:0c7623e05061aee9e026377c4187572354da95e5aa895c48534d1d394e967bf6" [label="copy{src=/deploy/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:95d1b9e9fda9dc8d0076dc46f1f470b3814847f05abbf215708cf517d75d6983" [label="/bin/sh -c rm /usr/share/nginx/html/*" shape="box"];
  "sha256:a58246dfc87ec1951f8604ae5102a20a1c91731ecda298572303764f843f58ec" [label="copy{src=/runtime/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:aa4ce0825245795cff8462e890fd82f094b621b67690bbbfcfa58327897fb0a4" [label="sha256:aa4ce0825245795cff8462e890fd82f094b621b67690bbbfcfa58327897fb0a4" shape="plaintext"];
  "sha256:67f33265439cde1acafe71327fd74b0a39a76f7f5bf63232355da8a00a388ff5" -> "sha256:0c7623e05061aee9e026377c4187572354da95e5aa895c48534d1d394e967bf6" [label=""];
  "sha256:a24e6742ecc57bedd918ab88d706cedfaaf3c7ba5a0dffa39f71d129e71950b2" -> "sha256:0c7623e05061aee9e026377c4187572354da95e5aa895c48534d1d394e967bf6" [label=""];
  "sha256:0c7623e05061aee9e026377c4187572354da95e5aa895c48534d1d394e967bf6" -> "sha256:95d1b9e9fda9dc8d0076dc46f1f470b3814847f05abbf215708cf517d75d6983" [label=""];
  "sha256:95d1b9e9fda9dc8d0076dc46f1f470b3814847f05abbf215708cf517d75d6983" -> "sha256:a58246dfc87ec1951f8604ae5102a20a1c91731ecda298572303764f843f58ec" [label=""];
  "sha256:a24e6742ecc57bedd918ab88d706cedfaaf3c7ba5a0dffa39f71d129e71950b2" -> "sha256:a58246dfc87ec1951f8604ae5102a20a1c91731ecda298572303764f843f58ec" [label=""];
  "sha256:a58246dfc87ec1951f8604ae5102a20a1c91731ecda298572303764f843f58ec" -> "sha256:aa4ce0825245795cff8462e890fd82f094b621b67690bbbfcfa58327897fb0a4" [label=""];
}

