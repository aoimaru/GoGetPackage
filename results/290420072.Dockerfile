[app/sources/290420072.Dockerfile]
digraph {
  "sha256:bcd9a17482e5a32df721b6fea5a39e2e3166de1b21699f9bd9320f7594255aed" [label="docker-image://docker.io/library/debian:stretch-20190204-slim" shape="ellipse"];
  "sha256:da2bdf8b49c30f47e4452723f26c3d154117453d46a188be5dc8d137c9b6f11b" [label="/bin/sh -c apt-get update && apt-get install -y ca-certificates file sudo git build-essential wget" shape="box"];
  "sha256:8779960d4ce434f95063694dd78f8d3902119796f4307a7badf0b6f78f014053" [label="/bin/sh -c set -x && cd /tmp && git clone https://github.com/ncopa/su-exec.git && cd su-exec && git checkout -q $SUEXEC_VERSION && make && cd /tmp && wget -q -O tini https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini && chmod +x tini" shape="box"];
  "sha256:fcda71213cabcef59d95fddcbe9dcd1db7378b155b0bd2ccc24bb5db54453278" [label="sha256:fcda71213cabcef59d95fddcbe9dcd1db7378b155b0bd2ccc24bb5db54453278" shape="plaintext"];
  "sha256:bcd9a17482e5a32df721b6fea5a39e2e3166de1b21699f9bd9320f7594255aed" -> "sha256:da2bdf8b49c30f47e4452723f26c3d154117453d46a188be5dc8d137c9b6f11b" [label=""];
  "sha256:da2bdf8b49c30f47e4452723f26c3d154117453d46a188be5dc8d137c9b6f11b" -> "sha256:8779960d4ce434f95063694dd78f8d3902119796f4307a7badf0b6f78f014053" [label=""];
  "sha256:8779960d4ce434f95063694dd78f8d3902119796f4307a7badf0b6f78f014053" -> "sha256:fcda71213cabcef59d95fddcbe9dcd1db7378b155b0bd2ccc24bb5db54453278" [label=""];
}

