[app/sources/278799086.Dockerfile]
digraph {
  "sha256:b987be0a43902d82e05082b07985d83d53f454f00c8c09363fcaeeff4bbaf3ec" [label="docker-image://docker.io/apache/nifi:1.8.0@sha256:7a7586766ab9848d6b91f061b081748c9519075c3e41bcab7f501b8bf4367cdf" shape="ellipse"];
  "sha256:fe63625757d7311b7c1ff2325309570371e81d95eddf6d6c2947079227efb63d" [label="https://github.com/mkjoerg/nifi-prometheus-reporter/releases/download/nifi-1.8.0/nifi-prometheus-nar-1.8.0.nar" shape="ellipse"];
  "sha256:417c8b27927c55f311f4a8a4134781b853120e59212cd1ab61b416a71d8ad58a" [label="copy{src=/nifi-prometheus-nar-1.8.0.nar, dest=/opt/nifi/nifi-current/lib}" shape="note"];
  "sha256:ab827646dcc88311444a03023ebdc82d0af0e615d97b9bb03aa8761350916920" [label="/bin/sh -c chown -R nifi:nifi ${NIFI_BASE_DIR}/nifi-current/lib" shape="box"];
  "sha256:2472d35295e6191b494bbb313bc6ed29aa550f443e9d3b69111437cfed316015" [label="sha256:2472d35295e6191b494bbb313bc6ed29aa550f443e9d3b69111437cfed316015" shape="plaintext"];
  "sha256:b987be0a43902d82e05082b07985d83d53f454f00c8c09363fcaeeff4bbaf3ec" -> "sha256:417c8b27927c55f311f4a8a4134781b853120e59212cd1ab61b416a71d8ad58a" [label=""];
  "sha256:fe63625757d7311b7c1ff2325309570371e81d95eddf6d6c2947079227efb63d" -> "sha256:417c8b27927c55f311f4a8a4134781b853120e59212cd1ab61b416a71d8ad58a" [label=""];
  "sha256:417c8b27927c55f311f4a8a4134781b853120e59212cd1ab61b416a71d8ad58a" -> "sha256:ab827646dcc88311444a03023ebdc82d0af0e615d97b9bb03aa8761350916920" [label=""];
  "sha256:ab827646dcc88311444a03023ebdc82d0af0e615d97b9bb03aa8761350916920" -> "sha256:2472d35295e6191b494bbb313bc6ed29aa550f443e9d3b69111437cfed316015" [label=""];
}

