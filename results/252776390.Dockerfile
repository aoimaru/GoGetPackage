[app/sources/252776390.Dockerfile]
digraph {
  "sha256:e29d70b18e1f1e7fdb8b311d50803d96b2848a15567088a25c906f451ed73c63" [label="docker-image://docker.io/boombatower/opensuse@sha256:521bc103d33f0eea2ec3e9cb341953d467134bd0f438dacde18007aa1039f1b3" shape="ellipse"];
  "sha256:75bc1e037fdbc6af5e68b07f22ccce0519dce2b03039737bf201c8966d7370d9" [label="/bin/sh -c zypper refresh && zypper -n in \\--no-recommends tar xz" shape="box"];
  "sha256:f2c23d4d3599f72b15511c392ed1c5b0ad72b7bd1388a899fe82f6a6ca145a06" [label="local://context" shape="ellipse"];
  "sha256:e871630634ac9501e749aaff807d076186b6b7b49747b4da82daef2f676859d8" [label="copy{src=/backup.sh, dest=/root/bin/}" shape="note"];
  "sha256:d3c48cd5c9f5a0833f00e7202ab43919cbdba64ac7e95b3ed9261347e123b9b5" [label="sha256:d3c48cd5c9f5a0833f00e7202ab43919cbdba64ac7e95b3ed9261347e123b9b5" shape="plaintext"];
  "sha256:e29d70b18e1f1e7fdb8b311d50803d96b2848a15567088a25c906f451ed73c63" -> "sha256:75bc1e037fdbc6af5e68b07f22ccce0519dce2b03039737bf201c8966d7370d9" [label=""];
  "sha256:75bc1e037fdbc6af5e68b07f22ccce0519dce2b03039737bf201c8966d7370d9" -> "sha256:e871630634ac9501e749aaff807d076186b6b7b49747b4da82daef2f676859d8" [label=""];
  "sha256:f2c23d4d3599f72b15511c392ed1c5b0ad72b7bd1388a899fe82f6a6ca145a06" -> "sha256:e871630634ac9501e749aaff807d076186b6b7b49747b4da82daef2f676859d8" [label=""];
  "sha256:e871630634ac9501e749aaff807d076186b6b7b49747b4da82daef2f676859d8" -> "sha256:d3c48cd5c9f5a0833f00e7202ab43919cbdba64ac7e95b3ed9261347e123b9b5" [label=""];
}

