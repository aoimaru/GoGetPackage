[app/sources/201188334.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:1f8d9eb9be20f91b8dd43d4c82f4d4b5e2aa48bafc9eff888a32fb2e580e08e4" [label="/bin/sh -c apk add --no-cache nginx && apk add --no-cache nginx-mod-stream" shape="box"];
  "sha256:b077f6a12f0387ada52377954d0ef832e80245bb47d01b467f7843a0d876059a" [label="/bin/sh -c ln -sf /dev/stdout /var/log/nginx/access.log" shape="box"];
  "sha256:f1bfd518650ea2782164f1ef8ade724498bf33642a1472b0779dcbb72cf15147" [label="/bin/sh -c ln -sf /dev/stderr /var/log/nginx/error.log" shape="box"];
  "sha256:f344d9456eeef8476fac395d17e01764a06fc781f70bb911e7493fb8c1eff3e3" [label="/bin/sh -c chown -R nginx:nginx /var/lib/nginx" shape="box"];
  "sha256:69179d7c45d8a37057836be9b9e98e7ed02781e1c353e34a676a1682f723494e" [label="local://context" shape="ellipse"];
  "sha256:707164d46cb2c27fd716b20bc8a2faca59b3ab5d5d459e28ce8a8b99d013500c" [label="copy{src=/conf, dest=/etc/nginx}" shape="note"];
  "sha256:0fc2e63085410e59109ae8e6e8d9eb83c3c26c18ff79499cf69491da14590a1f" [label="sha256:0fc2e63085410e59109ae8e6e8d9eb83c3c26c18ff79499cf69491da14590a1f" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:1f8d9eb9be20f91b8dd43d4c82f4d4b5e2aa48bafc9eff888a32fb2e580e08e4" [label=""];
  "sha256:1f8d9eb9be20f91b8dd43d4c82f4d4b5e2aa48bafc9eff888a32fb2e580e08e4" -> "sha256:b077f6a12f0387ada52377954d0ef832e80245bb47d01b467f7843a0d876059a" [label=""];
  "sha256:b077f6a12f0387ada52377954d0ef832e80245bb47d01b467f7843a0d876059a" -> "sha256:f1bfd518650ea2782164f1ef8ade724498bf33642a1472b0779dcbb72cf15147" [label=""];
  "sha256:f1bfd518650ea2782164f1ef8ade724498bf33642a1472b0779dcbb72cf15147" -> "sha256:f344d9456eeef8476fac395d17e01764a06fc781f70bb911e7493fb8c1eff3e3" [label=""];
  "sha256:f344d9456eeef8476fac395d17e01764a06fc781f70bb911e7493fb8c1eff3e3" -> "sha256:707164d46cb2c27fd716b20bc8a2faca59b3ab5d5d459e28ce8a8b99d013500c" [label=""];
  "sha256:69179d7c45d8a37057836be9b9e98e7ed02781e1c353e34a676a1682f723494e" -> "sha256:707164d46cb2c27fd716b20bc8a2faca59b3ab5d5d459e28ce8a8b99d013500c" [label=""];
  "sha256:707164d46cb2c27fd716b20bc8a2faca59b3ab5d5d459e28ce8a8b99d013500c" -> "sha256:0fc2e63085410e59109ae8e6e8d9eb83c3c26c18ff79499cf69491da14590a1f" [label=""];
}

