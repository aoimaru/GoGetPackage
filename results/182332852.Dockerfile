[app/sources/182332852.Dockerfile]
digraph {
  "sha256:b97188dc7873f4c6933405715e5d1ebec43aa1988a6ef34ac4b88c7ae6237e0b" [label="docker-image://docker.io/radial/busyboxplus:git" shape="ellipse"];
  "sha256:196e0fbd8e1bc610cf98a9bde1f8686069baf619c5f3c47a5dcda5d9385126ed" [label="local://context" shape="ellipse"];
  "sha256:aab540fe84c7d3093675c3824abb3e26882cf79e30e51967f7b119411440992f" [label="copy{src=/setup-homedir.sh, dest=/tmp/}" shape="note"];
  "sha256:f590462cc75333cf24eb23e755c5b800eece67a707e6acade8e878e65641b4c1" [label="/bin/sh -c /tmp/setup-homedir.sh" shape="box"];
  "sha256:0028fd94e58a0bd1e0051b918ff938003902dbb306079dd18f883b143051ff35" [label="sha256:0028fd94e58a0bd1e0051b918ff938003902dbb306079dd18f883b143051ff35" shape="plaintext"];
  "sha256:b97188dc7873f4c6933405715e5d1ebec43aa1988a6ef34ac4b88c7ae6237e0b" -> "sha256:aab540fe84c7d3093675c3824abb3e26882cf79e30e51967f7b119411440992f" [label=""];
  "sha256:196e0fbd8e1bc610cf98a9bde1f8686069baf619c5f3c47a5dcda5d9385126ed" -> "sha256:aab540fe84c7d3093675c3824abb3e26882cf79e30e51967f7b119411440992f" [label=""];
  "sha256:aab540fe84c7d3093675c3824abb3e26882cf79e30e51967f7b119411440992f" -> "sha256:f590462cc75333cf24eb23e755c5b800eece67a707e6acade8e878e65641b4c1" [label=""];
  "sha256:f590462cc75333cf24eb23e755c5b800eece67a707e6acade8e878e65641b4c1" -> "sha256:0028fd94e58a0bd1e0051b918ff938003902dbb306079dd18f883b143051ff35" [label=""];
}

