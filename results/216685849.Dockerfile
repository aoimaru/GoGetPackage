[app/sources/216685849.Dockerfile]
digraph {
  "sha256:fb48a963f003376716ff936ec9fc29dd1718ad34f294cf2048eff3ea752d6e09" [label="docker-image://docker.io/library/alpine@sha256:a1020e78cc1efca87cc3a4c78f1bef81c3db20e5283fa2c9a493de41d8933cc7" shape="ellipse"];
  "sha256:dd85db524b98f7368094b417ab912fabecfab5b59f630022f97c9521dd06439b" [label="/bin/sh -c test \"$(uname -m)\" == \"armv6l\" && \tapk add --no-cache bash g++ gcc git make nodejs python && \texport MAKEFLAGS=-j8" shape="box"];
  "sha256:126838198037e78ebe1520271daf8e67d291b697802728f20d157a344e0b3c65" [label="/bin/sh -c apk add --no-cache npm" shape="box"];
  "sha256:3ffd5b315f8801557cec69440430bb1aee8a7ef59f9125b1a0c199b3def3ae62" [label="/bin/sh -c npm install storjshare-daemon" shape="box"];
  "sha256:d6b90911976560bce6eaa550c3bb5a5428e0c971fd6e15955cde0826d3855b58" [label="/bin/sh -c git clone https://github.com/calxibe/StorjMonitor.git /opt/StorjMonitor && \tchmod +x /opt/StorjMonitor/storjMonitor.sh && \trm -rf /opt/StorjMonitor/node_modules && \tnpm --prefix /opt/StorjMonitor/ install && \tnpm cache clear --force" shape="box"];
  "sha256:8b6783c9167cf80cc876e163c8ce9b5934354b26616192dad014fd1023f98236" [label="/bin/sh -c apk del --no-cache g++ gcc git make python" shape="box"];
  "sha256:60dd70eead02834f9d530ee5bbe082a050884aa9453a0790aa1d020cb09774e8" [label="local://context" shape="ellipse"];
  "sha256:2d9fe69db9af4140e8386f3593313eb418a301b76388ac9a557b8901c3f48d6c" [label="copy{src=/versions, dest=/},copy{src=/entrypoint, dest=/}" shape="note"];
  "sha256:b311df9afc132884da542ae1f3da3f986d9c03da9becd5adaa9eafdc1be042a3" [label="/bin/sh -c mv -i /node_modules/* /usr/lib/node_modules/ && \tmv /node_modules/.bin/ /usr/lib/node_modules/ && \trmdir /node_modules" shape="box"];
  "sha256:80ac67cddd0361bca0c1f7a2948e8449eacbd2f85fb8a8c61e6046aa3cc92a18" [label="sha256:80ac67cddd0361bca0c1f7a2948e8449eacbd2f85fb8a8c61e6046aa3cc92a18" shape="plaintext"];
  "sha256:fb48a963f003376716ff936ec9fc29dd1718ad34f294cf2048eff3ea752d6e09" -> "sha256:dd85db524b98f7368094b417ab912fabecfab5b59f630022f97c9521dd06439b" [label=""];
  "sha256:dd85db524b98f7368094b417ab912fabecfab5b59f630022f97c9521dd06439b" -> "sha256:126838198037e78ebe1520271daf8e67d291b697802728f20d157a344e0b3c65" [label=""];
  "sha256:126838198037e78ebe1520271daf8e67d291b697802728f20d157a344e0b3c65" -> "sha256:3ffd5b315f8801557cec69440430bb1aee8a7ef59f9125b1a0c199b3def3ae62" [label=""];
  "sha256:3ffd5b315f8801557cec69440430bb1aee8a7ef59f9125b1a0c199b3def3ae62" -> "sha256:d6b90911976560bce6eaa550c3bb5a5428e0c971fd6e15955cde0826d3855b58" [label=""];
  "sha256:d6b90911976560bce6eaa550c3bb5a5428e0c971fd6e15955cde0826d3855b58" -> "sha256:8b6783c9167cf80cc876e163c8ce9b5934354b26616192dad014fd1023f98236" [label=""];
  "sha256:8b6783c9167cf80cc876e163c8ce9b5934354b26616192dad014fd1023f98236" -> "sha256:2d9fe69db9af4140e8386f3593313eb418a301b76388ac9a557b8901c3f48d6c" [label=""];
  "sha256:60dd70eead02834f9d530ee5bbe082a050884aa9453a0790aa1d020cb09774e8" -> "sha256:2d9fe69db9af4140e8386f3593313eb418a301b76388ac9a557b8901c3f48d6c" [label=""];
  "sha256:2d9fe69db9af4140e8386f3593313eb418a301b76388ac9a557b8901c3f48d6c" -> "sha256:b311df9afc132884da542ae1f3da3f986d9c03da9becd5adaa9eafdc1be042a3" [label=""];
  "sha256:b311df9afc132884da542ae1f3da3f986d9c03da9becd5adaa9eafdc1be042a3" -> "sha256:80ac67cddd0361bca0c1f7a2948e8449eacbd2f85fb8a8c61e6046aa3cc92a18" [label=""];
}

