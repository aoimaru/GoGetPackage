[app/sources/445174620.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:d2a84a75ee316a878e477a98f959359b88b8ae490c3a6038223f7051cb1a46ca" [label="local://context" shape="ellipse"];
  "sha256:01be45a5a90b0a00bce99e9294ca64d3b774385226c91c05deefedbc29048968" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:7f1388bbe572a433e95df9ece5081f708c41414d2a28511a5a31ced3bf16ec70" [label="/bin/sh -c ./install-prerequisites.sh" shape="box"];
  "sha256:c01c258be32bfa8cd21ebcd6ab03f5983d11e53cf362a728454ca2c6c6a6deed" [label="sha256:c01c258be32bfa8cd21ebcd6ab03f5983d11e53cf362a728454ca2c6c6a6deed" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:01be45a5a90b0a00bce99e9294ca64d3b774385226c91c05deefedbc29048968" [label=""];
  "sha256:d2a84a75ee316a878e477a98f959359b88b8ae490c3a6038223f7051cb1a46ca" -> "sha256:01be45a5a90b0a00bce99e9294ca64d3b774385226c91c05deefedbc29048968" [label=""];
  "sha256:01be45a5a90b0a00bce99e9294ca64d3b774385226c91c05deefedbc29048968" -> "sha256:7f1388bbe572a433e95df9ece5081f708c41414d2a28511a5a31ced3bf16ec70" [label=""];
  "sha256:7f1388bbe572a433e95df9ece5081f708c41414d2a28511a5a31ced3bf16ec70" -> "sha256:c01c258be32bfa8cd21ebcd6ab03f5983d11e53cf362a728454ca2c6c6a6deed" [label=""];
}

