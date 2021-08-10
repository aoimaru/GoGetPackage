[app/sources/202608952.Dockerfile]
digraph {
  "sha256:b08cfa8bf79800633a02bb71d30022a2e2cfd4258dbb00d203de4689220368ef" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:1b88da6db71a0663352ad239c50984066fcd5e32763e298b9990010d1cf4f1a9" [label="/bin/sh -c apk add --update nginx &&     rm -rf /var/cache/apk/* &&     chown -R nginx:www-data /var/lib/nginx &&     ln -sf /dev/stdout /var/log/nginx/access.log &&     ln -sf /dev/stderr /var/log/nginx/error.log" shape="box"];
  "sha256:d7ae9df026f859ec6e2135ca1e306299fa63723f4e6504bdf28ab6e0619c6360" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:33ae2f5ab57cd5e0f5edf5727714eb5307b4f1e44d8111b160ed317492b67f4f" [label="sha256:33ae2f5ab57cd5e0f5edf5727714eb5307b4f1e44d8111b160ed317492b67f4f" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:1b88da6db71a0663352ad239c50984066fcd5e32763e298b9990010d1cf4f1a9" [label=""];
  "sha256:1b88da6db71a0663352ad239c50984066fcd5e32763e298b9990010d1cf4f1a9" -> "sha256:d7ae9df026f859ec6e2135ca1e306299fa63723f4e6504bdf28ab6e0619c6360" [label=""];
  "sha256:b08cfa8bf79800633a02bb71d30022a2e2cfd4258dbb00d203de4689220368ef" -> "sha256:d7ae9df026f859ec6e2135ca1e306299fa63723f4e6504bdf28ab6e0619c6360" [label=""];
  "sha256:d7ae9df026f859ec6e2135ca1e306299fa63723f4e6504bdf28ab6e0619c6360" -> "sha256:33ae2f5ab57cd5e0f5edf5727714eb5307b4f1e44d8111b160ed317492b67f4f" [label=""];
}

