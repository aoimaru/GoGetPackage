[app/sources/322547189.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:68cce963cc9427cbc0d0166208708c664ca4060a88e041d0cb9ec17d93e0c6a2" [label="/bin/sh -c groupadd -g $GID nifi || groupmod -n nifi `getent group $GID | cut -d: -f1`" shape="box"];
  "sha256:abfab3bf5c18db0248a3660c45c3c6f05f0d83f254b204347279b9823babc097" [label="/bin/sh -c useradd --shell /bin/bash -u $UID -g $GID -m nifi" shape="box"];
  "sha256:3c643e03c17c0707925c126b96b6d99b79e0ec5d1474ebb4926f97600986c055" [label="/bin/sh -c mkdir -p $NIFI_HOME" shape="box"];
  "sha256:c45d2e851c04adeb81563465fae577474c4127ef3689d823b0a461a6b1b26e6d" [label="local://context" shape="ellipse"];
  "sha256:6e87cf6f7c017df22d2ffdff94e3dd58f2f2b0a6be5c847d6a7047f617243261" [label="copy{src=/, dest=/opt/nifi}" shape="note"];
  "sha256:ba1d95ae78c2bfa1ced2294f1651c78bf117b9ffcb38366cf60a213cc97c0cc7" [label="/bin/sh -c chown -R nifi:nifi $NIFI_HOME" shape="box"];
  "sha256:7941c8f313711b92d2311892a153c8a6c479ded69d6350825dc4de8bd0156c04" [label="sha256:7941c8f313711b92d2311892a153c8a6c479ded69d6350825dc4de8bd0156c04" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:68cce963cc9427cbc0d0166208708c664ca4060a88e041d0cb9ec17d93e0c6a2" [label=""];
  "sha256:68cce963cc9427cbc0d0166208708c664ca4060a88e041d0cb9ec17d93e0c6a2" -> "sha256:abfab3bf5c18db0248a3660c45c3c6f05f0d83f254b204347279b9823babc097" [label=""];
  "sha256:abfab3bf5c18db0248a3660c45c3c6f05f0d83f254b204347279b9823babc097" -> "sha256:3c643e03c17c0707925c126b96b6d99b79e0ec5d1474ebb4926f97600986c055" [label=""];
  "sha256:3c643e03c17c0707925c126b96b6d99b79e0ec5d1474ebb4926f97600986c055" -> "sha256:6e87cf6f7c017df22d2ffdff94e3dd58f2f2b0a6be5c847d6a7047f617243261" [label=""];
  "sha256:c45d2e851c04adeb81563465fae577474c4127ef3689d823b0a461a6b1b26e6d" -> "sha256:6e87cf6f7c017df22d2ffdff94e3dd58f2f2b0a6be5c847d6a7047f617243261" [label=""];
  "sha256:6e87cf6f7c017df22d2ffdff94e3dd58f2f2b0a6be5c847d6a7047f617243261" -> "sha256:ba1d95ae78c2bfa1ced2294f1651c78bf117b9ffcb38366cf60a213cc97c0cc7" [label=""];
  "sha256:ba1d95ae78c2bfa1ced2294f1651c78bf117b9ffcb38366cf60a213cc97c0cc7" -> "sha256:7941c8f313711b92d2311892a153c8a6c479ded69d6350825dc4de8bd0156c04" [label=""];
}

