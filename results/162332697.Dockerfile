[app/sources/162332697.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:86a1a1e467e275383bdd88fe340102855277eb1695d267abf40beedcd1705931" [label="/bin/sh -c mkdir -p /sti-fake/src &&     rm /bin/tar && \tmkdir /usr/bin && \tln -s /bin/env /usr/bin/env" shape="box"];
  "sha256:8d239317f8c1d0fd553f2d5e6a2ea563d78456fcf48ade50ef75204133cd263d" [label="sha256:8d239317f8c1d0fd553f2d5e6a2ea563d78456fcf48ade50ef75204133cd263d" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:86a1a1e467e275383bdd88fe340102855277eb1695d267abf40beedcd1705931" [label=""];
  "sha256:86a1a1e467e275383bdd88fe340102855277eb1695d267abf40beedcd1705931" -> "sha256:8d239317f8c1d0fd553f2d5e6a2ea563d78456fcf48ade50ef75204133cd263d" [label=""];
}

