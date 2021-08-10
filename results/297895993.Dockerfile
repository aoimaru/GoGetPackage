[app/sources/297895993.Dockerfile]
digraph {
  "sha256:d95d8d7f6033b72e3c947b670c484b92f5f1192e88a914d341593df3a65f03ac" [label="local://context" shape="ellipse"];
  "sha256:6395fb6cefb4ef709878380ace6218cd2c84506bc634fd1e1243cceb818155ba" [label="docker-image://docker.io/sroegner/centos-base-ssh:6" shape="ellipse"];
  "sha256:262508150c81b830e4aebec64c65cbeaa0bc207e6061351d0229eec79d848b1e" [label="/bin/sh -c yum -y install dnsmasq" shape="box"];
  "sha256:2d964647038a7beca93df4906e49feaaf43873756cfbc753a7a36369ec484323" [label="copy{src=/dnsmasq.conf, dest=/etc/}" shape="note"];
  "sha256:65cdf3f88e62918e26b7214a1f5e99cda2fc1fdf555309a6151fa6d315d658c4" [label="copy{src=/resolv.dnsmasq.conf, dest=/etc/}" shape="note"];
  "sha256:6b6951f10d6558184daeaea520e87ee8e5bb93bfc1452f925ddfe162f13a46d7" [label="sha256:6b6951f10d6558184daeaea520e87ee8e5bb93bfc1452f925ddfe162f13a46d7" shape="plaintext"];
  "sha256:6395fb6cefb4ef709878380ace6218cd2c84506bc634fd1e1243cceb818155ba" -> "sha256:262508150c81b830e4aebec64c65cbeaa0bc207e6061351d0229eec79d848b1e" [label=""];
  "sha256:262508150c81b830e4aebec64c65cbeaa0bc207e6061351d0229eec79d848b1e" -> "sha256:2d964647038a7beca93df4906e49feaaf43873756cfbc753a7a36369ec484323" [label=""];
  "sha256:d95d8d7f6033b72e3c947b670c484b92f5f1192e88a914d341593df3a65f03ac" -> "sha256:2d964647038a7beca93df4906e49feaaf43873756cfbc753a7a36369ec484323" [label=""];
  "sha256:2d964647038a7beca93df4906e49feaaf43873756cfbc753a7a36369ec484323" -> "sha256:65cdf3f88e62918e26b7214a1f5e99cda2fc1fdf555309a6151fa6d315d658c4" [label=""];
  "sha256:d95d8d7f6033b72e3c947b670c484b92f5f1192e88a914d341593df3a65f03ac" -> "sha256:65cdf3f88e62918e26b7214a1f5e99cda2fc1fdf555309a6151fa6d315d658c4" [label=""];
  "sha256:65cdf3f88e62918e26b7214a1f5e99cda2fc1fdf555309a6151fa6d315d658c4" -> "sha256:6b6951f10d6558184daeaea520e87ee8e5bb93bfc1452f925ddfe162f13a46d7" [label=""];
}

