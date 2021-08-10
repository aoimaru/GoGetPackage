[app/sources/268792355.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:134eebdc5aea7559b7a2f7ccac49ff86a7dc3e98992f9ecc0d2ab4c13a4c8d89" [label="local://context" shape="ellipse"];
  "sha256:c84c85364dbd2006d4f31e057e9da84912187b511a2d0b788ba1722223d3bcdc" [label="copy{src=/install-packages.sh, dest=/tmp/}" shape="note"];
  "sha256:579e37d2caa56fcb1bb3777e0ee727781cf66e7a2ba06d45ea2e7265a3aa6317" [label="/bin/sh -c /tmp/install-packages.sh" shape="box"];
  "sha256:65991cbe02eab6f136dfb77cdf8bf73bce0954430f4eadd33a2bd6458b960edb" [label="/bin/sh -c echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh &&     wget --quiet https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh -O ~/anaconda.sh &&     /bin/bash ~/anaconda.sh -b -p /opt/conda &&     rm ~/anaconda.sh" shape="box"];
  "sha256:f5055068e495305d740cbb1b7d1ba9f805dd0de5d1922cec6750c19bc93225ea" [label="copy{src=/start_jupyter_or_everware.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:1cb18f61047da256e5b796720b1055842ddb42127e185abdddda10ecd1a9cd82" [label="copy{src=/install-jupyter.sh, dest=/tmp/}" shape="note"];
  "sha256:f4df46b46ca27e9514a78cf0c968843795936ddf6db98b7381030a59d5e2f32d" [label="/bin/bash --login -c /tmp/install-jupyter.sh" shape="box"];
  "sha256:6619e638699b1c1053e6f458603cec3d434089950eaae997cf7d8867ce83ba54" [label="copy{src=/install-modules.sh, dest=/tmp/},copy{src=/environment.yaml, dest=/tmp/}" shape="note"];
  "sha256:32fb0cc158226ddd1fbc139e95ed59793cfbd0e01f17f4b4ee3011c646cd7b5a" [label="/bin/bash --login -c cd /tmp && /tmp/install-modules.sh" shape="box"];
  "sha256:42d0d3340851c0a74b14f04a30b73542fcce2f2e8a6e3e221c15072f9d1ede94" [label="copy{src=/install-hyperopt.sh, dest=/tmp/}" shape="note"];
  "sha256:11c917fd604057d19b8489ef4511f5589449b7127c69e9f43bec6d19f07d9d4d" [label="/bin/bash --login -c cd /tmp && /tmp/install-hyperopt.sh" shape="box"];
  "sha256:ac7d789df3857cdc27b820d3948b05b0c334e405cfbbc56b5baa4459bae41e49" [label="sha256:ac7d789df3857cdc27b820d3948b05b0c334e405cfbbc56b5baa4459bae41e49" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c84c85364dbd2006d4f31e057e9da84912187b511a2d0b788ba1722223d3bcdc" [label=""];
  "sha256:134eebdc5aea7559b7a2f7ccac49ff86a7dc3e98992f9ecc0d2ab4c13a4c8d89" -> "sha256:c84c85364dbd2006d4f31e057e9da84912187b511a2d0b788ba1722223d3bcdc" [label=""];
  "sha256:c84c85364dbd2006d4f31e057e9da84912187b511a2d0b788ba1722223d3bcdc" -> "sha256:579e37d2caa56fcb1bb3777e0ee727781cf66e7a2ba06d45ea2e7265a3aa6317" [label=""];
  "sha256:579e37d2caa56fcb1bb3777e0ee727781cf66e7a2ba06d45ea2e7265a3aa6317" -> "sha256:65991cbe02eab6f136dfb77cdf8bf73bce0954430f4eadd33a2bd6458b960edb" [label=""];
  "sha256:65991cbe02eab6f136dfb77cdf8bf73bce0954430f4eadd33a2bd6458b960edb" -> "sha256:f5055068e495305d740cbb1b7d1ba9f805dd0de5d1922cec6750c19bc93225ea" [label=""];
  "sha256:134eebdc5aea7559b7a2f7ccac49ff86a7dc3e98992f9ecc0d2ab4c13a4c8d89" -> "sha256:f5055068e495305d740cbb1b7d1ba9f805dd0de5d1922cec6750c19bc93225ea" [label=""];
  "sha256:f5055068e495305d740cbb1b7d1ba9f805dd0de5d1922cec6750c19bc93225ea" -> "sha256:1cb18f61047da256e5b796720b1055842ddb42127e185abdddda10ecd1a9cd82" [label=""];
  "sha256:134eebdc5aea7559b7a2f7ccac49ff86a7dc3e98992f9ecc0d2ab4c13a4c8d89" -> "sha256:1cb18f61047da256e5b796720b1055842ddb42127e185abdddda10ecd1a9cd82" [label=""];
  "sha256:1cb18f61047da256e5b796720b1055842ddb42127e185abdddda10ecd1a9cd82" -> "sha256:f4df46b46ca27e9514a78cf0c968843795936ddf6db98b7381030a59d5e2f32d" [label=""];
  "sha256:f4df46b46ca27e9514a78cf0c968843795936ddf6db98b7381030a59d5e2f32d" -> "sha256:6619e638699b1c1053e6f458603cec3d434089950eaae997cf7d8867ce83ba54" [label=""];
  "sha256:134eebdc5aea7559b7a2f7ccac49ff86a7dc3e98992f9ecc0d2ab4c13a4c8d89" -> "sha256:6619e638699b1c1053e6f458603cec3d434089950eaae997cf7d8867ce83ba54" [label=""];
  "sha256:6619e638699b1c1053e6f458603cec3d434089950eaae997cf7d8867ce83ba54" -> "sha256:32fb0cc158226ddd1fbc139e95ed59793cfbd0e01f17f4b4ee3011c646cd7b5a" [label=""];
  "sha256:32fb0cc158226ddd1fbc139e95ed59793cfbd0e01f17f4b4ee3011c646cd7b5a" -> "sha256:42d0d3340851c0a74b14f04a30b73542fcce2f2e8a6e3e221c15072f9d1ede94" [label=""];
  "sha256:134eebdc5aea7559b7a2f7ccac49ff86a7dc3e98992f9ecc0d2ab4c13a4c8d89" -> "sha256:42d0d3340851c0a74b14f04a30b73542fcce2f2e8a6e3e221c15072f9d1ede94" [label=""];
  "sha256:42d0d3340851c0a74b14f04a30b73542fcce2f2e8a6e3e221c15072f9d1ede94" -> "sha256:11c917fd604057d19b8489ef4511f5589449b7127c69e9f43bec6d19f07d9d4d" [label=""];
  "sha256:11c917fd604057d19b8489ef4511f5589449b7127c69e9f43bec6d19f07d9d4d" -> "sha256:ac7d789df3857cdc27b820d3948b05b0c334e405cfbbc56b5baa4459bae41e49" [label=""];
}

