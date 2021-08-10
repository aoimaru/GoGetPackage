[app/sources/178846615.Dockerfile]
digraph {
  "sha256:65fb2585432088564f9c49d29ec8b6946867b4fad5a14f209f077aaf13853f3a" [label="docker-image://docker.io/library/python:latest" shape="ellipse"];
  "sha256:1ecdc1d9c4b158fd0dc214d958522fdc43c2a5b58fced2a2a4283da49191def2" [label="/bin/sh -c mkdir /backend" shape="box"];
  "sha256:73b2c4e4bbb7f9a8a415c48b9be7e9540fa1a533c741238b710ca896ca37ac77" [label="local://context" shape="ellipse"];
  "sha256:e30183b444e023490f4c18d7ba668dc30848c39fe99c4d9dc8e4d697827b8be4" [label="copy{src=/, dest=/backend}" shape="note"];
  "sha256:fdd060aaea2cd542a6f7df2e705cf99f7ed310234894f9c03fe5bd88f5deb8be" [label="/bin/sh -c pip install -Ur /backend/requirements/production.txt" shape="box"];
  "sha256:517cad75f202bbcb5f09977981d9ee9e39ba1c7344c3691538f63b9446398714" [label="sha256:517cad75f202bbcb5f09977981d9ee9e39ba1c7344c3691538f63b9446398714" shape="plaintext"];
  "sha256:65fb2585432088564f9c49d29ec8b6946867b4fad5a14f209f077aaf13853f3a" -> "sha256:1ecdc1d9c4b158fd0dc214d958522fdc43c2a5b58fced2a2a4283da49191def2" [label=""];
  "sha256:1ecdc1d9c4b158fd0dc214d958522fdc43c2a5b58fced2a2a4283da49191def2" -> "sha256:e30183b444e023490f4c18d7ba668dc30848c39fe99c4d9dc8e4d697827b8be4" [label=""];
  "sha256:73b2c4e4bbb7f9a8a415c48b9be7e9540fa1a533c741238b710ca896ca37ac77" -> "sha256:e30183b444e023490f4c18d7ba668dc30848c39fe99c4d9dc8e4d697827b8be4" [label=""];
  "sha256:e30183b444e023490f4c18d7ba668dc30848c39fe99c4d9dc8e4d697827b8be4" -> "sha256:fdd060aaea2cd542a6f7df2e705cf99f7ed310234894f9c03fe5bd88f5deb8be" [label=""];
  "sha256:fdd060aaea2cd542a6f7df2e705cf99f7ed310234894f9c03fe5bd88f5deb8be" -> "sha256:517cad75f202bbcb5f09977981d9ee9e39ba1c7344c3691538f63b9446398714" [label=""];
}

