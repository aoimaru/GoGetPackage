[app/sources/359715848.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d2edb19e772325072f295d8ad6e25f95585bf35216ccb721bc7144713b49ef65" [label="local://context" shape="ellipse"];
  "sha256:02f0211f9ea16ee7261edd6fc99b34f0aef0239477b1269fae67f32160b2332b" [label="copy{src=/build.sh, dest=/build/bin/}" shape="note"];
  "sha256:437f2d128c91de400cba0fc3cc5834f1ebe57487b99e4d8659a7762e15a09cf3" [label="/bin/sh -c /bin/bash /build/bin/build.sh &&     groupadd --gid 1000 dionaea &&     useradd -m --uid 1000 --gid 1000 dionaea &&     chown -R dionaea:dionaea /opt/dionaea/var &&     apt-get update &&     apt-get install -y --no-install-recommends         p0f         supervisor &&     apt-get clean &&     rm -rf /opt/dionaea/etc/dionaea &&     rm -rf /build /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:6beaec8ed0ee889fd9e83f7f18d9345d5fbdc7c05d3fcc07416ac5ff1edfc8b3" [label="copy{src=/supervisor/*.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:2ec8c3f73b73187046a7187d5f26e736de5419fec98162523bbdcbac9d9f03e4" [label="copy{src=/conf, dest=/opt/dionaea/etc/dionaea}" shape="note"];
  "sha256:9b74ea23b1969b5155540f871cb64c181081c3df31f8d5ace714e1ea80d0cfcb" [label="sha256:9b74ea23b1969b5155540f871cb64c181081c3df31f8d5ace714e1ea80d0cfcb" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:02f0211f9ea16ee7261edd6fc99b34f0aef0239477b1269fae67f32160b2332b" [label=""];
  "sha256:d2edb19e772325072f295d8ad6e25f95585bf35216ccb721bc7144713b49ef65" -> "sha256:02f0211f9ea16ee7261edd6fc99b34f0aef0239477b1269fae67f32160b2332b" [label=""];
  "sha256:02f0211f9ea16ee7261edd6fc99b34f0aef0239477b1269fae67f32160b2332b" -> "sha256:437f2d128c91de400cba0fc3cc5834f1ebe57487b99e4d8659a7762e15a09cf3" [label=""];
  "sha256:437f2d128c91de400cba0fc3cc5834f1ebe57487b99e4d8659a7762e15a09cf3" -> "sha256:6beaec8ed0ee889fd9e83f7f18d9345d5fbdc7c05d3fcc07416ac5ff1edfc8b3" [label=""];
  "sha256:d2edb19e772325072f295d8ad6e25f95585bf35216ccb721bc7144713b49ef65" -> "sha256:6beaec8ed0ee889fd9e83f7f18d9345d5fbdc7c05d3fcc07416ac5ff1edfc8b3" [label=""];
  "sha256:6beaec8ed0ee889fd9e83f7f18d9345d5fbdc7c05d3fcc07416ac5ff1edfc8b3" -> "sha256:2ec8c3f73b73187046a7187d5f26e736de5419fec98162523bbdcbac9d9f03e4" [label=""];
  "sha256:d2edb19e772325072f295d8ad6e25f95585bf35216ccb721bc7144713b49ef65" -> "sha256:2ec8c3f73b73187046a7187d5f26e736de5419fec98162523bbdcbac9d9f03e4" [label=""];
  "sha256:2ec8c3f73b73187046a7187d5f26e736de5419fec98162523bbdcbac9d9f03e4" -> "sha256:9b74ea23b1969b5155540f871cb64c181081c3df31f8d5ace714e1ea80d0cfcb" [label=""];
}

