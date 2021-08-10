[app/sources/213734810.Dockerfile]
digraph {
  "sha256:b7d8a283156aa3bf933dd4c0a80c6fc12d201d1e77086157e3c74cc137068f68" [label="docker-image://docker.io/nodesource/centos7-base:latest" shape="ellipse"];
  "sha256:fe6af469b501f0f27b95fbe135f88b44e93629ac11caf42ef7550a4580ca0c69" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_0.12/el/7/x86_64/nodejs-0.12.7-1nodesource.el7.centos.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:da71c437acdbcc4cdce5c7eeca76d1457ba8eb58984d1b8377a79a2e43a8fe70" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:db117628bcd364929b084d10138cf38d7285045f38be689d6fd8a784a39802c8" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:b74d2de9490f634eac371a5e6ccdf5485c7798e2f3aba235e4acdcef52a23254" [label="sha256:b74d2de9490f634eac371a5e6ccdf5485c7798e2f3aba235e4acdcef52a23254" shape="plaintext"];
  "sha256:b7d8a283156aa3bf933dd4c0a80c6fc12d201d1e77086157e3c74cc137068f68" -> "sha256:fe6af469b501f0f27b95fbe135f88b44e93629ac11caf42ef7550a4580ca0c69" [label=""];
  "sha256:fe6af469b501f0f27b95fbe135f88b44e93629ac11caf42ef7550a4580ca0c69" -> "sha256:da71c437acdbcc4cdce5c7eeca76d1457ba8eb58984d1b8377a79a2e43a8fe70" [label=""];
  "sha256:da71c437acdbcc4cdce5c7eeca76d1457ba8eb58984d1b8377a79a2e43a8fe70" -> "sha256:db117628bcd364929b084d10138cf38d7285045f38be689d6fd8a784a39802c8" [label=""];
  "sha256:db117628bcd364929b084d10138cf38d7285045f38be689d6fd8a784a39802c8" -> "sha256:b74d2de9490f634eac371a5e6ccdf5485c7798e2f3aba235e4acdcef52a23254" [label=""];
}

