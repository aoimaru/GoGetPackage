[app/sources/213734776.Dockerfile]
digraph {
  "sha256:b7d8a283156aa3bf933dd4c0a80c6fc12d201d1e77086157e3c74cc137068f68" [label="docker-image://docker.io/nodesource/centos7-base:latest" shape="ellipse"];
  "sha256:0863564da00ac1b91506a578a77bfa2d5f96b8d91847b7e1b476d2a32c7a282b" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub/el/7/x86_64/nodejs-0.10.42-1nodesource.el7.centos.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:b623e9cb125e6cb87d581573b20905e22f5790608fd4116fa13f0b2578d905c1" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:ed441a8ba233d53931a32d9754dc9cfc6732b9f1e99a98a44ca757cd7f987183" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:85643d63395fe06e0eb35090112921c8ebbe2a7f49f22f0ab09c027364465b2b" [label="sha256:85643d63395fe06e0eb35090112921c8ebbe2a7f49f22f0ab09c027364465b2b" shape="plaintext"];
  "sha256:b7d8a283156aa3bf933dd4c0a80c6fc12d201d1e77086157e3c74cc137068f68" -> "sha256:0863564da00ac1b91506a578a77bfa2d5f96b8d91847b7e1b476d2a32c7a282b" [label=""];
  "sha256:0863564da00ac1b91506a578a77bfa2d5f96b8d91847b7e1b476d2a32c7a282b" -> "sha256:b623e9cb125e6cb87d581573b20905e22f5790608fd4116fa13f0b2578d905c1" [label=""];
  "sha256:b623e9cb125e6cb87d581573b20905e22f5790608fd4116fa13f0b2578d905c1" -> "sha256:ed441a8ba233d53931a32d9754dc9cfc6732b9f1e99a98a44ca757cd7f987183" [label=""];
  "sha256:ed441a8ba233d53931a32d9754dc9cfc6732b9f1e99a98a44ca757cd7f987183" -> "sha256:85643d63395fe06e0eb35090112921c8ebbe2a7f49f22f0ab09c027364465b2b" [label=""];
}

